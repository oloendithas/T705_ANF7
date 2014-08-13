.class public Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "Xt994Wrapper.java"

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

.field public static final SMT_DB_TYPE:B = 0x5t

.field private static final SMT_FILE_NAME:Ljava/lang/String; = "xT9SMTData.dat"

.field private static SMT_SIZE:I = 0x0

.field public static final UDB_DB_TYPE:B = 0x0t

.field private static final UDB_FILE_NAME:Ljava/lang/String; = "xT9UdbData.dat"

.field private static final UDB_SIZE:I = 0x5000

.field private static final UDB_WORD_SIZE:I = 0x40

.field private static mASDBBuffer:[B

.field private static mCDBBuffer:[B

.field private static mDLMBuffer:[B

.field private static mDLMWordBuf:[C

.field private static mKUDBBuffer:[B

.field private static mSMTBuffer:[B

.field private static mUDBBuffer:[B

.field private static mWordBuf:[S

.field private static mWordLengthBuf:[S


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

.field private final KEYMAP_QWERTY_VI_9:[S

.field private KNOX_MODE:[C

.field private final STROKE_CHARSET:[C

.field private final XT9_9:Ljava/lang/String;

.field private final XT9_9_4:Ljava/lang/String;

.field private final mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

.field private mBestCandidate:Ljava/lang/CharSequence;

.field private mBilingualInputLanguage:I

.field private mBilingualInputLanguageId:S

.field private final mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

.field private final mCount:[S

.field private mCurrentKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

.field private mExclusionPattern:Ljava/util/regex/Pattern;

.field private mFirstKdbNum:I

.field private mFirstKdbPage:I

.field private mFlagForAutoReplacement:Z

.field private mGap:I

.field private final mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

.field private final mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

.field private mImeInputLanguage:I

.field private mInitialized:Z

.field private mInputLanguageId:S

.field private mIsActiveWordStatusChangable:Z

.field private mIsAcuteAccent:Z

.field private mIsDisableAutoCorrection:Z

.field private mIsKoreanCoreInit:Z

.field private mIsReConstruction:Z

.field private mIsRecapture:Z

.field private mIsReselection:Z

.field private mIsReselectionWord:Ljava/lang/StringBuilder;

.field private mIsTraceInput:Z

.field private mIsVZW:Z

.field private mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field private mShiftState:B

.field private final mShortcutBuf:[S

.field private final mShortcutLengthBuf:[S

.field private final mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

.field private final mSubstitutionBuf:[S

.field private final mSubstitutionLengthBuf:[S

.field private mXt9Version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    sput v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_MULTITAP:I

    .line 51
    sput v2, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_AMBIG:I

    .line 197
    sput v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    .line 198
    sput v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    .line 207
    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    .line 208
    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBBuffer:[B

    .line 209
    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    .line 210
    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mKUDBBuffer:[B

    .line 211
    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 212
    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    .line 229
    new-array v0, v3, [S

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordBuf:[S

    .line 230
    new-array v0, v2, [S

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordLengthBuf:[S

    .line 231
    new-array v0, v3, [C

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/16 v4, 0x1b

    const/4 v3, 0x1

    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD:[S

    .line 56
    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_TH:[S

    .line 59
    new-array v0, v5, [S

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    .line 62
    new-array v0, v2, [S

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY:[S

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HY:[S

    .line 74
    new-array v0, v2, [S

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_SQ:[S

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_BG:[S

    .line 82
    new-array v0, v2, [S

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_DA:[S

    .line 87
    new-array v0, v2, [S

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_IS:[S

    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_RU:[S

    .line 96
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AR:[S

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_FA:[S

    .line 102
    const/16 v0, 0xf

    new-array v0, v0, [S

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_UR:[S

    .line 106
    new-array v0, v3, [S

    aput-short v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HE:[S

    .line 109
    const/16 v0, 0x33

    new-array v0, v0, [S

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_KO:[S

    .line 115
    new-array v0, v2, [S

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_ET:[S

    .line 120
    new-array v0, v4, [S

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_VI:[S

    .line 126
    new-array v0, v4, [S

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_VI_9:[S

    .line 131
    new-array v0, v4, [S

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TH:[S

    .line 136
    new-array v0, v2, [S

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_LT:[S

    .line 141
    new-array v0, v2, [S

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AZ:[S

    .line 147
    new-array v0, v2, [S

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_EL:[S

    .line 152
    new-array v0, v2, [S

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR:[S

    .line 157
    new-array v0, v2, [S

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR_F:[S

    .line 162
    new-array v0, v5, [C

    fill-array-data v0, :array_17

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->STROKE_CHARSET:[C

    .line 165
    const/16 v0, 0x27

    iput-char v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->ET9CPSYLLABLEDELIMITER:C

    .line 166
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    .line 167
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    .line 168
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    .line 169
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    .line 171
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    .line 173
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInitialized:Z

    .line 174
    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    .line 175
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    .line 176
    iput-byte v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    .line 177
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    .line 178
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsActiveWordStatusChangable:Z

    .line 180
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsKoreanCoreInit:Z

    .line 225
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    .line 232
    const/16 v0, 0x40

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutBuf:[S

    .line 233
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutLengthBuf:[S

    .line 234
    const/16 v0, 0x40

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionBuf:[S

    .line 235
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionLengthBuf:[S

    .line 236
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EMPTY_MULTITAP_SEQ:[S

    .line 237
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsDisableAutoCorrection:Z

    .line 246
    const-string v0, "XT9 V09"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->XT9_9:Ljava/lang/String;

    .line 248
    const-string v0, "XT9 V09.06"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->XT9_9_4:Ljava/lang/String;

    .line 249
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    .line 250
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguage:I

    .line 251
    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguageId:S

    .line 253
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mGap:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    .line 256
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    .line 257
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    .line 258
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    .line 260
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    .line 262
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    .line 263
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    .line 265
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 267
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KNOX_MODE:[C

    .line 269
    const-string v0, "\\d{4,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mExclusionPattern:Ljava/util/regex/Pattern;

    .line 270
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsVZW:Z

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    .line 273
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    .line 276
    return-void

    .line 53
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

    .line 56
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

    .line 59
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

    .line 62
    :array_3
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
    .end array-data

    .line 67
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

    .line 74
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

    .line 79
    :array_6
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
    .end array-data

    .line 82
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

    .line 87
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

    .line 93
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

    .line 96
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

    .line 99
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

    .line 102
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

    .line 109
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

    .line 115
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

    .line 120
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

    .line 126
    nop

    :array_10
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
        0x13s
    .end array-data

    .line 131
    nop

    :array_11
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

    .line 136
    nop

    :array_12
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

    .line 141
    :array_13
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

    .line 147
    :array_14
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

    .line 152
    :array_15
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

    .line 157
    :array_16
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

    .line 162
    :array_17
    .array-data 2
        0x4e00s
        0x4e28s
        0x4e3fs
        0x4e36s
        0x4e5bs
        0x3fs
    .end array-data

    .line 267
    :array_18
    .array-data 2
        0x6bs
        0x6es
        0x6fs
        0x78s
    .end array-data
.end method

.method private changeKDBNum(I)V
    .locals 16
    .param p1, "inputType"    # I

    .prologue
    .line 1106
    const/4 v12, 0x0

    .line 1108
    .local v12, "wStatus":S
    const/4 v13, 0x1

    new-array v5, v13, [S

    .line 1109
    .local v5, "pwFirstKdbNum":[S
    const/4 v13, 0x1

    new-array v8, v13, [S

    .line 1110
    .local v8, "pwSecondKdbNum":[S
    invoke-static {v5, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v12

    .line 1111
    if-eqz v12, :cond_0

    .line 1112
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KDB_GetKdbNum : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    const/4 v13, 0x1

    new-array v7, v13, [S

    .line 1116
    .local v7, "pwFirstPageNum":[S
    const/4 v13, 0x1

    new-array v10, v13, [S

    .line 1117
    .local v10, "pwSecondPageNum":[S
    invoke-static {v7, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v12

    .line 1118
    if-eqz v12, :cond_1

    .line 1119
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KDB_GetPageNum : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_1
    const/4 v13, 0x1

    new-array v6, v13, [S

    .line 1123
    .local v6, "pwFirstLdbNum":[S
    const/4 v13, 0x1

    new-array v9, v13, [S

    .line 1124
    .local v9, "pwSecondLdbNum":[S
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-short v14, v6, v13

    .line 1125
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-short v14, v9, v13

    .line 1126
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe1

    if-ne v13, v14, :cond_8

    .line 1127
    const/4 v13, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v14

    aput-short v14, v6, v13

    .line 1134
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_3

    .line 1135
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-short v14, v6, v14

    const v15, 0xff00

    and-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-short v15, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v13

    .line 1137
    :cond_3
    const/4 v2, 0x0

    .line 1138
    .local v2, "firstPageNum":S
    const/4 v1, 0x0

    .line 1139
    .local v1, "firstKdbNum":S
    if-eqz p1, :cond_4

    const/4 v13, 0x7

    move/from16 v0, p1

    if-eq v0, v13, :cond_4

    const/16 v13, 0x8

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    .line 1141
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 1142
    .local v11, "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "locale":Ljava/lang/String;
    const-string v13, "nl"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "BE"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1145
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x13

    if-ne v13, v14, :cond_5

    .line 1146
    const/4 v2, 0x1

    .line 1169
    .end local v4    # "locale":Ljava/lang/String;
    .end local v11    # "sLocal":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBNum()I

    move-result v13

    int-to-short v1, v13

    .line 1170
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBPageNum()I

    move-result v13

    int-to-short v2, v13

    .line 1172
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v1, v2, v13, v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v12

    .line 1178
    if-eqz v12, :cond_6

    .line 1179
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v1, v2, v13, v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v12

    .line 1183
    :cond_6
    move-object/from16 v0, p0

    iput v1, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    .line 1184
    if-eqz v12, :cond_7

    .line 1185
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KDB_SetKdbNum : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_7
    return-void

    .line 1129
    .end local v1    # "firstKdbNum":S
    .end local v2    # "firstPageNum":S
    :cond_8
    invoke-static {v6, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v12

    .line 1130
    if-eqz v12, :cond_2

    .line 1131
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9AWLdbGetLanguage : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1155
    .restart local v1    # "firstKdbNum":S
    .restart local v2    # "firstPageNum":S
    .restart local v4    # "locale":Ljava/lang/String;
    .restart local v11    # "sLocal":Ljava/lang/String;
    :cond_9
    const-string v13, "CH"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1156
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x10

    if-ne v13, v14, :cond_5

    .line 1157
    const/4 v2, 0x1

    goto :goto_1

    .line 1161
    :cond_a
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x60

    if-ne v13, v14, :cond_5

    .line 1162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 1163
    .local v3, "isUpperCase":Z
    if-eqz v3, :cond_5

    .line 1164
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkExclusionPattern(Ljava/lang/String;)Z
    .locals 2
    .param p1, "check"    # Ljava/lang/String;

    .prologue
    .line 4240
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mExclusionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4241
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4242
    const/4 v1, 0x1

    .line 4245
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private explicitSymbol(I)S
    .locals 6
    .param p1, "wKeyIndex"    # I

    .prologue
    .line 1291
    const/4 v1, 0x0

    .line 1292
    .local v1, "wStatus":S
    const/4 v0, 0x0

    .line 1293
    .local v0, "shiftState":B
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1294
    const/4 v0, 0x1

    .line 1298
    :cond_0
    :goto_0
    int-to-short v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v1

    .line 1299
    if-eqz v1, :cond_1

    .line 1300
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

    .line 1302
    :cond_1
    return v1

    .line 1295
    :cond_2
    iget-byte v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    if-eqz v2, :cond_0

    .line 1296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAWInputWords(I)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "wordIndex"    # I

    .prologue
    .line 1828
    iget v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 1829
    .local v6, "totalWordsCount":I
    if-lez v6, :cond_15

    .line 1831
    if-ge p1, v6, :cond_1

    move v1, p1

    .line 1832
    .local v1, "index":I
    :goto_0
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    int-to-byte v10, v1

    invoke-static {v9, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v8

    .line 1834
    .local v8, "wStatus":S
    const/16 v9, 0x22

    if-ne v8, v9, :cond_0

    .line 1835
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    .line 1836
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    int-to-byte v10, v1

    invoke-static {v9, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v8

    .line 1838
    :cond_0
    if-eqz v8, :cond_2

    .line 1839
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9AWSelLstGetWord : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const-string v9, ""

    .line 1937
    .end local v1    # "index":I
    .end local v8    # "wStatus":S
    :goto_1
    return-object v9

    .line 1831
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1842
    .restart local v1    # "index":I
    .restart local v8    # "wStatus":S
    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    const/16 v10, 0x40

    if-ge v9, v10, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    .line 1844
    .local v5, "size":I
    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1845
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    .line 1846
    .local v3, "isPredictionOn":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-eqz v9, :cond_4

    if-eqz v3, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v0, v9, :cond_7

    .line 1850
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1849
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1842
    .end local v0    # "i":I
    .end local v3    # "isPredictionOn":Z
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "size":I
    :cond_3
    const/16 v5, 0x40

    goto :goto_2

    .line 1853
    .restart local v3    # "isPredictionOn":Z
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v5    # "size":I
    :cond_4
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    .line 1855
    .local v7, "turkishKeyboardType":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v5, :cond_7

    .line 1856
    iget-byte v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    if-nez v3, :cond_6

    .line 1857
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_5

    if-eqz v7, :cond_5

    .line 1859
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->toUpperCaseOfTurkish(I)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1855
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1861
    :cond_5
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1864
    :cond_6
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1869
    .end local v7    # "turkishKeyboardType":I
    :cond_7
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-byte v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->bWordSource:B

    const/16 v10, 0xa

    if-ne v9, v10, :cond_8

    .line 1870
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->addWordIntoTypoList(Ljava/lang/String;)V

    .line 1873
    :cond_8
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 1874
    .local v2, "inputMethod":I
    if-eqz v2, :cond_9

    const/16 v9, 0x8

    if-ne v2, v9, :cond_a

    .line 1876
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    if-eqz v9, :cond_c

    .line 1877
    if-nez p1, :cond_a

    .line 1878
    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 1879
    const/4 v9, -0x1

    iput v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 1935
    :cond_a
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1882
    :cond_b
    const-string v9, ""

    goto/16 :goto_1

    .line 1888
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-nez v9, :cond_e

    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    if-nez v9, :cond_e

    .line 1890
    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    if-eqz v9, :cond_a

    .line 1891
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1892
    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 1893
    const/4 v9, -0x1

    iput v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 1895
    :cond_d
    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    .line 1896
    const-string v9, ""

    goto/16 :goto_1

    .line 1902
    :cond_e
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_11

    .line 1903
    :cond_f
    if-nez p1, :cond_a

    .line 1904
    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 1905
    const/4 v9, -0x1

    iput v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 1907
    :cond_10
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->hasInputSequence()Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    .line 1908
    const-string v9, ""

    goto/16 :goto_1

    .line 1914
    :cond_11
    const/4 v9, 0x1

    if-ne p1, v9, :cond_12

    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    if-eqz v9, :cond_12

    .line 1915
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    .line 1918
    :cond_12
    if-nez p1, :cond_a

    .line 1919
    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 1920
    const/4 v9, -0x1

    iput v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto :goto_6

    .line 1921
    :cond_13
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->hasInputSequence()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1922
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-byte v9, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->bWordSource:B

    const/16 v10, 0xa

    if-ne v9, v10, :cond_14

    .line 1923
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setXt9AutoReplacementCondition(Z)V

    .line 1924
    const/4 v9, 0x1

    iput v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 1925
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    goto/16 :goto_6

    .line 1927
    :cond_14
    const-string v9, ""

    goto/16 :goto_1

    .line 1937
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "inputMethod":I
    .end local v3    # "isPredictionOn":Z
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "size":I
    .end local v8    # "wStatus":S
    :cond_15
    const-string v9, ""

    goto/16 :goto_1
.end method

.method private getCPInputWords(I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "wordIndex"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x20

    .line 2139
    iget v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 2140
    .local v5, "totalWordsCount":I
    if-lez v5, :cond_4

    .line 2141
    if-ge p1, v5, :cond_0

    move v2, p1

    .line 2142
    .local v2, "index":I
    :goto_0
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 2143
    .local v0, "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    int-to-short v8, v2

    invoke-static {v8, v0, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v6

    .line 2144
    .local v6, "wStatus":S
    if-eqz v6, :cond_1

    .line 2157
    .end local v0    # "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    .end local v2    # "index":I
    .end local v6    # "wStatus":S
    :goto_1
    return-object v7

    .line 2141
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2147
    .restart local v0    # "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    .restart local v2    # "index":I
    .restart local v6    # "wStatus":S
    :cond_1
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v7, v4, :cond_2

    iget-byte v4, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    .line 2149
    .local v4, "size":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2150
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-eqz v7, :cond_3

    .line 2151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v7, :cond_3

    .line 2152
    iget-object v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2155
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2157
    .end local v0    # "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    .end local v2    # "index":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "size":I
    .end local v6    # "wStatus":S
    :cond_4
    const-string v7, ""

    goto :goto_1
.end method

.method private getCurrentKDBNum()I
    .locals 5

    .prologue
    const/16 v4, 0xe1

    .line 4152
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0x700

    .line 4153
    .local v0, "firstKdbNum":I
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4154
    :cond_0
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v2, v4, :cond_1

    .line 4155
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0xa00

    .line 4183
    :goto_0
    return v0

    .line 4157
    :cond_1
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0x600

    goto :goto_0

    .line 4160
    :cond_2
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v2, v4, :cond_3

    .line 4161
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0xd00

    goto :goto_0

    .line 4162
    :cond_3
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_4

    .line 4163
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 4164
    .local v1, "turkishKeyboardType":I
    packed-switch v1, :pswitch_data_0

    .line 4172
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0x700

    goto :goto_0

    .line 4166
    :pswitch_0
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0xf00

    .line 4167
    goto :goto_0

    .line 4169
    :pswitch_1
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0x1000

    .line 4170
    goto :goto_0

    .line 4175
    .end local v1    # "turkishKeyboardType":I
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    const v3, 0x66724341

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    const/high16 v3, 0x66720000

    if-ne v2, v3, :cond_6

    const-string v2, "CA"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4178
    :cond_5
    const/16 v0, 0xc0c

    goto :goto_0

    .line 4180
    :cond_6
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v2, 0x700

    goto :goto_0

    .line 4164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentKDBPageNum()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4187
    const/4 v0, 0x0

    .line 4188
    .local v0, "pageNum":I
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 4189
    or-int/lit16 v0, v0, 0x2000

    .line 4192
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 4193
    or-int/lit16 v0, v0, 0x3000

    .line 4196
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4197
    or-int/lit16 v0, v0, 0x800

    .line 4200
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_3

    .line 4201
    or-int/lit16 v0, v0, 0x100

    .line 4204
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 4205
    or-int/lit16 v0, v0, 0x200

    .line 4210
    :cond_4
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4211
    :cond_5
    or-int/lit8 v0, v0, 0x4

    .line 4218
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    if-eqz v1, :cond_7

    .line 4219
    or-int/lit8 v0, v0, 0x1

    .line 4222
    :cond_7
    return v0

    .line 4206
    :cond_8
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 4207
    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    .line 4212
    :cond_9
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    .line 4213
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 4214
    :cond_a
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 4215
    or-int/lit8 v0, v0, 0xc

    goto :goto_1
.end method

.method private getInputWords()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1811
    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getInputWords(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "wordIndex"    # I

    .prologue
    .line 1814
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    .line 1815
    .local v0, "isPredictionOn":Z
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1816
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    if-eqz v1, :cond_1

    .line 1817
    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getKInputWordsPrediction(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1824
    :goto_0
    return-object v1

    .line 1819
    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getKInputWordsMultiTap(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1821
    :cond_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_3

    .line 1822
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCPInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1824
    :cond_3
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getAWInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private getKInputWordsMultiTap(I)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "wordIndex"    # I

    .prologue
    const/16 v6, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2098
    const/4 v5, 0x1

    .line 2099
    .local v5, "wStatus":S
    new-array v2, v6, [S

    .line 2100
    .local v2, "multiTapSequence":[S
    new-array v4, v10, [S

    .line 2101
    .local v4, "totalSymbols":[S
    new-array v0, v10, [B

    .line 2102
    .local v0, "currentSymbol":[B
    invoke-static {v2, v6, v4, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    .line 2105
    aget-short v6, v4, v9

    if-ne v6, v10, :cond_0

    .line 2106
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->invokeTimeOut()V

    .line 2107
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EMPTY_MULTITAP_SEQ:[S

    .line 2108
    aput-short v9, v4, v9

    .line 2110
    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 2115
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-static {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;)S

    move-result v5

    .line 2117
    if-eqz v5, :cond_1

    .line 2118
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

    .line 2128
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-le v6, v10, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v6, v6

    if-lez v6, :cond_2

    .line 2130
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v9, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v5

    .line 2132
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v6, 0x40

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2133
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v1, v6, :cond_3

    .line 2134
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v6, v6, v1

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2136
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getKInputWordsPrediction(I)Ljava/lang/CharSequence;
    .locals 16
    .param p1, "wordIndex"    # I

    .prologue
    .line 1987
    move-object/from16 v0, p0

    iget v11, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 1988
    .local v11, "totalWordsCount":I
    if-lez v11, :cond_7

    .line 1989
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKRUDB()S

    .line 1990
    const/4 v12, 0x1

    .line 1991
    .local v12, "wStatus":S
    const/4 v13, 0x1

    new-array v1, v13, [S

    .line 1992
    .local v1, "HangulLen":[S
    const/4 v13, 0x1

    new-array v7, v13, [B

    .line 1993
    .local v7, "pbWordSource":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 1997
    move/from16 v0, p1

    int-to-byte v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v15, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v15, v15

    int-to-short v15, v15

    invoke-static {v13, v14, v15, v1, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S[B)S

    move-result v12

    .line 1999
    const/16 v13, 0x22

    if-ne v12, v13, :cond_1

    .line 2000
    const/4 v13, 0x1

    new-array v3, v13, [B

    .line 2001
    .local v3, "bTotalWords":[B
    const/4 v13, 0x1

    new-array v2, v13, [B

    .line 2002
    .local v2, "bDefaultListIndex":[B
    const/4 v13, 0x1

    new-array v8, v13, [S

    .line 2003
    .local v8, "pwGestureValue":[S
    invoke-static {v3, v2, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v12

    .line 2004
    if-eqz v12, :cond_0

    .line 2005
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KBuildSelectionList : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_0
    const/4 v13, 0x0

    aget-byte v13, v3, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 2008
    const/4 v13, 0x0

    aget-byte v13, v2, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 2012
    move/from16 v0, p1

    int-to-byte v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v15, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v15, v15

    int-to-short v15, v15

    invoke-static {v13, v14, v15, v1, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S[B)S

    move-result v12

    .line 2014
    if-eqz v12, :cond_1

    .line 2015
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KGetHangul : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    .end local v2    # "bDefaultListIndex":[B
    .end local v3    # "bTotalWords":[B
    .end local v8    # "pwGestureValue":[S
    :cond_1
    if-eqz v12, :cond_2

    .line 2019
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KGetHangul : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :cond_2
    const/4 v13, 0x0

    aget-short v13, v1, v13

    const/16 v14, 0x40

    if-ge v13, v14, :cond_5

    const/4 v13, 0x0

    aget-short v10, v1, v13

    .line 2023
    .local v10, "size":I
    :goto_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2024
    .local v9, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v6

    .line 2025
    .local v6, "isPredictionOn":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    .line 2026
    .local v5, "inputMethod":I
    if-eqz v5, :cond_3

    const/4 v13, 0x7

    if-eq v5, v13, :cond_3

    const/16 v13, 0x8

    if-ne v5, v13, :cond_4

    :cond_3
    if-nez v6, :cond_4

    const/4 v13, 0x1

    if-le v10, v13, :cond_4

    .line 2029
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    .line 2030
    if-eqz v12, :cond_4

    .line 2031
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9ClearAllSymbs : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_6

    .line 2035
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v13, v13, v4

    int-to-char v13, v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2034
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2021
    .end local v4    # "i":I
    .end local v5    # "inputMethod":I
    .end local v6    # "isPredictionOn":Z
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "size":I
    :cond_5
    const/16 v10, 0x40

    goto :goto_0

    .line 2093
    .restart local v4    # "i":I
    .restart local v5    # "inputMethod":I
    .restart local v6    # "isPredictionOn":Z
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "size":I
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2095
    .end local v1    # "HangulLen":[S
    .end local v4    # "i":I
    .end local v5    # "inputMethod":I
    .end local v6    # "isPredictionOn":Z
    .end local v7    # "pbWordSource":[B
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "size":I
    .end local v12    # "wStatus":S
    :goto_2
    return-object v13

    :cond_7
    const-string v13, ""

    goto :goto_2
.end method

.method private getLastTermPunctIndex(Ljava/lang/CharSequence;)I
    .locals 6
    .param p1, "contextBuffer"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, -0x1

    .line 4005
    const/4 v2, 0x0

    .line 4006
    .local v2, "wStatus":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v0, v3

    .line 4017
    :cond_1
    :goto_0
    return v0

    .line 4009
    :cond_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    .line 4010
    .local v1, "psBuffer":[S
    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 4011
    aget-short v4, v1, v0

    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9IsSentenceTermPunct(SS)Z

    move-result v2

    .line 4013
    if-nez v2, :cond_1

    aget-short v4, v1, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 4010
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 4017
    goto :goto_0
.end method

.method private getStartWordIndex(Ljava/lang/CharSequence;)I
    .locals 6
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, -0x1

    .line 4039
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v0, v3

    .line 4056
    :cond_1
    :goto_0
    return v0

    .line 4043
    :cond_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    .line 4044
    .local v1, "psBuffer":[S
    const/4 v2, 0x0

    .line 4045
    .local v2, "wStatus":Z
    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 4046
    aget-short v4, v1, v0

    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9IsSentenceTermPunct(SS)Z

    move-result v2

    .line 4048
    aget-short v4, v1, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    move v0, v3

    .line 4049
    goto :goto_0

    .line 4052
    :cond_3
    if-nez v2, :cond_1

    aget-short v4, v1, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 4045
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 4056
    goto :goto_0
.end method

.method private getWordOnCursor()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/16 v10, 0x40

    const/4 v9, 0x0

    .line 1940
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1944
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    .line 1945
    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1946
    .local v4, "longText":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1947
    const-string v4, ""

    .line 1952
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 1953
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "lastIndexOfSpecialChar":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1954
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1956
    :cond_1
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1964
    .end local v2    # "lastIndexOfSpecialChar":I
    .local v6, "shortText":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_7

    .line 1965
    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1966
    .local v3, "longAfterText":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1967
    const-string v3, ""

    .line 1972
    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 1973
    const/4 v0, 0x0

    .local v0, "firstIndexOfSpecialChar":I
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 1974
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1978
    :cond_3
    invoke-virtual {v3, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1982
    .end local v0    # "firstIndexOfSpecialChar":I
    .local v5, "shortAfterText":Ljava/lang/String;
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1983
    .local v7, "text":Ljava/lang/String;
    return-object v7

    .line 1950
    .end local v3    # "longAfterText":Ljava/lang/String;
    .end local v4    # "longText":Ljava/lang/String;
    .end local v5    # "shortAfterText":Ljava/lang/String;
    .end local v6    # "shortText":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    const-string v4, ""

    .restart local v4    # "longText":Ljava/lang/String;
    goto :goto_0

    .line 1953
    .restart local v2    # "lastIndexOfSpecialChar":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1958
    .end local v2    # "lastIndexOfSpecialChar":I
    :cond_6
    const-string v6, ""

    .restart local v6    # "shortText":Ljava/lang/String;
    goto :goto_2

    .line 1970
    :cond_7
    const-string v3, ""

    .restart local v3    # "longAfterText":Ljava/lang/String;
    goto :goto_3

    .line 1973
    .restart local v0    # "firstIndexOfSpecialChar":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1980
    .end local v0    # "firstIndexOfSpecialChar":I
    :cond_9
    const-string v5, ""

    .restart local v5    # "shortAfterText":Ljava/lang/String;
    goto :goto_5
.end method

.method private getWordStartIndex(Ljava/lang/CharSequence;)I
    .locals 4
    .param p1, "contextBuffer"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, -0x1

    .line 4021
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    move v0, v2

    .line 4034
    :cond_1
    :goto_0
    return v0

    .line 4024
    :cond_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    .line 4029
    .local v1, "psBuffer":[S
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 4030
    aget-short v3, v1, v0

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkXT9WordWrappingRule(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4029
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 4034
    goto :goto_0
.end method

.method private initASDB()S
    .locals 4

    .prologue
    const/16 v2, 0x2800

    .line 752
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    if-nez v1, :cond_0

    .line 753
    new-array v1, v2, [B

    sput-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    .line 756
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    .line 757
    .local v0, "wStatus":S
    if-eqz v0, :cond_1

    .line 758
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

    .line 760
    :cond_1
    return v0
.end method

.method private initCDB()S
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method private initChineseLanguage()V
    .locals 7

    .prologue
    const/16 v6, 0xe1

    .line 480
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    .line 481
    .local v1, "strokeModeOn":Z
    const/4 v0, 0x0

    .line 482
    .local v0, "eMode":B
    iget-short v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v3, v6, :cond_1

    .line 483
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSysInit()S

    move-result v2

    .line 484
    .local v2, "wStatus":S
    if-eqz v2, :cond_0

    .line 485
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

    .line 487
    :cond_0
    invoke-static {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPLdbValidate(S)S

    move-result v2

    .line 488
    if-eqz v2, :cond_2

    .line 489
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

    .line 490
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    .line 520
    .end local v2    # "wStatus":S
    :cond_1
    :goto_0
    return-void

    .line 493
    .restart local v2    # "wStatus":S
    :cond_2
    invoke-static {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v2

    .line 494
    if-eqz v2, :cond_3

    .line 495
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

    .line 497
    :cond_3
    if-eqz v1, :cond_4

    .line 498
    const/4 v0, 0x2

    .line 499
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPClearComponent()S

    move-result v2

    .line 501
    :cond_4
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetInputMode(B)S

    move-result v2

    .line 502
    if-eqz v2, :cond_7

    .line 503
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

    .line 507
    :goto_1
    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v2

    .line 508
    if-eqz v2, :cond_5

    .line 509
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

    .line 511
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v2

    .line 512
    if-eqz v2, :cond_6

    .line 513
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

    .line 515
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPTraceInit()S

    move-result v2

    .line 516
    if-eqz v2, :cond_1

    .line 517
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

    .line 505
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v2

    goto :goto_1
.end method

.method private initKDB()V
    .locals 15

    .prologue
    const/16 v14, 0xe1

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 845
    const/4 v8, 0x0

    .line 846
    .local v8, "wStatus":S
    const/4 v4, 0x0

    .line 847
    .local v4, "wFirstKdbNum":S
    const/4 v5, 0x0

    .line 848
    .local v5, "wFirstPageNum":S
    const/4 v6, 0x0

    .line 849
    .local v6, "wSecondKdbNum":S
    const/4 v7, 0x0

    .line 850
    .local v7, "wSecondPageNum":S
    new-array v1, v13, [S

    .line 851
    .local v1, "pwFirstLdbNum":[S
    new-array v2, v13, [S

    .line 852
    .local v2, "pwSecondLdbNum":[S
    aput-short v12, v1, v12

    .line 853
    aput-short v12, v2, v12

    .line 854
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v9, v14, :cond_6

    .line 855
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v9

    aput-short v9, v1, v12

    .line 862
    :cond_0
    :goto_0
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_1

    .line 863
    aget-short v9, v1, v12

    const v10, 0xff00

    and-int/2addr v9, v10

    iget-short v10, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v1, v12

    .line 865
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 866
    .local v0, "inputMethod":I
    if-eq v0, v13, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 867
    :cond_2
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v9, v14, :cond_7

    .line 868
    aget-short v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xa00

    int-to-short v4, v9

    .line 892
    :goto_1
    invoke-static {v12}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v8

    .line 893
    if-eqz v8, :cond_3

    .line 894
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

    .line 896
    :cond_3
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v10, 0x1bc

    iput-short v10, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardHeight:S

    .line 897
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v10, 0x2d0

    iput-short v10, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardWidth:S

    .line 898
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-static {v4, v5, v6, v7, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Init(SSSSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;)S

    move-result v8

    .line 899
    if-eqz v8, :cond_4

    .line 900
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

    .line 902
    :cond_4
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v8

    .line 903
    if-eqz v8, :cond_5

    .line 904
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

    .line 906
    :cond_5
    return-void

    .line 857
    .end local v0    # "inputMethod":I
    :cond_6
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v8

    .line 858
    if-eqz v8, :cond_0

    .line 859
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

    .line 870
    .restart local v0    # "inputMethod":I
    :cond_7
    aget-short v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x600

    int-to-short v4, v9

    goto/16 :goto_1

    .line 873
    :cond_8
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v9, v14, :cond_9

    .line 874
    aget-short v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xd00

    int-to-short v4, v9

    goto/16 :goto_1

    .line 875
    :cond_9
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_a

    .line 876
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v9, v10, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 877
    .local v3, "turkishKeyboardType":I
    packed-switch v3, :pswitch_data_0

    .line 885
    aget-short v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_1

    .line 879
    :pswitch_0
    aget-short v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xf00

    int-to-short v4, v9

    .line 880
    goto/16 :goto_1

    .line 882
    :pswitch_1
    aget-short v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x1000

    int-to-short v4, v9

    .line 883
    goto/16 :goto_1

    .line 889
    .end local v3    # "turkishKeyboardType":I
    :cond_a
    aget-short v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_1

    .line 877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initKRUDB()S
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method private initKoreanLanguage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 523
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    .line 525
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    move-result v0

    .line 526
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 527
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

    .line 530
    :cond_0
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 531
    if-nez v0, :cond_5

    .line 533
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit(SS)S

    move-result v0

    .line 534
    if-eqz v0, :cond_1

    .line 535
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

    .line 538
    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 539
    if-eqz v0, :cond_2

    .line 540
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

    .line 553
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDisableChunJiIn()S

    move-result v0

    .line 554
    if-eqz v0, :cond_3

    .line 555
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

    .line 558
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsKoreanCoreInit:Z

    .line 560
    .end local v0    # "wStatus":S
    :cond_4
    :goto_0
    return-void

    .line 544
    .restart local v0    # "wStatus":S
    :cond_5
    const/16 v1, 0x9

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 546
    if-eqz v0, :cond_4

    .line 547
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
.end method

.method private initLatinLanguage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 424
    const/16 v2, 0x10

    invoke-static {v6, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v1

    .line 425
    .local v1, "wStatus":S
    if-eqz v1, :cond_0

    .line 426
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSysInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v1

    .line 429
    if-nez v1, :cond_8

    .line 431
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v1

    .line 432
    if-eqz v1, :cond_1

    .line 433
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v2, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v1

    .line 436
    if-eqz v1, :cond_2

    .line 437
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbSetLanguage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    :goto_0
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordStemsPoint(S)S

    move-result v1

    .line 453
    if-eqz v1, :cond_3

    .line 454
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetWordStemsPoint : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3
    invoke-static {v5, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v1

    .line 458
    if-eqz v1, :cond_4

    .line 459
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoSpace()S

    move-result v1

    .line 462
    if-eqz v1, :cond_5

    .line 463
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetAutoSpace : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetNiceLatency()S

    move-result v1

    .line 467
    if-eqz v1, :cond_6

    .line 468
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetNiceLatency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetFastAdaptation()Z

    move-result v0

    .line 472
    .local v0, "result":Z
    if-eq v0, v6, :cond_7

    .line 473
    const-string v2, "SamsungIME"

    const-string v3, "ET9AWSetFastAdaptation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initSmartTouch()S

    .line 477
    return-void

    .line 442
    .end local v0    # "result":Z
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v1

    .line 443
    if-eqz v1, :cond_9

    .line 444
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_9
    const/16 v2, 0x9

    invoke-static {v2, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v1

    .line 448
    if-eqz v1, :cond_2

    .line 449
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initLinguistic()V
    .locals 4

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "wStatus":S
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKoreanLanguage()V

    .line 392
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initDLM()S

    .line 393
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initCDB()S

    .line 394
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    .line 397
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    .line 399
    if-eqz v0, :cond_0

    .line 400
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

    .line 409
    :cond_0
    :goto_1
    return-void

    .line 387
    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_2

    .line 388
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initChineseLanguage()V

    goto :goto_0

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    goto :goto_0

    .line 404
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    .line 405
    if-eqz v0, :cond_0

    .line 406
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
.end method

.method private initRUDB()S
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method private initSubLinguistic()V
    .locals 2

    .prologue
    .line 414
    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKoreanLanguage()V

    .line 421
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initChineseLanguage()V

    goto :goto_0

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    goto :goto_0
.end method

.method private invokeTimeOut()V
    .locals 4

    .prologue
    .line 2161
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    .line 2162
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 2163
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

    .line 2165
    :cond_0
    return-void
.end method

.method private isAcuteAccent()Z
    .locals 1

    .prologue
    .line 4226
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    return v0
.end method

.method private lookupChar(I)I
    .locals 12
    .param p1, "wKey"    # I

    .prologue
    const/16 v5, 0x80

    const/16 v11, 0x7a

    const/16 v10, 0x61

    const/16 v8, 0x30

    const/4 v9, 0x1

    .line 1328
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1329
    .local v0, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    .line 1330
    .local v1, "isPredictionOn":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    .line 1331
    .local v3, "strokeModeOn":Z
    if-eq v0, v9, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1332
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD:[S

    .line 1333
    .local v2, "keyMap":[S
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_3

    .line 1334
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_TH:[S

    .line 1335
    if-lt p1, v8, :cond_2

    const/16 v6, 0x3a

    if-gt p1, v6, :cond_2

    .line 1336
    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    .line 1418
    :cond_1
    :goto_0
    return v5

    .line 1337
    :cond_2
    const/16 v6, -0x3a

    if-ne p1, v6, :cond_5

    .line 1338
    const/16 v5, 0xa

    aget-short v5, v2, v5

    goto :goto_0

    .line 1340
    :cond_3
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const v7, 0x7a68434e

    if-ne v6, v7, :cond_5

    if-eqz v3, :cond_5

    .line 1341
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    .line 1342
    const/16 v6, 0x2a

    if-ne p1, v6, :cond_4

    .line 1343
    const/4 v5, 0x5

    aget-short v5, v2, v5

    goto :goto_0

    .line 1345
    :cond_4
    const/16 v6, 0x31

    if-lt p1, v6, :cond_5

    const/16 v6, 0x35

    if-gt p1, v6, :cond_5

    .line 1346
    add-int/lit8 v5, p1, -0x31

    aget-short v5, v2, v5

    goto :goto_0

    .line 1349
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1350
    if-lt p1, v8, :cond_1

    const/16 v6, 0x39

    if-gt p1, v6, :cond_1

    .line 1351
    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    goto :goto_0

    .line 1354
    .end local v2    # "keyMap":[S
    :cond_6
    if-eqz v0, :cond_7

    const/4 v6, 0x7

    if-eq v0, v6, :cond_7

    const/16 v6, 0x8

    if-ne v0, v6, :cond_1c

    .line 1357
    :cond_7
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY:[S

    .line 1358
    .restart local v2    # "keyMap":[S
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_8

    .line 1359
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForTHAI(I)I

    move-result v5

    goto :goto_0

    .line 1360
    :cond_8
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_9

    .line 1361
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForVIETNAMESE(I)I

    move-result v5

    goto :goto_0

    .line 1362
    :cond_9
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6b6f0000

    if-ne v6, v7, :cond_a

    .line 1363
    if-eqz v1, :cond_1

    .line 1364
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForKorean(I)I

    move-result v5

    goto :goto_0

    .line 1368
    :cond_a
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6c740000

    if-ne v6, v7, :cond_b

    .line 1369
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForLithuanian(I)I

    move-result v5

    goto :goto_0

    .line 1370
    :cond_b
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x64610000

    if-eq v6, v7, :cond_c

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x66690000

    if-eq v6, v7, :cond_c

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6e620000

    if-eq v6, v7, :cond_c

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x73760000

    if-ne v6, v7, :cond_d

    .line 1374
    :cond_c
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForDanish(I)I

    move-result v5

    goto/16 :goto_0

    .line 1375
    :cond_d
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x69730000

    if-ne v6, v7, :cond_e

    .line 1376
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForIcelandic(I)I

    move-result v5

    goto/16 :goto_0

    .line 1377
    :cond_e
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x617a0000

    if-ne v6, v7, :cond_f

    .line 1378
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForAzerbaijan(I)I

    move-result v5

    goto/16 :goto_0

    .line 1379
    :cond_f
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x65740000

    if-ne v6, v7, :cond_10

    .line 1380
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForEstonian(I)I

    move-result v5

    goto/16 :goto_0

    .line 1381
    :cond_10
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x73710000

    if-ne v6, v7, :cond_11

    .line 1382
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForAlbanian(I)I

    move-result v5

    goto/16 :goto_0

    .line 1383
    :cond_11
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x656c0000

    if-ne v6, v7, :cond_12

    .line 1384
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForGreek(I)I

    move-result v5

    goto/16 :goto_0

    .line 1385
    :cond_12
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x74720000

    if-ne v6, v7, :cond_14

    .line 1386
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 1387
    .local v4, "turkishKeyboardType":I
    if-ne v4, v9, :cond_13

    .line 1388
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForTurkish(I)I

    move-result v5

    goto/16 :goto_0

    .line 1389
    :cond_13
    const/4 v6, 0x2

    if-ne v4, v6, :cond_14

    .line 1390
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForTurkishF(I)I

    move-result v5

    goto/16 :goto_0

    .line 1393
    .end local v4    # "turkishKeyboardType":I
    :cond_14
    if-lt p1, v10, :cond_15

    if-gt p1, v11, :cond_15

    .line 1394
    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0

    .line 1395
    :cond_15
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x68790000

    if-ne v6, v7, :cond_16

    .line 1396
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForArmenian(I)I

    move-result v5

    goto/16 :goto_0

    .line 1397
    :cond_16
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x62670000

    if-ne v6, v7, :cond_17

    .line 1398
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForBulgarian(I)I

    move-result v5

    goto/16 :goto_0

    .line 1399
    :cond_17
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x72750000

    if-eq v6, v7, :cond_18

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6b6b0000

    if-eq v6, v7, :cond_18

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x756b0000

    if-eq v6, v7, :cond_18

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x617a0000

    if-eq v6, v7, :cond_18

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6d6b0000

    if-ne v6, v7, :cond_19

    .line 1404
    :cond_18
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForRussian(I)I

    move-result v5

    goto/16 :goto_0

    .line 1405
    :cond_19
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x61720000

    if-eq v6, v7, :cond_1a

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x75720000

    if-eq v6, v7, :cond_1a

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x66610000

    if-ne v6, v7, :cond_1b

    .line 1408
    :cond_1a
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForArabic(I)I

    move-result v5

    goto/16 :goto_0

    .line 1409
    :cond_1b
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x69770000

    if-ne v6, v7, :cond_1

    .line 1410
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForHebrew(I)I

    move-result v5

    goto/16 :goto_0

    .line 1413
    .end local v2    # "keyMap":[S
    :cond_1c
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY:[S

    .line 1414
    .restart local v2    # "keyMap":[S
    if-lt p1, v10, :cond_1

    if-gt p1, v11, :cond_1

    .line 1415
    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0
.end method

.method private lookupCharForAlbanian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_SQ:[S

    .line 1494
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1495
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1496
    aget-short v2, v1, v0

    .line 1503
    :goto_0
    return v2

    .line 1498
    :cond_0
    const/16 v2, 0xeb

    if-ne p1, v2, :cond_1

    .line 1499
    const/16 v2, 0xa

    goto :goto_0

    .line 1500
    :cond_1
    const/16 v2, 0xe7

    if-ne p1, v2, :cond_2

    .line 1501
    const/16 v2, 0x14

    goto :goto_0

    .line 1503
    :cond_2
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForArabic(I)I
    .locals 4
    .param p1, "wKey"    # I

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AR:[S

    .line 1531
    .local v1, "keyMap":[S
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x61720000

    if-ne v2, v3, :cond_1

    .line 1532
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AR:[S

    .line 1538
    :cond_0
    :goto_0
    add-int/lit8 v0, p1, -0x41

    .line 1539
    .local v0, "keyIndex":I
    if-ltz v0, :cond_3

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 1540
    aget-short v2, v1, v0

    .line 1542
    :goto_1
    return v2

    .line 1533
    .end local v0    # "keyIndex":I
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x66610000

    if-ne v2, v3, :cond_2

    .line 1534
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_FA:[S

    goto :goto_0

    .line 1535
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x75720000

    if-ne v2, v3, :cond_0

    .line 1536
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_UR:[S

    goto :goto_0

    .line 1542
    .restart local v0    # "keyIndex":I
    :cond_3
    const/16 v2, 0x80

    goto :goto_1
.end method

.method private lookupCharForArmenian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HY:[S

    .line 1523
    .local v1, "keyMap":[S
    add-int/lit16 v0, p1, -0x562

    .line 1524
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1525
    aget-short v2, v1, v0

    .line 1527
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
    .line 1622
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AZ:[S

    .line 1623
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1624
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1625
    aget-short v2, v1, v0

    .line 1646
    :goto_0
    return v2

    .line 1628
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1646
    const/16 v2, 0x80

    goto :goto_0

    .line 1630
    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    .line 1632
    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    .line 1634
    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    .line 1636
    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    .line 1638
    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    .line 1640
    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    .line 1642
    :sswitch_6
    const/4 v2, 0x1

    goto :goto_0

    .line 1628
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
    .line 1514
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_BG:[S

    .line 1515
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x41

    .line 1516
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1517
    aget-short v2, v1, v0

    .line 1519
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

    .line 1429
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_DA:[S

    .line 1430
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1431
    .local v0, "keyIndex":I
    if-ltz v0, :cond_1

    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 1432
    aget-short v2, v1, v0

    .line 1475
    :cond_0
    :goto_0
    return v2

    .line 1434
    :cond_1
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    sparse-switch v5, :sswitch_data_0

    .line 1475
    :cond_2
    const/16 v2, 0x80

    goto :goto_0

    .line 1436
    :sswitch_0
    if-eq p1, v6, :cond_0

    .line 1438
    const/16 v2, 0xf8

    if-ne p1, v2, :cond_3

    move v2, v3

    .line 1439
    goto :goto_0

    .line 1440
    :cond_3
    if-ne p1, v7, :cond_2

    move v2, v4

    .line 1441
    goto :goto_0

    .line 1446
    :sswitch_1
    if-eq p1, v6, :cond_0

    .line 1448
    const/16 v2, 0xf6

    if-ne p1, v2, :cond_4

    move v2, v4

    .line 1449
    goto :goto_0

    .line 1450
    :cond_4
    const/16 v2, 0xe4

    if-ne p1, v2, :cond_2

    move v2, v3

    .line 1451
    goto :goto_0

    .line 1455
    :sswitch_2
    const/16 v3, 0xf0

    if-eq p1, v3, :cond_0

    .line 1457
    if-ne p1, v7, :cond_5

    move v2, v4

    .line 1458
    goto :goto_0

    .line 1459
    :cond_5
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_2

    .line 1460
    const/16 v2, 0x1c

    goto :goto_0

    .line 1464
    :sswitch_3
    if-eq p1, v6, :cond_0

    .line 1466
    const/16 v2, 0xf8

    if-ne p1, v2, :cond_6

    move v2, v4

    .line 1467
    goto :goto_0

    .line 1468
    :cond_6
    if-ne p1, v7, :cond_2

    move v2, v3

    .line 1469
    goto :goto_0

    .line 1434
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
    .line 1601
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_ET:[S

    .line 1602
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1603
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1604
    aget-short v2, v1, v0

    .line 1618
    :goto_0
    return v2

    .line 1606
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1618
    const/16 v2, 0x80

    goto :goto_0

    .line 1608
    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    .line 1610
    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    .line 1612
    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    .line 1614
    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    .line 1606
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
    .line 1649
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_EL:[S

    .line 1650
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1651
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1652
    aget-short v2, v1, v0

    .line 1654
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
    .line 1545
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HE:[S

    .line 1546
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x41

    .line 1547
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1548
    aget-short v2, v1, v0

    .line 1550
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
    .line 1478
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_IS:[S

    .line 1479
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1480
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1481
    aget-short v2, v1, v0

    .line 1490
    :goto_0
    return v2

    .line 1483
    :cond_0
    const/16 v2, 0xf0

    if-ne p1, v2, :cond_1

    .line 1484
    const/16 v2, 0xa

    goto :goto_0

    .line 1485
    :cond_1
    const/16 v2, 0xe6

    if-ne p1, v2, :cond_2

    .line 1486
    const/16 v2, 0x14

    goto :goto_0

    .line 1487
    :cond_2
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_3

    .line 1488
    const/16 v2, 0x1c

    goto :goto_0

    .line 1490
    :cond_3
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForKorean(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_KO:[S

    .line 1422
    .local v1, "keyMap":[S
    add-int/lit16 v0, p1, -0x3131

    .line 1423
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1424
    aget-short v2, v1, v0

    .line 1426
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForLithuanian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 1571
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_LT:[S

    .line 1572
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1573
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1574
    aget-short v2, v1, v0

    .line 1598
    :goto_0
    return v2

    .line 1576
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1598
    const/16 v2, 0x80

    goto :goto_0

    .line 1578
    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1580
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1582
    :sswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 1584
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_0

    .line 1586
    :sswitch_4
    const/4 v2, 0x4

    goto :goto_0

    .line 1588
    :sswitch_5
    const/4 v2, 0x5

    goto :goto_0

    .line 1590
    :sswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 1592
    :sswitch_7
    const/4 v2, 0x7

    goto :goto_0

    .line 1594
    :sswitch_8
    const/16 v2, 0x8

    goto :goto_0

    .line 1576
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
    .line 1506
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_RU:[S

    .line 1507
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x41

    .line 1508
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1509
    aget-short v2, v1, v0

    .line 1511
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
    .line 1553
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TH:[S

    .line 1554
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1555
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1556
    aget-short v2, v1, v0

    .line 1558
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
    .line 1657
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR:[S

    .line 1658
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1659
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1660
    aget-short v2, v1, v0

    .line 1676
    :goto_0
    return v2

    .line 1662
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1676
    const/16 v2, 0x80

    goto :goto_0

    .line 1664
    :sswitch_0
    const/4 v2, 0x7

    goto :goto_0

    .line 1666
    :sswitch_1
    const/16 v2, 0xa

    goto :goto_0

    .line 1668
    :sswitch_2
    const/16 v2, 0xb

    goto :goto_0

    .line 1670
    :sswitch_3
    const/16 v2, 0x15

    goto :goto_0

    .line 1672
    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    .line 1674
    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    .line 1662
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
    .line 1679
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR_F:[S

    .line 1680
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 1681
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1682
    aget-short v2, v1, v0

    .line 1698
    :goto_0
    return v2

    .line 1684
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1698
    const/16 v2, 0x80

    goto :goto_0

    .line 1686
    :sswitch_0
    const/4 v2, 0x3

    goto :goto_0

    .line 1688
    :sswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 1690
    :sswitch_2
    const/16 v2, 0x10

    goto :goto_0

    .line 1692
    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    .line 1694
    :sswitch_4
    const/16 v2, 0x19

    goto :goto_0

    .line 1696
    :sswitch_5
    const/16 v2, 0x1c

    goto :goto_0

    .line 1684
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
    .line 1561
    const/4 v1, 0x0

    .line 1562
    .local v1, "keyMap":[S
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_VI_9:[S

    .line 1564
    add-int/lit8 v0, p1, -0x61

    .line 1565
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1566
    aget-short v2, v1, v0

    .line 1568
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
    .line 1281
    const/4 v3, 0x1

    new-array v0, v3, [S

    .line 1282
    .local v0, "sFunctionKey":[S
    const/4 v2, 0x0

    .line 1283
    .local v2, "wStatus":S
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v1

    .line 1284
    .local v1, "wKeytoMapVal":I
    int-to-short v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v2

    .line 1285
    if-eqz v2, :cond_0

    .line 1286
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

    .line 1288
    :cond_0
    return v2
.end method

.method private processTap(IFF)S
    .locals 7
    .param p1, "wKeyIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v0, 0x1

    .line 1306
    new-array v5, v0, [S

    .line 1307
    .local v5, "sFunctionKey":[S
    const/4 v6, 0x0

    .line 1316
    .local v6, "wStatus":S
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I

    .line 1318
    float-to-int v0, p2

    int-to-short v0, v0

    const v1, 0x453b8000

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTap(SSJB[S)S

    move-result v6

    .line 1324
    return v6
.end method

.method private readDBdataFromFile(B)Z
    .locals 14
    .param p1, "dbType"    # B

    .prologue
    const/4 v13, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 562
    const/4 v4, 0x0

    .line 563
    .local v4, "file":Ljava/io/File;
    const-string v5, ""

    .line 564
    .local v5, "fileName":Ljava/lang/String;
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 565
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "xT9DB"

    invoke-virtual {v11, v12, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 566
    .local v2, "dir":Ljava/io/File;
    const/4 v0, 0x0

    .line 567
    .local v0, "buffer":[B
    if-nez p1, :cond_5

    .line 568
    const-string v5, "xT9UdbData.dat"

    .line 569
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    .line 589
    :goto_0
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 590
    .restart local v4    # "file":Ljava/io/File;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 591
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 592
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

    .line 595
    :cond_0
    if-ne p1, v13, :cond_1

    .line 596
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v9, v11

    sput v9, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    .line 597
    const/4 v9, 0x0

    sput-object v9, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 598
    sget v9, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v9, v9, [B

    sput-object v9, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 599
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 602
    :cond_1
    const/4 v6, 0x0

    .line 604
    .local v6, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 606
    .local v8, "returnOfRead":I
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 607
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

    .line 615
    :cond_2
    if-eqz v7, :cond_3

    .line 616
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "returnOfRead":I
    :cond_4
    :goto_1
    move v9, v10

    .line 634
    :goto_2
    return v9

    .line 570
    :cond_5
    if-ne p1, v10, :cond_6

    .line 571
    const-string v5, "xT9CdbData.dat"

    .line 572
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBBuffer:[B

    goto :goto_0

    .line 573
    :cond_6
    const/4 v11, 0x2

    if-ne p1, v11, :cond_7

    .line 574
    const-string v5, "xT9ASdbData.dat"

    .line 575
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    goto/16 :goto_0

    .line 576
    :cond_7
    const/4 v11, 0x3

    if-ne p1, v11, :cond_8

    .line 577
    const-string v5, "xT9KUdbData.dat"

    .line 578
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mKUDBBuffer:[B

    goto/16 :goto_0

    .line 579
    :cond_8
    if-ne p1, v13, :cond_9

    .line 580
    const-string v5, "xT9DLMData.dat"

    .line 581
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    goto/16 :goto_0

    .line 582
    :cond_9
    const/4 v11, 0x5

    if-ne p1, v11, :cond_a

    .line 583
    const-string v5, "xT9SMTData.dat"

    .line 584
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    goto/16 :goto_0

    .line 586
    :cond_a
    const-string v10, "SamsungIME"

    const-string v11, "Invalid DB type!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 618
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "returnOfRead":I
    :catch_0
    move-exception v3

    .line 619
    .local v3, "e":Ljava/io/IOException;
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

    move-object v6, v7

    .line 623
    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .line 609
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "returnOfRead":I
    :catch_1
    move-exception v3

    .line 610
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
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

    .line 615
    if-eqz v6, :cond_4

    .line 616
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 618
    :catch_2
    move-exception v3

    .line 619
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

    .line 614
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 615
    :goto_4
    if-eqz v6, :cond_b

    .line 616
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 622
    :cond_b
    :goto_5
    throw v9

    .line 618
    :catch_3
    move-exception v3

    .line 619
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

    goto :goto_5

    .line 626
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_c
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 627
    :catch_4
    move-exception v3

    .line 628
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

    goto/16 :goto_2

    .line 614
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 609
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private setAutoAppend(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "wStatus":I
    if-eqz p1, :cond_1

    .line 996
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoAppendInList()S

    move-result v0

    .line 1000
    :goto_0
    if-eqz v0, :cond_0

    .line 1001
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

    .line 1003
    :cond_0
    return-void

    .line 998
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearAutoAppendInList()S

    move-result v0

    goto :goto_0
.end method

.method private setAutoSubstitution(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "wStatus":S
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    .line 1007
    if-eqz p1, :cond_2

    .line 1008
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    .line 1012
    :goto_0
    if-eqz v0, :cond_0

    .line 1013
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

    .line 1015
    :cond_0
    if-eqz p1, :cond_3

    .line 1016
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    .line 1020
    :goto_1
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1021
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

    .line 1023
    :cond_1
    return-void

    .line 1010
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearLDBAutoSubstitution()S

    move-result v0

    goto :goto_0

    .line 1018
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

    const/4 v3, 0x0

    .line 1077
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "BILINGUAL_INPUT_LANGUAGE"

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguage:I

    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "wStatus":S
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getLanguageIDForEngine(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    .line 1081
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguage:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getLanguageIDForEngine(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguageId:S

    .line 1082
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v1, v4, :cond_0

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguageId:S

    if-eq v1, v4, :cond_0

    .line 1083
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguageId:S

    if-ne v1, v2, :cond_1

    .line 1084
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 1095
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 1096
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

    .line 1101
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    .line 1102
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    .line 1103
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    return v1

    .line 1087
    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1088
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_0

    .line 1091
    :cond_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguageId:S

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_0

    .line 1098
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->changeKDBNum(I)V

    goto :goto_1
.end method

.method private setInputMode(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, "inputMode":I
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1196
    :cond_0
    const/4 v0, 0x1

    .line 1198
    :cond_1
    const/4 v3, 0x0

    .line 1199
    .local v3, "wStatus":S
    new-array v1, v5, [S

    .line 1200
    .local v1, "pwFirstPageNum":[S
    new-array v2, v5, [S

    .line 1201
    .local v2, "pwSecondPageNum":[S
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v3

    .line 1202
    if-eqz v3, :cond_2

    .line 1203
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

    .line 1205
    :cond_2
    sget v4, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_AMBIG:I

    if-eq v0, v4, :cond_3

    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_5

    .line 1206
    :cond_3
    const/4 v3, 0x0

    .line 1207
    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetAmbigMode(SS)S

    move-result v3

    .line 1208
    if-eqz v3, :cond_4

    .line 1209
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

    .line 1218
    :cond_4
    :goto_0
    return-void

    .line 1211
    :cond_5
    sget v4, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_MULTITAP:I

    if-ne v0, v4, :cond_4

    .line 1212
    const/4 v3, 0x0

    .line 1213
    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetMultiTapMode(SS)S

    move-result v3

    .line 1214
    if-eqz v3, :cond_4

    .line 1215
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
    .locals 6
    .param p1, "set"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, "wStatus":I
    if-eqz p1, :cond_2

    .line 964
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetNextWordPrediction(ZZ)S

    move-result v0

    .line 965
    if-eqz v0, :cond_0

    .line 966
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

    .line 969
    :cond_0
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KEnableNextWordPrediction(ZZ)S

    move-result v0

    .line 970
    if-eqz v0, :cond_1

    .line 971
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KEnableNextWordPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetContextBasedPrediction()S

    move-result v0

    .line 975
    if-eqz v0, :cond_2

    .line 976
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

    .line 991
    :cond_2
    return-void
.end method

.method private setRegionalCorrectionOn(Z)V
    .locals 5
    .param p1, "set"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "wStatus":S
    if-eqz p1, :cond_3

    .line 1045
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    .line 1049
    :goto_0
    if-eqz v0, :cond_0

    .line 1050
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

    .line 1052
    :cond_0
    if-eqz p1, :cond_4

    .line 1054
    const/4 v1, 0x2

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 1055
    if-eqz v0, :cond_1

    .line 1056
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

    .line 1059
    :cond_1
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    .line 1061
    if-eqz v0, :cond_2

    .line 1062
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

    .line 1074
    :cond_2
    :goto_1
    return-void

    .line 1047
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_0

    .line 1065
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 1066
    if-eqz v0, :cond_5

    .line 1067
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

    .line 1069
    :cond_5
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    .line 1070
    if-eqz v0, :cond_2

    .line 1071
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
.end method

.method private setUDBDelayedReorder(Z)S
    .locals 2
    .param p1, "set"    # Z

    .prologue
    const/4 v1, 0x0

    .line 834
    if-eqz p1, :cond_0

    .line 835
    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    .line 837
    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletion(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "wStatus":S
    if-eqz p1, :cond_1

    .line 1027
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetDBCompletion()S

    move-result v0

    .line 1031
    :goto_0
    if-eqz v0, :cond_0

    .line 1032
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

    .line 1034
    :cond_0
    return-void

    .line 1029
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearDBCompletion()S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletionPoint(S)V
    .locals 4
    .param p1, "point"    # S

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1037
    .local v0, "wStatus":S
    invoke-static {p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordCompletionPoint(S)S

    move-result v0

    .line 1038
    if-eqz v0, :cond_0

    .line 1039
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

    .line 1041
    :cond_0
    return-void
.end method

.method private toUpperCaseOfTurkish(I)C
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1701
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 1702
    const/16 v0, 0x130

    .line 1708
    :goto_0
    return v0

    .line 1703
    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    .line 1704
    const/16 v0, 0x49

    goto :goto_0

    .line 1705
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1706
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    .line 1708
    :cond_2
    int-to-char v0, p1

    goto :goto_0
.end method


# virtual methods
.method public DLMAddWord([CS)S
    .locals 2
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 3480
    const/high16 v0, 0x6b6f0000

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsKoreanCoreInit:Z

    if-eqz v0, :cond_0

    .line 3481
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMAddWord([CS)S

    move-result v0

    .line 3484
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMAddWord([CS)S

    move-result v0

    goto :goto_0
.end method

.method public addAutoSubstitution(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "shortcut"    # Ljava/lang/CharSequence;
    .param p2, "substitution"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x14

    .line 2900
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    .line 2901
    .local v2, "shortcutBuf":[S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2902
    .local v0, "outSubstitution":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    .line 2903
    .local v1, "retCode":I
    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    .line 2904
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    .line 2905
    .local v3, "substitutionBuf":[S
    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    .line 2908
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 2909
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

    .line 2937
    .end local v3    # "substitutionBuf":[S
    :cond_0
    :goto_0
    return v4

    .line 2913
    :cond_1
    const/16 v5, 0x26

    if-ne v1, v5, :cond_5

    .line 2914
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    move-result v1

    .line 2915
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v4, v1

    .line 2916
    goto :goto_0

    .line 2918
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    .line 2919
    const/16 v5, 0x15

    if-ne v1, v5, :cond_3

    .line 2920
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    .line 2921
    .restart local v3    # "substitutionBuf":[S
    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    .line 2924
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 2925
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

    .line 2927
    goto :goto_0

    .line 2929
    .end local v3    # "substitutionBuf":[S
    :cond_3
    if-eqz v1, :cond_0

    :cond_4
    move v4, v1

    .line 2937
    goto :goto_0

    .line 2932
    :cond_5
    if-eqz v1, :cond_0

    move v4, v1

    .line 2935
    goto :goto_0
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 8
    .param p1, "myword"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x14

    const/4 v7, 0x4

    const/4 v4, 0x0

    .line 2791
    const/4 v1, 0x0

    .line 2792
    .local v1, "retCode":I
    if-eqz p1, :cond_6

    .line 2793
    const/4 v0, 0x0

    .line 2794
    .local v0, "isKorean":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 2795
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    .line 2797
    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    .line 2798
    .local v2, "tempword":[S
    if-eqz v0, :cond_3

    .line 2799
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 2800
    if-ne v1, v7, :cond_1

    .line 2801
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v3

    .line 2802
    .local v3, "word":[C
    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v3, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMAddWord([CS)S

    .line 2822
    .end local v0    # "isKorean":Z
    .end local v2    # "tempword":[S
    .end local v3    # "word":[C
    :goto_0
    return v4

    .line 2804
    .restart local v0    # "isKorean":Z
    .restart local v2    # "tempword":[S
    :cond_1
    if-nez v1, :cond_2

    move v4, v5

    .line 2805
    goto :goto_0

    :cond_2
    move v4, v1

    .line 2807
    goto :goto_0

    .line 2810
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 2811
    if-ne v1, v7, :cond_4

    .line 2812
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v3

    .line 2813
    .restart local v3    # "word":[C
    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v3, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMAddWord([CS)S

    goto :goto_0

    .line 2815
    .end local v3    # "word":[C
    :cond_4
    if-nez v1, :cond_5

    move v4, v5

    .line 2816
    goto :goto_0

    :cond_5
    move v4, v1

    .line 2818
    goto :goto_0

    .end local v0    # "isKorean":Z
    .end local v2    # "tempword":[S
    :cond_6
    move v4, v1

    .line 2822
    goto :goto_0
.end method

.method public breakContext()V
    .locals 0

    .prologue
    .line 3397
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    .line 3398
    return-void
.end method

.method public checkXT9WordWrappingRule(C)Z
    .locals 3
    .param p1, "oneLetter"    # C

    .prologue
    const/4 v0, 0x1

    .line 3962
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3967
    :cond_0
    :goto_0
    return v0

    .line 3964
    :cond_1
    const-string v1, "\'-#_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3967
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearContext()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2318
    const/4 v0, 0x0

    .line 2320
    .local v0, "retCode":I
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 2321
    iput v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 2322
    iput v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 2324
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v0

    .line 2326
    iget-byte v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2327
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    .line 2329
    :cond_0
    iget-byte v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2330
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    .line 2332
    :cond_1
    return v0
.end method

.method public convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 2749
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 2750
    .local v1, "target":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2751
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 2750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2753
    :cond_0
    return-object v1
.end method

.method public convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 2741
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 2742
    .local v1, "target":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2743
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 2742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2745
    :cond_0
    return-object v1
.end method

.method public convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # [C
    .param p2, "length"    # I

    .prologue
    .line 2733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2734
    .local v1, "target":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2735
    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2737
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
    .line 2725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2726
    .local v1, "target":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2727
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2729
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public deleteAutoSubstitution(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "shortcut"    # Ljava/lang/CharSequence;

    .prologue
    .line 2971
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    .line 2972
    .local v2, "shortcutBuf":[S
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2973
    .local v3, "substitution":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    .line 2974
    .local v0, "retCode":I
    if-nez v0, :cond_0

    .line 2975
    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 2976
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 2977
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

    .line 3001
    .end local v0    # "retCode":I
    .local v1, "retCode":I
    :goto_0
    return v1

    .line 2981
    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_0
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    .line 2982
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    move-result v0

    .line 2983
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move v1, v0

    .line 2984
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .line 2986
    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    .line 2987
    if-nez v0, :cond_2

    .line 2988
    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 2989
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 2990
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

    .line 2993
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_2
    move v1, v0

    .line 2996
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_3
    move v1, v0

    .line 2999
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_4
    move v1, v0

    .line 3001
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0
.end method

.method public deleteLdb(I)V
    .locals 1
    .param p1, "ldbCode"    # I

    .prologue
    .line 3575
    int-to-short v0, p1

    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9DeleteLdb(S)S

    .line 3576
    return-void
.end method

.method public deleteMyWord(Ljava/lang/CharSequence;)I
    .locals 4
    .param p1, "myword"    # Ljava/lang/CharSequence;

    .prologue
    .line 2841
    const/4 v1, 0x0

    .line 2842
    .local v1, "retCode":I
    if-eqz p1, :cond_1

    .line 2843
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v2

    .line 2845
    .local v2, "word":[C
    const/4 v0, 0x0

    .line 2846
    .local v0, "isKorean":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2847
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    .line 2849
    :cond_0
    if-eqz v0, :cond_2

    .line 2850
    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMDeleteWord([CS)S

    move-result v1

    .line 2856
    .end local v0    # "isKorean":Z
    .end local v2    # "word":[C
    :cond_1
    :goto_0
    return v1

    .line 2853
    .restart local v0    # "isKorean":Z
    .restart local v2    # "word":[C
    :cond_2
    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMDeleteWord([CS)S

    move-result v1

    goto :goto_0
.end method

.method public deleteWordFromLDB([CS)S
    .locals 2
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 3500
    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 3501
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMDeleteWord([CS)S

    move-result v0

    .line 3504
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMDeleteWord([CS)S

    move-result v0

    goto :goto_0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 2
    .param p1, "bCommitSpace"    # Z

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 3148
    const/4 v0, 0x0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 27
    .param p1, "index"    # I

    .prologue
    .line 3152
    const/16 v24, 0x0

    .line 3153
    .local v24, "wStatus":I
    move/from16 v20, p1

    .line 3154
    .local v20, "mRealIndex":I
    move-object/from16 v0, p0

    iget-short v10, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v11, 0x12

    if-ne v10, v11, :cond_4

    .line 3156
    const/4 v10, -0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_0

    .line 3157
    const/16 p1, 0x0

    .line 3160
    :cond_0
    move/from16 v0, p1

    int-to-byte v10, v0

    invoke-static {v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v24

    .line 3161
    if-eqz v24, :cond_1

    .line 3162
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ET9KSelectHangul : "

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 3165
    const/4 v10, 0x1

    new-array v12, v10, [S

    .line 3166
    .local v12, "HangulLen":[S
    const/4 v10, 0x1

    new-array v0, v10, [B

    move-object/from16 v22, v0

    .line 3168
    .local v22, "pbWordSource":[B
    move/from16 v0, p1

    int-to-byte v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v22

    invoke-static {v10, v11, v0, v12, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S[B)S

    move-result v24

    .line 3169
    if-eqz v24, :cond_2

    .line 3170
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ET9KGetHangul : "

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v10, v10

    if-lez v10, :cond_3

    .line 3180
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    const/4 v11, 0x0

    aget-short v11, v12, v11

    invoke-static {v10, v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v24

    .line 3181
    if-eqz v24, :cond_3

    .line 3182
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ET9KNoteHangulDone : "

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    .end local v12    # "HangulLen":[S
    .end local v22    # "pbWordSource":[B
    :cond_3
    :goto_0
    return v24

    .line 3186
    :cond_4
    new-instance v21, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct/range {v21 .. v21}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    .line 3187
    .local v21, "pCurrentActiveWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;
    move/from16 v0, p1

    int-to-byte v10, v0

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v24

    .line 3189
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3190
    .local v14, "beforeContextBuffer":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3191
    .local v13, "aftercontextBuffer":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 3193
    .local v25, "word":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    .line 3194
    .local v4, "dwBufLen":J
    const/4 v8, 0x0

    .line 3195
    .local v8, "wWordLen":S
    const-wide/16 v6, 0x0

    .line 3197
    .local v6, "dwWordStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v19

    .line 3198
    .local v19, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v19, :cond_5

    .line 3199
    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3200
    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3202
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3203
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3205
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-long v4, v10

    .line 3206
    move-object/from16 v0, v21

    iget-short v8, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    .line 3208
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v8

    int-to-long v6, v10

    .line 3211
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsVZW:Z

    if-eqz v10, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_7

    .line 3212
    long-to-int v0, v6

    move/from16 v23, v0

    .line 3213
    .local v23, "start":I
    long-to-int v10, v6

    add-int v17, v10, v8

    .line 3215
    .local v17, "end":I
    const-string v15, ""

    .line 3216
    .local v15, "change":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 3218
    .local v16, "check":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkExclusionPattern(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3219
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v8, :cond_6

    .line 3220
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3219
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 3222
    :cond_6
    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3225
    .end local v15    # "change":Ljava/lang/String;
    .end local v16    # "check":Ljava/lang/String;
    .end local v17    # "end":I
    .end local v18    # "i":I
    .end local v23    # "start":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    .line 3226
    .local v3, "pText":[S
    const/4 v10, 0x1

    new-array v9, v10, [S

    .line 3228
    .local v9, "oldWord":[S
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordChanged([SJJS[S[SS)S

    move-result v24

    goto/16 :goto_0
.end method

.method public doNoteWordDoneForXt9WithoutIndex(I)I
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    .line 3235
    const/4 v11, 0x0

    .line 3236
    .local v11, "wStatus":I
    const/16 v5, 0xa

    if-eq p1, v5, :cond_0

    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    :cond_0
    move v12, v11

    .line 3271
    .end local v11    # "wStatus":I
    .local v12, "wStatus":I
    :goto_0
    return v12

    .line 3240
    .end local v12    # "wStatus":I
    .restart local v11    # "wStatus":I
    :cond_1
    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v7, 0x12

    if-ne v5, v7, :cond_2

    .line 3242
    const/4 v5, 0x1

    new-array v13, v5, [S

    .line 3243
    .local v13, "word":[S
    const/4 v5, 0x0

    int-to-short v7, p1

    aput-short v7, v13, v5

    .line 3244
    const/4 v5, 0x1

    invoke-static {v13, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v11

    move v12, v11

    .line 3245
    .end local v11    # "wStatus":I
    .restart local v12    # "wStatus":I
    goto :goto_0

    .line 3248
    .end local v12    # "wStatus":I
    .end local v13    # "word":[S
    .restart local v11    # "wStatus":I
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3249
    .local v9, "beforeContextBuffer":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3251
    .local v13, "word":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    .line 3252
    .local v1, "dwBufLen":J
    const-wide/16 v3, 0x0

    .line 3254
    .local v3, "dwWordStart":J
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 3255
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v10, :cond_4

    .line 3256
    const/16 v5, 0x40

    const/4 v7, 0x0

    invoke-interface {v10, v5, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3258
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v7, 0x20

    if-ne v5, v7, :cond_3

    .line 3259
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3262
    :cond_3
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3263
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    int-to-long v1, v5

    .line 3264
    const-wide/16 v7, 0x1

    sub-long v3, v1, v7

    .line 3267
    :cond_4
    invoke-virtual {p0, v13}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v0

    .line 3268
    .local v0, "pText":[S
    const/4 v5, 0x1

    new-array v6, v5, [S

    .line 3270
    .local v6, "oldWord":[S
    sub-long v7, v1, v3

    long-to-int v5, v7

    int-to-short v5, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordChanged([SJJS[S[SS)S

    move-result v11

    move v12, v11

    .line 3271
    .end local v11    # "wStatus":I
    .restart local v12    # "wStatus":I
    goto :goto_0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 10
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "length"    # S
    .param p3, "force"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3098
    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    .line 3099
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 3100
    .local v1, "isRecaptureOn":Z
    const/4 v3, 0x0

    .line 3101
    .local v3, "wStatus":I
    if-nez v1, :cond_0

    if-eqz p3, :cond_5

    .line 3102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v5

    .line 3103
    .local v5, "wordbuf":[C
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    .line 3104
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I

    .line 3106
    iget-short v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 3107
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 3108
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iput-short p2, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    .line 3109
    const/16 v6, 0x40

    if-le p2, v6, :cond_1

    .line 3110
    const/16 p2, 0x40

    .line 3112
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 3113
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-char v7, v5, v0

    int-to-short v7, v7

    aput-short v7, v6, v0

    .line 3112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3115
    :cond_2
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    .line 3116
    .local v2, "simpleWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-static {v6, v2, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDecodeHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S

    .line 3119
    iget-object v6, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v7, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    invoke-static {v6, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v3

    .line 3120
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 3121
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exceptionKorRecapture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    move v4, v3

    .line 3143
    .end local v0    # "i":I
    .end local v2    # "simpleWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;
    .end local v3    # "wStatus":I
    .end local v5    # "wordbuf":[C
    .local v4, "wStatus":I
    :goto_1
    return v4

    .line 3129
    .end local v4    # "wStatus":I
    .restart local v3    # "wStatus":I
    .restart local v5    # "wordbuf":[C
    :cond_3
    invoke-static {v5, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v3

    .line 3130
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 3131
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exceptionKorRecapture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    move v4, v3

    .line 3133
    .end local v3    # "wStatus":I
    .restart local v4    # "wStatus":I
    goto :goto_1

    .line 3137
    .end local v4    # "wStatus":I
    .restart local v3    # "wStatus":I
    :cond_4
    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    .line 3139
    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    .line 3140
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    .line 3142
    .end local v5    # "wordbuf":[C
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    move v4, v3

    .line 3143
    .end local v3    # "wStatus":I
    .restart local v4    # "wStatus":I
    goto :goto_1
.end method

.method public doResetMultitap()I
    .locals 1

    .prologue
    .line 3290
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    return v0
.end method

.method public findWordFromDLM([CS)Z
    .locals 2
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 3525
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMFindWord([CS)S

    move-result v0

    .line 3526
    .local v0, "wStatus":S
    if-nez v0, :cond_0

    .line 3527
    const/4 v1, 0x1

    .line 3530
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
    .line 3406
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v0

    .line 3407
    .local v0, "shortbuf":[S
    const/4 v2, 0x1

    new-array v1, v2, [S

    .line 3408
    .local v1, "shortbuflength":[S
    const/4 v2, 0x0

    array-length v3, v0

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 3409
    sget-object v2, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordBuf:[S

    const/16 v3, 0x40

    sget-object v4, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordLengthBuf:[S

    invoke-static {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextCustomWord([S[S[SS[S)S

    move-result v2

    return v2
.end method

.method public getActiveIndex([I)I
    .locals 3
    .param p1, "outIndex"    # [I

    .prologue
    const/4 v2, 0x0

    .line 4141
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4142
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setXt9AutoReplacementCondition(Z)V

    .line 4143
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    .line 4144
    aput v2, p1, v2

    .line 4148
    :goto_0
    return v2

    .line 4147
    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    aput v0, p1, v2

    goto :goto_0
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

    .line 2861
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoSubstitution(Z)V

    .line 2862
    const/4 v8, 0x0

    .line 2863
    .local v8, "retCode":I
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    aput-short v6, v0, v6

    .line 2864
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    .line 2865
    const/16 v0, 0x26

    if-ne v8, v0, :cond_1

    .line 2866
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    move-result v8

    .line 2867
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    move v9, v8

    .line 2896
    .end local v8    # "retCode":I
    .local v9, "retCode":I
    :goto_0
    return v9

    .line 2870
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    aput-short v6, v0, v6

    .line 2871
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    .line 2872
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 2873
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

    .line 2876
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto :goto_0

    .line 2878
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_1
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 2879
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

    .line 2881
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto :goto_0

    .line 2883
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    aget-short v0, v0, v6

    if-ge v7, v0, :cond_4

    .line 2884
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutLengthBuf:[S

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionLengthBuf:[S

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    .line 2887
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    .line 2888
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

    .line 2890
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto :goto_0

    .line 2892
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2893
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2883
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v9, v8

    .line 2896
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto/16 :goto_0
.end method

.method public getBestCandidate()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 4256
    :cond_0
    const-string v0, ""

    .line 4258
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 4
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 2235
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2236
    .local v0, "inputType":I
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsDisableAutoCorrection:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2240
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 2245
    :goto_0
    return v3

    .line 2242
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2243
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords()Ljava/lang/CharSequence;

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

    .line 2287
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2288
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2289
    return v1
.end method

.method public getExactCharSequence(Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 2249
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2250
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-static {v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9GetExactWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S

    move-result v2

    .line 2251
    .local v2, "wStatus":S
    if-eqz v2, :cond_1

    .line 2282
    :cond_0
    :goto_0
    return v5

    .line 2254
    :cond_1
    iget-short v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0x12

    if-ne v3, v4, :cond_5

    .line 2255
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    new-array v1, v3, [S

    .line 2256
    .local v1, "multiTapSequence":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    if-ge v0, v3, :cond_2

    .line 2257
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    aget-char v3, v3, v0

    int-to-short v3, v3

    aput-short v3, v1, v0

    .line 2256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2260
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-static {v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;)S

    move-result v2

    .line 2261
    if-nez v2, :cond_0

    .line 2264
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2265
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v0, v3, :cond_0

    .line 2266
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2265
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2269
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v0, v3, :cond_4

    .line 2270
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2269
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2272
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v3, v3

    if-lez v3, :cond_0

    .line 2274
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v5, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v2

    goto :goto_0

    .line 2278
    .end local v0    # "i":I
    .end local v1    # "multiTapSequence":[S
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    if-ge v0, v3, :cond_0

    .line 2279
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    aget-char v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2278
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public getInputLanguageId()S
    .locals 1

    .prologue
    .line 4251
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9LanguageId(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getInputSequenceCount()I
    .locals 1

    .prologue
    .line 3972
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    return v0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/16 v2, 0xe0

    .line 2418
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v3, v2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v2, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    .line 2420
    .local v2, "size":I
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 2421
    const/4 v3, 0x0

    .line 2427
    :goto_0
    return-object v3

    .line 2423
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2424
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v0, v3, :cond_2

    .line 2425
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2427
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getKeyPositionByTap(II)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3536
    new-array v4, v10, [S

    .line 3537
    .local v4, "topSym":[S
    int-to-short v6, p1

    add-int/lit16 v7, p2, 0xbb8

    int-to-short v7, v7

    invoke-static {v6, v7, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKeyPositionByTap(SS[S)S

    move-result v5

    .line 3538
    .local v5, "wStatus":S
    if-eqz v5, :cond_1

    .line 3539
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KDB_GetKeyPositionByTap - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    const/16 v6, 0x13

    if-ne v5, v6, :cond_0

    .line 3542
    new-array v1, v10, [S

    .line 3543
    .local v1, "pwFirstPageNum":[S
    new-array v3, v10, [S

    .line 3544
    .local v3, "pwSecondPageNum":[S
    invoke-static {v1, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v5

    .line 3545
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KDB_GetPageNum - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 1 page = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 2 page = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    new-array v0, v10, [S

    .line 3547
    .local v0, "pwFirstKdbNum":[S
    new-array v2, v10, [S

    .line 3548
    .local v2, "pwSecondKdbNum":[S
    invoke-static {v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v5

    .line 3549
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KDB_GetKdbNum - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 1 kdb = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 2 kdb = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    .end local v0    # "pwFirstKdbNum":[S
    .end local v1    # "pwFirstPageNum":[S
    .end local v2    # "pwSecondKdbNum":[S
    .end local v3    # "pwSecondPageNum":[S
    :cond_0
    const/16 v6, -0x12c

    .line 3553
    :goto_0
    return v6

    :cond_1
    aget-short v6, v4, v9

    goto :goto_0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "regions"    # [Landroid/graphics/Rect;

    .prologue
    .line 3612
    const/4 v3, 0x0

    .line 3613
    .local v3, "wStatus":I
    array-length v2, p1

    .line 3614
    .local v2, "max":I
    new-array v0, v2, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;

    .line 3615
    .local v0, "et9Regions":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3616
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;

    invoke-direct {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;-><init>()V

    aput-object v4, v0, v1

    .line 3615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3618
    :cond_0
    invoke-static {v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKeyPositions([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;I)S

    move-result v3

    .line 3619
    if-eqz v3, :cond_2

    .line 3620
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_GetKeyPositions - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    :cond_1
    return v3

    .line 3623
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 3624
    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wLeft:S

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3625
    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wTop:S

    add-int/lit16 v5, v5, -0xbb8

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3626
    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wRight:S

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3627
    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wBottom:S

    add-int/lit16 v5, v5, -0xbb8

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3623
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getLanguageIDForEngine(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2492
    const/4 v0, 0x0

    .line 2493
    .local v0, "lang":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 2494
    .local v2, "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2495
    .local v1, "locale":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2693
    const/16 v0, 0x9

    .line 2696
    :goto_0
    return v0

    .line 2497
    :sswitch_0
    const/4 v0, 0x1

    .line 2498
    goto :goto_0

    .line 2500
    :sswitch_1
    const/16 v0, 0x39

    .line 2501
    goto :goto_0

    .line 2503
    :sswitch_2
    const/16 v0, 0x4b

    .line 2504
    goto :goto_0

    .line 2506
    :sswitch_3
    const/16 v0, 0x57

    .line 2507
    goto :goto_0

    .line 2509
    :sswitch_4
    const/16 v0, 0x63

    .line 2510
    goto :goto_0

    .line 2512
    :sswitch_5
    const/16 v0, 0x6a

    .line 2513
    goto :goto_0

    .line 2515
    :sswitch_6
    const/16 v0, 0x6d

    .line 2516
    goto :goto_0

    .line 2518
    :sswitch_7
    const/16 v0, 0x74

    .line 2519
    goto :goto_0

    .line 2521
    :sswitch_8
    const/16 v0, 0x7c

    .line 2522
    goto :goto_0

    .line 2524
    :sswitch_9
    const/16 v0, 0x85

    .line 2525
    goto :goto_0

    .line 2527
    :sswitch_a
    const/16 v0, 0x84

    .line 2528
    goto :goto_0

    .line 2530
    :sswitch_b
    const/16 v0, 0x5a

    .line 2531
    goto :goto_0

    .line 2533
    :sswitch_c
    const/16 v0, 0x47

    .line 2534
    goto :goto_0

    .line 2536
    :sswitch_d
    const/4 v0, 0x2

    .line 2537
    goto :goto_0

    .line 2539
    :sswitch_e
    const/16 v0, 0xe2

    .line 2540
    goto :goto_0

    .line 2542
    :sswitch_f
    const/16 v0, 0xe1

    .line 2543
    goto :goto_0

    .line 2545
    :sswitch_10
    const/16 v0, 0xe0

    .line 2546
    goto :goto_0

    .line 2548
    :sswitch_11
    const/16 v0, 0x59

    .line 2549
    goto :goto_0

    .line 2551
    :sswitch_12
    const/4 v0, 0x5

    .line 2552
    goto :goto_0

    .line 2554
    :sswitch_13
    const/4 v0, 0x6

    .line 2555
    goto :goto_0

    .line 2557
    :sswitch_14
    const-string v3, "nl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2558
    const/16 v0, 0xc

    goto :goto_0

    .line 2560
    :cond_0
    const/16 v0, 0x13

    .line 2562
    goto :goto_0

    .line 2564
    :sswitch_15
    const/16 v0, 0x9

    .line 2565
    goto :goto_0

    .line 2567
    :sswitch_16
    const/16 v0, 0x9

    .line 2568
    goto :goto_0

    .line 2570
    :sswitch_17
    const/16 v0, 0x25

    .line 2571
    goto :goto_0

    .line 2573
    :sswitch_18
    const/16 v0, 0xb

    .line 2574
    goto :goto_0

    .line 2578
    :sswitch_19
    const/16 v0, 0xc

    .line 2579
    goto :goto_0

    .line 2581
    :sswitch_1a
    const/16 v0, 0x60

    .line 2582
    goto :goto_0

    .line 2584
    :sswitch_1b
    const/4 v0, 0x7

    .line 2585
    goto :goto_0

    .line 2587
    :sswitch_1c
    const/16 v0, 0x8

    .line 2588
    goto :goto_0

    .line 2590
    :sswitch_1d
    const/16 v0, 0xd

    .line 2591
    goto :goto_0

    .line 2593
    :sswitch_1e
    const/16 v0, 0xe

    .line 2594
    goto :goto_0

    .line 2596
    :sswitch_1f
    const/16 v0, 0xf

    .line 2597
    goto :goto_0

    .line 2599
    :sswitch_20
    const/16 v0, 0x21

    .line 2600
    goto :goto_0

    .line 2602
    :sswitch_21
    const/16 v0, 0x10

    .line 2603
    goto :goto_0

    .line 2605
    :sswitch_22
    const/16 v0, 0x11

    .line 2606
    goto :goto_0

    .line 2608
    :sswitch_23
    const/16 v0, 0x61

    .line 2609
    goto :goto_0

    .line 2611
    :sswitch_24
    const/16 v0, 0x12

    .line 2612
    goto :goto_0

    .line 2614
    :sswitch_25
    const/16 v0, 0x26

    .line 2615
    goto :goto_0

    .line 2617
    :sswitch_26
    const/16 v0, 0x27

    .line 2618
    goto/16 :goto_0

    .line 2620
    :sswitch_27
    const/16 v0, 0x3e

    .line 2621
    goto/16 :goto_0

    .line 2623
    :sswitch_28
    const/16 v0, 0x14

    .line 2624
    goto/16 :goto_0

    .line 2626
    :sswitch_29
    const/16 v0, 0x29

    .line 2627
    goto/16 :goto_0

    .line 2629
    :sswitch_2a
    const/16 v0, 0x15

    .line 2630
    goto/16 :goto_0

    .line 2634
    :sswitch_2b
    const/16 v0, 0x16

    .line 2635
    goto/16 :goto_0

    .line 2637
    :sswitch_2c
    const/16 v0, 0x18

    .line 2638
    goto/16 :goto_0

    .line 2640
    :sswitch_2d
    const/16 v0, 0x19

    .line 2641
    goto/16 :goto_0

    .line 2643
    :sswitch_2e
    const/16 v0, 0x80

    .line 2644
    goto/16 :goto_0

    .line 2646
    :sswitch_2f
    const/16 v0, 0x1b

    .line 2647
    goto/16 :goto_0

    .line 2649
    :sswitch_30
    const/16 v0, 0x24

    .line 2650
    goto/16 :goto_0

    .line 2654
    :sswitch_31
    const/16 v0, 0xa

    .line 2655
    goto/16 :goto_0

    .line 2657
    :sswitch_32
    const/16 v0, 0x1d

    .line 2658
    goto/16 :goto_0

    .line 2660
    :sswitch_33
    const/16 v0, 0x1e

    .line 2661
    goto/16 :goto_0

    .line 2663
    :sswitch_34
    const/16 v0, 0x1f

    .line 2664
    goto/16 :goto_0

    .line 2666
    :sswitch_35
    const/16 v0, 0x22

    .line 2667
    goto/16 :goto_0

    .line 2669
    :sswitch_36
    const/16 v0, 0x20

    .line 2670
    goto/16 :goto_0

    .line 2672
    :sswitch_37
    const/16 v0, 0x2a

    .line 2673
    goto/16 :goto_0

    .line 2675
    :sswitch_38
    const/4 v0, 0x3

    .line 2676
    goto/16 :goto_0

    .line 2678
    :sswitch_39
    const/16 v0, 0x55

    .line 2679
    goto/16 :goto_0

    .line 2681
    :sswitch_3a
    const/16 v0, 0x2d

    .line 2682
    goto/16 :goto_0

    .line 2684
    :sswitch_3b
    const/16 v0, 0x2f

    .line 2685
    goto/16 :goto_0

    .line 2687
    :sswitch_3c
    const/16 v0, 0x54

    .line 2688
    goto/16 :goto_0

    .line 2690
    :sswitch_3d
    const/16 v0, 0x1c

    .line 2691
    goto/16 :goto_0

    .line 2495
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
        0x6b6e0000 -> :sswitch_4
        0x6b6f0000 -> :sswitch_24
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
    .line 4071
    const/4 v8, 0x1

    .line 4072
    .local v8, "wStatus":S
    const/16 v9, 0x20

    new-array v3, v9, [S

    .line 4073
    .local v3, "multiTapSequence":[S
    const/4 v9, 0x1

    new-array v6, v9, [S

    .line 4074
    .local v6, "totalSymbols":[S
    const/4 v9, 0x1

    new-array v0, v9, [B

    .line 4075
    .local v0, "currentSymbol":[B
    const/4 v9, 0x1

    new-array v5, v9, [S

    .line 4076
    .local v5, "sFunctionKey":[S
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4077
    .local v4, "multiTapStr":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v7

    .line 4079
    .local v7, "wKeytoMapVal":I
    const/16 v9, 0x80

    if-ne v7, v9, :cond_1

    .line 4104
    :cond_0
    :goto_0
    return-object v4

    .line 4083
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    .line 4084
    .local v2, "isPredictionOn":Z
    if-eqz v2, :cond_2

    .line 4085
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    .line 4087
    :cond_2
    int-to-short v9, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v8

    .line 4089
    if-eqz v8, :cond_3

    .line 4090
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

    .line 4093
    :cond_3
    const/16 v9, 0x20

    invoke-static {v3, v9, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    .line 4095
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    .line 4096
    if-eqz v2, :cond_4

    .line 4097
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    .line 4099
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v9, 0x0

    aget-short v9, v6, v9

    if-ge v1, v9, :cond_0

    array-length v9, v3

    if-ge v1, v9, :cond_0

    .line 4100
    aget-short v9, v3, v1

    const/16 v10, 0x30

    if-lt v9, v10, :cond_5

    aget-short v9, v3, v1

    const/16 v10, 0x39

    if-le v9, v10, :cond_6

    .line 4101
    :cond_5
    aget-short v9, v3, v1

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4099
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
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

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2757
    const/4 v1, 0x0

    .line 2759
    .local v1, "retCode":I
    new-array v0, v6, [S

    .line 2760
    .local v0, "pwWordCount":[S
    new-array v2, v6, [S

    .line 2762
    .local v2, "wordLen":[S
    if-eqz p2, :cond_3

    .line 2763
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMGetWordCount([S)S

    move-result v4

    if-nez v4, :cond_1

    .line 2764
    :cond_0
    :goto_0
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    invoke-static {v3, v7, v2, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMGetWord([CS[SB)S

    move-result v3

    if-nez v3, :cond_2

    .line 2765
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2766
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2787
    .end local v1    # "retCode":I
    :cond_2
    :goto_1
    return v1

    .line 2775
    .restart local v1    # "retCode":I
    :cond_3
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetWordCount([S)S

    move-result v4

    if-nez v4, :cond_5

    .line 2776
    :cond_4
    :goto_2
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    invoke-static {v3, v7, v2, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetWord([CS[SB)S

    move-result v3

    if-nez v3, :cond_2

    .line 2777
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2778
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v1, v3

    .line 2783
    goto :goto_1
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
    .line 2432
    .local p1, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2433
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefixCount()B

    move-result v3

    .line 2434
    .local v3, "prefixCount":B
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    .line 2435
    .local v0, "cpSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 2436
    int-to-short v6, v1

    invoke-static {v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefix(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v5

    .line 2437
    .local v5, "wStatus":S
    if-nez v5, :cond_1

    .line 2438
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0xe0

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2439
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-byte v6, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v2, v6, :cond_0

    .line 2440
    iget-object v6, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v6, v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2442
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2435
    .end local v2    # "j":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2445
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
    .line 2719
    .local p2, "predictList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    .line 2720
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getSuggestion(Ljava/util/ArrayList;)I

    .line 2721
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;)I
    .locals 1
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
    .line 2168
    .local p1, "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 6
    .param p2, "value"    # Z
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
    const/4 v5, 0x0

    .line 2195
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    .line 2196
    .local v1, "isPredictionOn":Z
    if-nez v1, :cond_0

    iget-short v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0xe1

    if-eq v3, v4, :cond_0

    .line 2231
    :goto_0
    return v5

    .line 2200
    :cond_0
    if-nez p1, :cond_1

    .line 2201
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2203
    .restart local p1    # "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 2206
    .local v2, "totalWordsCount":I
    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    .line 2207
    const/16 v2, 0x1e

    .line 2212
    :cond_2
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setXt9AutoReplacementCondition(Z)V

    .line 2213
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    .line 2214
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    .line 2216
    if-lez v2, :cond_3

    .line 2217
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2219
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2220
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v3, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2227
    .end local v0    # "i":I
    :cond_3
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    .line 2228
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    .line 2229
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    goto :goto_0
.end method

.method getWrappingWordFromContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "beforeBuffer"    # Ljava/lang/StringBuilder;
    .param p2, "afterBuffer"    # Ljava/lang/StringBuilder;
    .param p3, "preWordLen"    # [I

    .prologue
    const/4 v4, 0x0

    .line 3934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3936
    .local v2, "wrappingWord":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3937
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "lastIndexOfSpecialChar":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3938
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkXT9WordWrappingRule(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3942
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    aput v3, p3, v4

    .line 3946
    .end local v1    # "lastIndexOfSpecialChar":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3947
    const/4 v0, 0x0

    .local v0, "firstIndexOfSpecialChar":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3948
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkXT9WordWrappingRule(C)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3952
    :cond_2
    invoke-virtual {p2, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3955
    .end local v0    # "firstIndexOfSpecialChar":I
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3956
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    .line 3958
    return-object v2

    .line 3937
    .restart local v1    # "lastIndexOfSpecialChar":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3947
    .end local v1    # "lastIndexOfSpecialChar":I
    .restart local v0    # "firstIndexOfSpecialChar":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getXt9AutoReplacementCondition()Z
    .locals 1

    .prologue
    .line 4231
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mXt9AutoReplacementCondition:Z

    return v0
.end method

.method public getXt9LanguageId(I)I
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 3715
    const/4 v1, 0x0

    .line 3716
    .local v1, "primaryID":I
    const/16 v4, 0x100

    .line 3717
    .local v4, "secondaryID":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 3718
    .local v3, "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3719
    .local v0, "locale":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3720
    .local v2, "result":I
    sparse-switch p1, :sswitch_data_0

    .line 3922
    const/16 v1, 0x9

    .line 3925
    :goto_0
    add-int v2, v4, v1

    .line 3927
    const/16 v5, 0x1e1

    if-ne v2, v5, :cond_0

    .line 3928
    add-int/lit16 v2, v2, -0x100

    .line 3930
    :cond_0
    return v2

    .line 3722
    :sswitch_0
    const/4 v1, 0x1

    .line 3723
    goto :goto_0

    .line 3725
    :sswitch_1
    const/16 v1, 0x39

    .line 3726
    goto :goto_0

    .line 3728
    :sswitch_2
    const/16 v1, 0x4b

    .line 3729
    goto :goto_0

    .line 3731
    :sswitch_3
    const/16 v1, 0x57

    .line 3732
    goto :goto_0

    .line 3734
    :sswitch_4
    const/16 v1, 0x63

    .line 3735
    goto :goto_0

    .line 3737
    :sswitch_5
    const/16 v1, 0x6a

    .line 3738
    goto :goto_0

    .line 3740
    :sswitch_6
    const/16 v1, 0x6d

    .line 3741
    goto :goto_0

    .line 3743
    :sswitch_7
    const/16 v1, 0x74

    .line 3744
    goto :goto_0

    .line 3746
    :sswitch_8
    const/16 v1, 0x7c

    .line 3747
    goto :goto_0

    .line 3749
    :sswitch_9
    const/16 v1, 0x85

    .line 3750
    goto :goto_0

    .line 3752
    :sswitch_a
    const/16 v1, 0x84

    .line 3753
    goto :goto_0

    .line 3755
    :sswitch_b
    const/16 v1, 0x5a

    .line 3756
    goto :goto_0

    .line 3758
    :sswitch_c
    const/16 v1, 0x47

    .line 3759
    goto :goto_0

    .line 3761
    :sswitch_d
    const/4 v1, 0x2

    .line 3762
    goto :goto_0

    .line 3764
    :sswitch_e
    const/16 v1, 0xe2

    .line 3765
    goto :goto_0

    .line 3767
    :sswitch_f
    const/16 v1, 0xe1

    .line 3768
    goto :goto_0

    .line 3770
    :sswitch_10
    const/16 v1, 0xe0

    .line 3771
    goto :goto_0

    .line 3773
    :sswitch_11
    const/16 v1, 0x59

    .line 3774
    goto :goto_0

    .line 3776
    :sswitch_12
    const/4 v1, 0x5

    .line 3777
    goto :goto_0

    .line 3779
    :sswitch_13
    const/4 v1, 0x6

    .line 3780
    goto :goto_0

    .line 3782
    :sswitch_14
    const-string v5, "nl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3783
    const/16 v1, 0xc

    goto :goto_0

    .line 3785
    :cond_1
    const/16 v1, 0x13

    .line 3787
    goto :goto_0

    .line 3789
    :sswitch_15
    const/16 v1, 0x9

    .line 3790
    const/16 v4, 0x800

    .line 3791
    goto :goto_0

    .line 3793
    :sswitch_16
    const/16 v1, 0x9

    .line 3794
    goto :goto_0

    .line 3796
    :sswitch_17
    const/16 v1, 0x25

    .line 3797
    goto :goto_0

    .line 3799
    :sswitch_18
    const/16 v1, 0xb

    .line 3800
    goto :goto_0

    .line 3803
    :sswitch_19
    const/16 v1, 0xc

    .line 3804
    goto :goto_0

    .line 3806
    :sswitch_1a
    const/16 v1, 0xc

    .line 3807
    const/16 v4, 0xc00

    .line 3808
    goto :goto_0

    .line 3810
    :sswitch_1b
    const/16 v1, 0x60

    .line 3811
    goto :goto_0

    .line 3813
    :sswitch_1c
    const/4 v1, 0x7

    .line 3814
    goto :goto_0

    .line 3816
    :sswitch_1d
    const/16 v1, 0x8

    .line 3817
    goto :goto_0

    .line 3819
    :sswitch_1e
    const/16 v1, 0xd

    .line 3820
    goto :goto_0

    .line 3822
    :sswitch_1f
    const/16 v1, 0xe

    .line 3823
    goto :goto_0

    .line 3825
    :sswitch_20
    const/16 v1, 0xf

    .line 3826
    goto :goto_0

    .line 3828
    :sswitch_21
    const/16 v1, 0x21

    .line 3829
    goto :goto_0

    .line 3831
    :sswitch_22
    const/16 v1, 0x10

    .line 3832
    goto/16 :goto_0

    .line 3834
    :sswitch_23
    const/16 v1, 0x11

    .line 3835
    goto/16 :goto_0

    .line 3837
    :sswitch_24
    const/16 v1, 0x61

    .line 3838
    goto/16 :goto_0

    .line 3840
    :sswitch_25
    const/16 v1, 0x12

    .line 3841
    goto/16 :goto_0

    .line 3843
    :sswitch_26
    const/16 v1, 0x26

    .line 3844
    goto/16 :goto_0

    .line 3846
    :sswitch_27
    const/16 v1, 0x27

    .line 3847
    goto/16 :goto_0

    .line 3849
    :sswitch_28
    const/16 v1, 0x3e

    .line 3850
    goto/16 :goto_0

    .line 3852
    :sswitch_29
    const/16 v1, 0x14

    .line 3853
    goto/16 :goto_0

    .line 3855
    :sswitch_2a
    const/16 v1, 0x29

    .line 3856
    goto/16 :goto_0

    .line 3858
    :sswitch_2b
    const/16 v1, 0x15

    .line 3859
    goto/16 :goto_0

    .line 3863
    :sswitch_2c
    const/16 v1, 0x16

    .line 3864
    goto/16 :goto_0

    .line 3866
    :sswitch_2d
    const/16 v1, 0x18

    .line 3867
    goto/16 :goto_0

    .line 3869
    :sswitch_2e
    const/16 v1, 0x19

    .line 3870
    goto/16 :goto_0

    .line 3872
    :sswitch_2f
    const/16 v1, 0x80

    .line 3873
    goto/16 :goto_0

    .line 3875
    :sswitch_30
    const/16 v1, 0x1b

    .line 3876
    goto/16 :goto_0

    .line 3878
    :sswitch_31
    const/16 v1, 0x24

    .line 3879
    goto/16 :goto_0

    .line 3883
    :sswitch_32
    const/16 v1, 0xa

    .line 3884
    goto/16 :goto_0

    .line 3886
    :sswitch_33
    const/16 v1, 0x1d

    .line 3887
    goto/16 :goto_0

    .line 3889
    :sswitch_34
    const/16 v1, 0x1e

    .line 3890
    goto/16 :goto_0

    .line 3892
    :sswitch_35
    const/16 v1, 0x1f

    .line 3893
    goto/16 :goto_0

    .line 3895
    :sswitch_36
    const/16 v1, 0x22

    .line 3896
    goto/16 :goto_0

    .line 3898
    :sswitch_37
    const/16 v1, 0x20

    .line 3899
    goto/16 :goto_0

    .line 3901
    :sswitch_38
    const/16 v1, 0x2a

    .line 3902
    goto/16 :goto_0

    .line 3904
    :sswitch_39
    const/4 v1, 0x3

    .line 3905
    goto/16 :goto_0

    .line 3907
    :sswitch_3a
    const/16 v1, 0x55

    .line 3908
    goto/16 :goto_0

    .line 3910
    :sswitch_3b
    const/16 v1, 0x2d

    .line 3911
    goto/16 :goto_0

    .line 3913
    :sswitch_3c
    const/16 v1, 0x2f

    .line 3914
    goto/16 :goto_0

    .line 3916
    :sswitch_3d
    const/16 v1, 0x54

    .line 3917
    goto/16 :goto_0

    .line 3919
    :sswitch_3e
    const/16 v1, 0x1c

    .line 3920
    goto/16 :goto_0

    .line 3720
    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x617a0000 -> :sswitch_c
        0x62670000 -> :sswitch_d
        0x626e0000 -> :sswitch_2
        0x63610000 -> :sswitch_39
        0x63730000 -> :sswitch_12
        0x64610000 -> :sswitch_13
        0x64650000 -> :sswitch_1c
        0x656c0000 -> :sswitch_1d
        0x656e4742 -> :sswitch_15
        0x656e5553 -> :sswitch_16
        0x65730000 -> :sswitch_32
        0x65734553 -> :sswitch_32
        0x65735553 -> :sswitch_32
        0x65740000 -> :sswitch_17
        0x65750000 -> :sswitch_3b
        0x66610000 -> :sswitch_2a
        0x66690000 -> :sswitch_18
        0x66720000 -> :sswitch_19
        0x66724341 -> :sswitch_1a
        0x66724652 -> :sswitch_19
        0x67610000 -> :sswitch_3d
        0x676c0000 -> :sswitch_3a
        0x67750000 -> :sswitch_3
        0x68690000 -> :sswitch_1
        0x68720000 -> :sswitch_11
        0x68750000 -> :sswitch_1f
        0x68790000 -> :sswitch_b
        0x69640000 -> :sswitch_21
        0x69730000 -> :sswitch_20
        0x69740000 -> :sswitch_22
        0x69770000 -> :sswitch_1e
        0x6a610000 -> :sswitch_23
        0x6b610000 -> :sswitch_1b
        0x6b6b0000 -> :sswitch_24
        0x6b6e0000 -> :sswitch_4
        0x6b6f0000 -> :sswitch_25
        0x6c740000 -> :sswitch_27
        0x6c760000 -> :sswitch_26
        0x6d6b0000 -> :sswitch_3c
        0x6d6c0000 -> :sswitch_5
        0x6d720000 -> :sswitch_6
        0x6d730000 -> :sswitch_28
        0x6e620000 -> :sswitch_29
        0x6e6c0000 -> :sswitch_14
        0x70610000 -> :sswitch_7
        0x706c0000 -> :sswitch_2b
        0x70740000 -> :sswitch_2c
        0x70744252 -> :sswitch_2c
        0x70745054 -> :sswitch_2c
        0x726f0000 -> :sswitch_2d
        0x72750000 -> :sswitch_2e
        0x73690000 -> :sswitch_8
        0x736b0000 -> :sswitch_30
        0x736c0000 -> :sswitch_31
        0x73710000 -> :sswitch_3e
        0x73720000 -> :sswitch_2f
        0x73760000 -> :sswitch_33
        0x74610000 -> :sswitch_a
        0x74650000 -> :sswitch_9
        0x74680000 -> :sswitch_34
        0x74720000 -> :sswitch_35
        0x756b0000 -> :sswitch_36
        0x75720000 -> :sswitch_37
        0x76690000 -> :sswitch_38
        0x7a68434e -> :sswitch_f
        0x7a68484b -> :sswitch_e
        0x7a685457 -> :sswitch_10
    .end sparse-switch
.end method

.method public getXt9Version()I
    .locals 9

    .prologue
    .line 354
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-eqz v6, :cond_0

    .line 355
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    .line 375
    :goto_0
    return v6

    .line 358
    :cond_0
    const/16 v3, 0x64

    .line 359
    .local v3, "wBufMaxSize":S
    new-array v1, v3, [S

    .line 360
    .local v1, "psCodeVerBuf":[S
    new-array v2, v3, [S

    .line 361
    .local v2, "pwBufSize":[S
    const-string v5, ""

    .line 362
    .local v5, "xt9Version":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version([SS[S)S

    move-result v4

    .line 363
    .local v4, "wStatus":S
    if-eqz v4, :cond_1

    .line 364
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

    .line 365
    const/4 v6, -0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v6, 0x14

    if-ge v0, v6, :cond_2

    .line 368
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

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_2
    const-string v6, "XT9 V09.06"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 371
    const/4 v6, 0x2

    goto :goto_0

    .line 372
    :cond_3
    const-string v6, "XT9 V09"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 373
    const/4 v6, 0x1

    goto :goto_0

    .line 375
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
    .line 3510
    invoke-static {p1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9GetCodeVersion([SS[S)S

    move-result v0

    return v0
.end method

.method public hasInputSequence()Z
    .locals 2

    .prologue
    .line 3558
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9GetExactWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S

    move-result v0

    .line 3559
    .local v0, "wStatus":S
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v1, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    if-lez v1, :cond_0

    .line 3561
    const/4 v1, 0x1

    .line 3563
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, -0x1

    const/4 v5, 0x1

    .line 284
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v2, :cond_0

    .line 285
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    .line 290
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Xt994 init mXt9Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-ne v2, v1, :cond_1

    .line 293
    const-string v2, "SamsungIME"

    const-string v3, "getXt9Version error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 297
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-eq v2, v6, :cond_2

    .line 347
    :goto_0
    return v1

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, p0}, Lcom/diotek/ime/framework/common/InputManager;->setXt9DBController(Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;)V

    .line 302
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    .line 303
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getLanguageIDForEngine(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    .line 306
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsDisableAutoCorrection:Z

    .line 312
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInitialized:Z

    if-nez v1, :cond_7

    .line 313
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9MakeLdbList()S

    .line 314
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SmartTouchGetDataSize()S

    move-result v1

    sput v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    .line 315
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    if-nez v1, :cond_3

    .line 316
    sget v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    new-array v1, v1, [B

    sput-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    .line 318
    :cond_3
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    if-nez v1, :cond_4

    .line 319
    const/16 v1, 0x2800

    new-array v1, v1, [B

    sput-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    .line 323
    :cond_4
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    .line 325
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    .line 326
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    .line 327
    sget v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    if-nez v1, :cond_5

    .line 328
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetDataSize()I

    move-result v1

    sput v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    .line 329
    const/4 v1, 0x0

    sput-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 330
    sget v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v1, v1, [B

    sput-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 332
    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLinguistic()V

    .line 333
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKDB()V

    .line 334
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInitialized:Z

    .line 339
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    .line 340
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    .line 342
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 344
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsVZW:Z

    .line 347
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 336
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initSubLinguistic()V

    goto :goto_1
.end method

.method public initDLM()S
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 766
    const/4 v1, 0x0

    .line 767
    .local v1, "wStatus":S
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "XT9_DLM_ENABLE"

    invoke-interface {v3, v4, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 769
    .local v0, "isDLMEnable":Z
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v3

    if-nez v3, :cond_5

    .line 770
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v4, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v1

    .line 771
    if-ne v1, v6, :cond_0

    .line 772
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetDataSize()I

    move-result v3

    sput v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    .line 773
    sput-object v9, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 774
    sget v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v3, v3, [B

    sput-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 775
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 776
    const/4 v1, 0x0

    .line 778
    :cond_0
    if-eqz v1, :cond_1

    .line 779
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9AWDLMInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_1
    sget-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v4, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMInit([BI)S

    move-result v1

    .line 782
    if-ne v1, v6, :cond_2

    .line 783
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMGetDataSize()I

    move-result v3

    sput v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    .line 784
    sput-object v9, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 785
    sget v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v3, v3, [B

    sput-object v3, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 786
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 787
    const/4 v1, 0x0

    .line 789
    :cond_2
    if-eqz v1, :cond_3

    .line 790
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KDLMInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 809
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v1

    .line 810
    if-eqz v1, :cond_4

    .line 811
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUDBDelayedReorder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    move v2, v1

    .line 821
    .end local v1    # "wStatus":S
    .local v2, "wStatus":I
    :goto_1
    return v2

    .end local v2    # "wStatus":I
    .restart local v1    # "wStatus":S
    :cond_5
    move v2, v1

    .line 805
    .restart local v2    # "wStatus":I
    goto :goto_1

    .line 815
    .end local v2    # "wStatus":I
    :cond_6
    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v1

    .line 816
    if-eqz v1, :cond_4

    .line 817
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUDBDelayedReorder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initSmartTouch()S
    .locals 4

    .prologue
    .line 825
    const/4 v0, 0x0

    .line 827
    .local v0, "wStatus":S
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    sget v2, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SmartTouchInit([BI)S

    move-result v0

    .line 828
    if-eqz v0, :cond_0

    .line 829
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9SmartTouchInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    return v0
.end method

.method public inputCharSequence(Ljava/lang/CharSequence;)I
    .locals 27
    .param p1, "wrappingWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "SETTINGS_DEFAULT_RECAPTURE"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v19

    .line 3007
    .local v19, "isRecaptureOn":Z
    const/16 v22, 0x0

    .line 3008
    .local v22, "wStatus":S
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    .line 3010
    if-eqz v19, :cond_9

    .line 3011
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v3

    .line 3012
    .local v3, "bufferText":[C
    const/16 v16, 0x1

    .line 3014
    .local v16, "buildFlag":Z
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    .line 3016
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    move/from16 v24, v0

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3017
    array-length v0, v3

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS)S

    move-result v22

    .line 3018
    if-eqz v22, :cond_8

    .line 3019
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    move/from16 v23, v22

    .line 3093
    .end local v3    # "bufferText":[C
    .end local v16    # "buildFlag":Z
    .end local v22    # "wStatus":S
    .local v23, "wStatus":S
    :goto_0
    return v23

    .line 3023
    .end local v23    # "wStatus":S
    .restart local v3    # "bufferText":[C
    .restart local v16    # "buildFlag":Z
    .restart local v22    # "wStatus":S
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 3024
    .local v21, "selectedText":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3025
    .local v15, "beforeContextBuffer":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3026
    .local v14, "aftercontextBuffer":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 3028
    .local v17, "contextBuffer":Ljava/lang/StringBuilder;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v9, v0, [B

    .line 3029
    .local v9, "bTotalWords":[B
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v10, v0, [B

    .line 3030
    .local v10, "bDefaultListIndex":[B
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v11, v0, [B

    .line 3031
    .local v11, "bSuggestedListIndex":[B
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v12, v0, [B

    .line 3032
    .local v12, "bSelectedWasAutomatic":[B
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v13, v0, [B

    .line 3034
    .local v13, "bWasFoundInHistory":[B
    const-wide/16 v4, 0x0

    .line 3035
    .local v4, "dwBufLen":J
    const-wide/16 v6, 0x0

    .line 3036
    .local v6, "dwWordStart":J
    const/4 v8, 0x0

    .line 3037
    .local v8, "wWordLen":S
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 3040
    .local v20, "posPrevText":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v18

    .line 3041
    .local v18, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v18, :cond_5

    .line 3042
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3043
    const-string v24, "null"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 3044
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3046
    :cond_1
    const/16 v24, 0x40

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3047
    const-string v24, "null"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 3048
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3050
    :cond_2
    const/16 v24, 0x40

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3051
    const-string v24, "null"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 3052
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3055
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3056
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_4

    .line 3057
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3059
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3061
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v3

    .line 3062
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v4, v0

    .line 3063
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v14, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getWrappingWordFromContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-short v8, v0

    .line 3064
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    const/16 v25, 0x0

    aget v25, v20, v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v6, v0

    .line 3065
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_5

    .line 3066
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-short v8, v0

    .line 3067
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v6, v0

    .line 3071
    :cond_5
    invoke-static/range {v3 .. v13}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSmartReselect([CJJS[B[B[B[B[B)S

    move-result v22

    .line 3072
    if-eqz v22, :cond_6

    move/from16 v23, v22

    .line 3073
    .end local v22    # "wStatus":S
    .restart local v23    # "wStatus":S
    goto/16 :goto_0

    .line 3076
    .end local v23    # "wStatus":S
    .restart local v22    # "wStatus":S
    :cond_6
    const/16 v24, 0x0

    aget-byte v24, v13, v24

    if-eqz v24, :cond_7

    .line 3077
    const/16 v16, 0x0

    .line 3079
    :cond_7
    const/16 v24, 0x0

    aget-byte v24, v9, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 3080
    const/16 v24, 0x0

    aget-byte v24, v11, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 3083
    .end local v4    # "dwBufLen":J
    .end local v6    # "dwWordStart":J
    .end local v8    # "wWordLen":S
    .end local v9    # "bTotalWords":[B
    .end local v10    # "bDefaultListIndex":[B
    .end local v11    # "bSuggestedListIndex":[B
    .end local v12    # "bSelectedWasAutomatic":[B
    .end local v13    # "bWasFoundInHistory":[B
    .end local v14    # "aftercontextBuffer":Ljava/lang/StringBuilder;
    .end local v15    # "beforeContextBuffer":Ljava/lang/StringBuilder;
    .end local v17    # "contextBuffer":Ljava/lang/StringBuilder;
    .end local v18    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v20    # "posPrevText":[I
    .end local v21    # "selectedText":Ljava/lang/StringBuilder;
    :cond_8
    if-eqz v16, :cond_9

    .line 3084
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    .line 3085
    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(ZZ)I

    .line 3086
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    .line 3087
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    .line 3088
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    .line 3092
    .end local v3    # "bufferText":[C
    .end local v16    # "buildFlag":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    move/from16 v23, v22

    .line 3093
    .end local v22    # "wStatus":S
    .restart local v23    # "wStatus":S
    goto/16 :goto_0
.end method

.method public inputKey(I)I
    .locals 11
    .param p1, "code"    # I

    .prologue
    const/16 v10, 0xe1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1221
    const/4 v4, 0x0

    .line 1222
    .local v4, "wStatus":S
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    .line 1223
    .local v2, "strokeModeOn":Z
    const/4 v7, -0x5

    if-ne p1, v7, :cond_4

    .line 1224
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v10, :cond_2

    .line 1225
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPUnselectPhrase()S

    move-result v4

    .line 1226
    const/16 v7, 0x18

    if-ne v4, v7, :cond_3

    .line 1227
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v4

    .line 1228
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 1229
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9ClearOneSymb : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPClearContext()S

    move-result v4

    .line 1232
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v7

    if-ge v7, v6, :cond_3

    .line 1233
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 1277
    :cond_1
    :goto_0
    return v5

    .line 1238
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v4

    .line 1239
    const/4 v7, 0x6

    if-eq v4, v7, :cond_1

    .line 1242
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 1243
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9ClearOneSymb : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v7

    if-ge v7, v6, :cond_6

    .line 1248
    iget-short v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v6, v10, :cond_1

    .line 1249
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    goto :goto_0

    .line 1254
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isInputNumberOnComposing()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    move v1, v6

    .line 1255
    .local v1, "isNumberText":Z
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1256
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    .line 1270
    .end local v1    # "isNumberText":Z
    :cond_6
    :goto_2
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v10, :cond_d

    .line 1271
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v5

    goto :goto_0

    :cond_7
    move v1, v5

    .line 1254
    goto :goto_1

    .line 1257
    .restart local v1    # "isNumberText":Z
    :cond_8
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v10, :cond_9

    if-eqz v2, :cond_9

    .line 1258
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v3

    .line 1259
    .local v3, "wKeytoMapVal":I
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_2

    .line 1260
    .end local v3    # "wKeytoMapVal":I
    :cond_9
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-eq v7, v6, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v7

    if-eq v7, v6, :cond_b

    if-eqz v1, :cond_c

    .line 1262
    :cond_b
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_2

    .line 1264
    :cond_c
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processKey(I)S

    move-result v4

    .line 1265
    if-eqz v4, :cond_6

    .line 1266
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_2

    .line 1273
    .end local v1    # "isNumberText":Z
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    .line 1274
    .local v0, "count":S
    if-lez v0, :cond_1

    move v5, v6

    .line 1275
    goto/16 :goto_0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 11
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/16 v10, 0xe1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3413
    const/4 v4, 0x0

    .line 3414
    .local v4, "wStatus":S
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    .line 3415
    .local v2, "strokeModeOn":Z
    const/4 v7, -0x5

    if-ne p1, v7, :cond_4

    .line 3416
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v10, :cond_3

    .line 3417
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPUnselectPhrase()S

    move-result v4

    .line 3418
    const/16 v7, 0x18

    if-ne v4, v7, :cond_1

    .line 3419
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v4

    .line 3420
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 3421
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9ClearOneSymb : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPClearContext()S

    move-result v4

    .line 3434
    :cond_1
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v7

    if-ge v7, v6, :cond_6

    .line 3474
    :cond_2
    :goto_1
    return v5

    .line 3426
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v4

    .line 3427
    const/4 v7, 0x6

    if-eq v4, v7, :cond_2

    .line 3430
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 3431
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9ClearOneSymb : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3438
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isInputNumberOnComposing()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_5
    move v1, v6

    .line 3439
    .local v1, "isNumberText":Z
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3440
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    .line 3465
    .end local v1    # "isNumberText":Z
    :cond_6
    :goto_3
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v7, v10, :cond_7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-eq v7, v6, :cond_7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3468
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v5

    goto :goto_1

    :cond_8
    move v1, v5

    .line 3438
    goto :goto_2

    .line 3441
    .restart local v1    # "isNumberText":Z
    :cond_9
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v10, :cond_a

    if-eqz v2, :cond_a

    .line 3442
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v3

    .line 3443
    .local v3, "wKeytoMapVal":I
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_3

    .line 3444
    .end local v3    # "wKeytoMapVal":I
    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-eq v7, v6, :cond_b

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v7

    if-eq v7, v6, :cond_c

    if-eqz v1, :cond_d

    .line 3446
    :cond_c
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_3

    .line 3447
    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v7

    if-nez v7, :cond_f

    .line 3448
    if-nez p2, :cond_e

    .line 3449
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processKey(I)S

    move-result v4

    .line 3455
    :goto_4
    if-eqz v4, :cond_6

    .line 3456
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_3

    .line 3452
    :cond_e
    iget v7, p2, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v7, v8}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processTap(IFF)S

    move-result v4

    goto :goto_4

    .line 3459
    :cond_f
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processKey(I)S

    move-result v4

    .line 3460
    if-eqz v4, :cond_6

    .line 3461
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_3

    .line 3470
    .end local v1    # "isNumberText":Z
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    .line 3471
    .local v0, "count":S
    if-lez v0, :cond_2

    move v5, v6

    .line 3472
    goto/16 :goto_1
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 7
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "pbAddSpace"    # [Z

    .prologue
    .line 3313
    if-nez p1, :cond_0

    .line 3314
    const/4 v2, 0x0

    .line 3326
    :goto_0
    return v2

    .line 3316
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    .line 3317
    .local v1, "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 3318
    if-eqz p1, :cond_1

    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 3320
    :cond_1
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 3317
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3322
    :cond_2
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

    .line 3326
    :cond_3
    invoke-static {v1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ShouldAutoAcceptBeforeTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 10
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 3977
    monitor-enter p0

    const/4 v8, 0x0

    .line 3979
    .local v8, "wStatus":I
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [B

    .line 3980
    .local v3, "pbTotalWords":[B
    const/4 v2, 0x1

    new-array v4, v2, [S

    .line 3981
    .local v4, "ppsWord":[S
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [S

    .line 3982
    .local v0, "psBegBuf":[S
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 3983
    .local v1, "psBuf":[S
    const/4 v2, 0x1

    new-array v5, v2, [S

    .line 3984
    .local v5, "ppsString":[S
    const/4 v2, 0x1

    new-array v6, v2, [S

    .line 3986
    .local v6, "pwStringLen":[S
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 3987
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v7

    aput-short v2, v1, v7

    .line 3986
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3990
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextSpellCorrection([S[SS[B[S[S[S)S

    move-result v8

    .line 3992
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    .line 3994
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3996
    const/4 v2, 0x4

    if-ne v8, v2, :cond_1

    move v2, v9

    .line 4000
    :goto_1
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 3977
    .end local v0    # "psBegBuf":[S
    .end local v1    # "psBuf":[S
    .end local v3    # "pbTotalWords":[B
    .end local v4    # "ppsWord":[S
    .end local v5    # "ppsString":[S
    .end local v6    # "pwStringLen":[S
    .end local v7    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I
    .locals 7
    .param p1, "shortcut"    # [S
    .param p2, "outSubstitution"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 2941
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoSubstitution(Z)V

    .line 2942
    const/4 v0, 0x0

    .line 2943
    .local v0, "retCode":I
    new-array v2, v6, [S

    .line 2944
    .local v2, "substitutionBuf":[S
    const/4 v4, 0x2

    new-array v3, v4, [S

    .line 2945
    .local v3, "substitutionLengthBuf":[S
    array-length v4, p1

    int-to-short v4, v4

    invoke-static {p1, v4, v2, v6, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    .line 2947
    if-nez v0, :cond_1

    .line 2948
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2949
    aget-short v4, v3, v5

    invoke-virtual {p0, v2, v4}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2951
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2952
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    .line 2953
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    move v1, v0

    .line 2966
    .end local v0    # "retCode":I
    .local v1, "retCode":I
    :goto_0
    return v1

    .line 2956
    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_0
    array-length v4, p1

    int-to-short v4, v4

    invoke-static {p1, v4, v2, v6, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    .line 2959
    if-nez v0, :cond_1

    .line 2960
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2961
    aget-short v4, v3, v5

    invoke-virtual {p0, v2, v4}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v0

    .line 2966
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0
.end method

.method public isExistInMyWords([SZ)I
    .locals 4
    .param p1, "myword"    # [S
    .param p2, "isKorean"    # Z

    .prologue
    .line 2826
    const/4 v0, 0x0

    .line 2828
    .local v0, "retCode":I
    array-length v3, p1

    invoke-virtual {p0, p1, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2829
    .local v1, "tempword":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v2

    .line 2831
    .local v2, "word":[C
    if-eqz p2, :cond_0

    .line 2832
    array-length v3, p1

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMFindWord([CS)S

    move-result v0

    .line 2837
    :goto_0
    return v0

    .line 2834
    :cond_0
    array-length v3, p1

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMFindWord([CS)S

    move-result v0

    goto :goto_0
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2402
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 2403
    const/4 v0, 0x1

    .line 2405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 4131
    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 4132
    int-to-short v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWShouldRemoveSpaceBeforeWord(SZ)Z

    move-result v0

    .line 4135
    :goto_0
    return v0

    :cond_0
    int-to-short v0, p1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWShouldRemoveSpaceBeforeWord(SZ)Z

    move-result v0

    goto :goto_0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4112
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 4125
    :cond_0
    :goto_0
    return v0

    .line 4115
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    .line 4118
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    .line 4121
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 4125
    goto :goto_0
.end method

.method public isTextCharacter(I)Z
    .locals 10
    .param p1, "code"    # I

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x1a

    const v7, 0x7a68434e

    const/16 v6, 0x30

    const/4 v3, 0x1

    .line 2343
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 2344
    .local v1, "range":I
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2345
    .local v0, "inputMethod":I
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    .line 2347
    .local v2, "strokeModeOn":Z
    if-eqz v0, :cond_0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    :cond_0
    if-nez v1, :cond_5

    .line 2349
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_2

    const/16 v4, 0x7b

    if-ne p1, v4, :cond_2

    .line 2397
    :cond_1
    :goto_0
    return v3

    .line 2352
    :cond_2
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_3

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2356
    :cond_3
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v4, v7, :cond_5

    .line 2357
    const/16 v4, 0x61

    if-lt p1, v4, :cond_4

    const/16 v4, 0x7a

    if-le p1, v4, :cond_1

    :cond_4
    if-eq p1, v8, :cond_1

    .line 2362
    :cond_5
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x6b610000

    if-ne v4, v5, :cond_6

    if-eq p1, v3, :cond_1

    .line 2365
    :cond_6
    if-eq v0, v3, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_7
    if-nez v1, :cond_f

    .line 2367
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v4, v7, :cond_9

    if-eqz v2, :cond_9

    .line 2368
    const/16 v4, 0x31

    if-lt p1, v4, :cond_8

    const/16 v4, 0x35

    if-le p1, v4, :cond_1

    :cond_8
    const/16 v4, 0x2a

    if-eq p1, v4, :cond_1

    .line 2370
    const/16 v4, 0x3a

    if-ne p1, v4, :cond_b

    .line 2371
    const/4 v3, 0x0

    goto :goto_0

    .line 2373
    :cond_9
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v4, v7, :cond_b

    .line 2374
    const/16 v4, 0x32

    if-lt p1, v4, :cond_a

    if-le p1, v9, :cond_1

    :cond_a
    if-eq p1, v8, :cond_1

    .line 2378
    :cond_b
    if-le p1, v6, :cond_c

    if-le p1, v9, :cond_1

    .line 2381
    :cond_c
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_d

    if-eq p1, v6, :cond_1

    const/16 v4, -0x3a

    if-eq p1, v4, :cond_1

    .line 2384
    :cond_d
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_e

    if-eq p1, v6, :cond_1

    .line 2388
    :cond_e
    const/16 v4, 0x27

    if-eq p1, v4, :cond_1

    const/16 v4, 0x2d

    if-eq p1, v4, :cond_1

    .line 2393
    :cond_f
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isTreatedAsLetter(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2397
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    goto :goto_0
.end method

.method public isTreatedAsLetter(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 4062
    const-string v0, "\'-#_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4063
    const/4 v0, 0x1

    .line 4066
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ldbUpdate()V
    .locals 0

    .prologue
    .line 3569
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9UpdateLdbList()S

    .line 3570
    return-void
.end method

.method public processTrace([Landroid/graphics/PointF;IB)S
    .locals 11
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "bCurrIndexInList"    # B

    .prologue
    .line 3331
    if-nez p1, :cond_1

    .line 3332
    const/16 v2, 0x1b

    .line 3362
    :cond_0
    :goto_0
    return v2

    .line 3334
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "XT9_GESTURE_GAP"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mGap:I

    .line 3336
    array-length v4, p1

    new-array v3, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    .line 3337
    .local v3, "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    array-length v4, p1

    new-array v1, v4, [J

    .line 3338
    .local v1, "pdwTimeMS":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 3339
    if-eqz p1, :cond_2

    aget-object v4, p1, v0

    if-nez v4, :cond_3

    .line 3341
    :cond_2
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 3338
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3343
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

    iget v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mGap:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v4, v3, v0

    .line 3345
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    goto :goto_2

    .line 3348
    :cond_4
    invoke-static {v3, p2, v1, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[JB)S

    move-result v2

    .line 3349
    .local v2, "retCode":S
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 3350
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    goto :goto_0

    .line 3352
    :cond_5
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 3353
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

    .line 3357
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    .line 3359
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v4

    if-nez v4, :cond_0

    .line 3360
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    goto :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 3276
    const/4 v0, 0x0

    .line 3277
    .local v0, "wStatus":I
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 3278
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v0

    .line 3283
    :goto_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3284
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

    .line 3286
    :cond_0
    return v0

    .line 3281
    :cond_1
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstSelWord(B)S

    move-result v0

    goto :goto_0
.end method

.method public reflashSelectList()I
    .locals 1

    .prologue
    .line 3519
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    .line 3520
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public refreshContextBuffer(Z)I
    .locals 8
    .param p1, "containCurrentWord"    # Z

    .prologue
    const/4 v7, 0x0

    .line 3633
    const/4 v3, 0x0

    .line 3634
    .local v3, "wStatus":S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3635
    .local v0, "contextBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 3636
    .local v4, "wordbufForFillContext":[S
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v5

    if-nez v5, :cond_2

    .line 3637
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3638
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 3639
    const/16 v5, 0x100

    invoke-interface {v1, v5, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3641
    if-nez p1, :cond_0

    .line 3642
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getWordStartIndex(Ljava/lang/CharSequence;)I

    move-result v2

    .line 3643
    .local v2, "startIndex":I
    if-ltz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3

    .line 3644
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3652
    .end local v2    # "startIndex":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v4

    .line 3653
    array-length v5, v4

    if-ltz v5, :cond_1

    if-nez v4, :cond_4

    .line 3654
    :cond_1
    const/4 v3, 0x0

    .line 3666
    :goto_1
    if-eqz v3, :cond_2

    .line 3667
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ET9AWFillContextBuffer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v3

    .line 3645
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "startIndex":I
    :cond_3
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 3646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 3657
    .end local v2    # "startIndex":I
    :cond_4
    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x12

    if-ne v5, v6, :cond_5

    .line 3658
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KFillContextBuffer([SI)S

    move-result v3

    goto :goto_1

    .line 3661
    :cond_5
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWFillContextBuffer([SI)S

    move-result v3

    goto :goto_1
.end method

.method public refreshContextBuffer(ZZ)I
    .locals 8
    .param p1, "containCurrentWord"    # Z
    .param p2, "flag"    # Z

    .prologue
    const/4 v7, 0x0

    .line 3674
    const/4 v3, 0x0

    .line 3675
    .local v3, "wStatus":S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3676
    .local v0, "contextBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 3677
    .local v4, "wordbufForFillContext":[S
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_3

    .line 3678
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3679
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 3680
    const/16 v5, 0x100

    invoke-interface {v1, v5, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3682
    if-nez p1, :cond_1

    .line 3683
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getWordStartIndex(Ljava/lang/CharSequence;)I

    move-result v2

    .line 3684
    .local v2, "startIndex":I
    if-ltz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_4

    .line 3685
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3693
    .end local v2    # "startIndex":I
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v4

    .line 3694
    array-length v5, v4

    if-ltz v5, :cond_2

    if-nez v4, :cond_5

    .line 3695
    :cond_2
    const/4 v3, 0x0

    .line 3707
    :goto_1
    if-eqz v3, :cond_3

    .line 3708
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ET9AWFillContextBuffer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    return v3

    .line 3686
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "startIndex":I
    :cond_4
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 3687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 3698
    .end local v2    # "startIndex":I
    :cond_5
    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x12

    if-ne v5, v6, :cond_6

    .line 3699
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KFillContextBuffer([SI)S

    move-result v3

    goto :goto_1

    .line 3702
    :cond_6
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWFillContextBuffer([SI)S

    move-result v3

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 3296
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3298
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3299
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3300
    return-void
.end method

.method public resetDLMData()S
    .locals 1

    .prologue
    .line 3514
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMReset()S

    move-result v0

    return v0
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 3401
    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsActiveWordStatusChangable:Z

    .line 3402
    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 11

    .prologue
    .line 2700
    const/4 v7, 0x0

    .line 2701
    .local v7, "wStatus":S
    const/4 v4, 0x0

    .line 2702
    .local v4, "mohuPairBitMask":S
    const/4 v5, 0x0

    .line 2703
    .local v5, "nIndex":I
    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v9, 0xe1

    if-ne v8, v9, :cond_3

    .line 2704
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

    .line 2705
    .local v1, "i":Ljava/lang/String;
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2706
    sget-object v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "nIndex":I
    .restart local v5    # "nIndex":I
    aget-short v8, v8, v6

    or-int/2addr v8, v4

    int-to-short v4, v8

    .line 2704
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "nIndex":I
    .restart local v6    # "nIndex":I
    goto :goto_0

    .line 2708
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

    .line 2711
    .end local v1    # "i":Ljava/lang/String;
    .end local v5    # "nIndex":I
    .restart local v6    # "nIndex":I
    :cond_1
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetMohuPairs(S)S

    move-result v7

    .line 2712
    if-eqz v7, :cond_2

    .line 2713
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

    .line 2716
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
    .line 2409
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetActivePrefix(B)S

    move-result v0

    .line 2410
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 2411
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

    .line 2413
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    .line 2414
    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3376
    return-void
.end method

.method public setKeyboard()V
    .locals 5

    .prologue
    .line 3593
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3594
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBNum()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    .line 3595
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBPageNum()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    .line 3596
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isAcuteAccent()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;-><init>(IILcom/diotek/ime/framework/view/Keyboard;Z)V

    .line 3597
    .local v0, "keyboardDatabase":Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;
    if-eqz v0, :cond_0

    .line 3598
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboardDatabase(Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;)I

    .line 3599
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->changeKDBNum(I)V

    .line 3602
    .end local v0    # "keyboardDatabase":Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;
    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 5
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 3580
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3581
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    .line 3582
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBNum()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    .line 3583
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBPageNum()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    .line 3584
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isAcuteAccent()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;-><init>(IILcom/diotek/ime/framework/view/Keyboard;Z)V

    .line 3585
    .local v0, "keyboardDatabase":Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;
    if-eqz v0, :cond_0

    .line 3586
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboardDatabase(Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;)I

    .line 3587
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->changeKDBNum(I)V

    .line 3590
    .end local v0    # "keyboardDatabase":Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;
    :cond_0
    return-void
.end method

.method public setKeyboardDatabase(Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;)I
    .locals 1
    .param p1, "keyboardDatabase"    # Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;

    .prologue
    .line 3605
    const/4 v0, 0x0

    .line 3606
    .local v0, "wStatus":I
    invoke-static {p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetKeyboardDatabase(Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;)S

    move-result v0

    .line 3607
    return v0
.end method

.method public setKeyboardOffset(II)V
    .locals 2
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 3372
    int-to-short v0, p1

    int-to-short v1, p2

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardOffset(SS)S

    .line 3373
    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3366
    int-to-short v0, p1

    int-to-short v1, p2

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardSize(SS)S

    .line 3367
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboardOffset(II)V

    .line 3368
    return-void
.end method

.method public setOptionsByState()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 911
    const/4 v2, 0x0

    .line 912
    .local v2, "wStatus":S
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    .line 913
    .local v0, "isPredictionOn":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v3, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    .line 914
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputLanguage(I)S

    .line 915
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    .line 916
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setNextWordPrediction(Z)V

    .line 918
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoAppend(Z)V

    .line 921
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoSubstitution(Z)V

    .line 923
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 925
    .local v1, "isWordCompletionOn":Z
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setWordCompletion(Z)V

    .line 926
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 927
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const/4 v7, 0x2

    invoke-interface {v3, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setWordCompletionPoint(S)V

    .line 930
    :cond_0
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setRegionalCorrectionOn(Z)V

    .line 933
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 944
    :cond_1
    :goto_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpaceSegmentation()S

    move-result v2

    .line 945
    if-eqz v2, :cond_2

    .line 946
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

    .line 950
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearDownshiftDefault()S

    move-result v2

    .line 951
    if-eqz v2, :cond_3

    .line 952
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9ClearDownshiftDefault : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initDLM()S

    .line 956
    return v5

    .end local v1    # "isWordCompletionOn":Z
    :cond_4
    move v3, v5

    .line 916
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 918
    goto/16 :goto_1

    .restart local v1    # "isWordCompletionOn":Z
    :cond_6
    move v3, v5

    .line 925
    goto :goto_2

    :cond_7
    move v3, v5

    .line 930
    goto :goto_3

    .line 935
    :cond_8
    invoke-static {v5, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v2

    .line 936
    if-eqz v2, :cond_9

    .line 937
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

    .line 939
    :cond_9
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v2

    .line 940
    if-eqz v2, :cond_1

    .line 941
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

    goto/16 :goto_4
.end method

.method public setXt9AutoReplacementCondition(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 4236
    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mXt9AutoReplacementCondition:Z

    .line 4237
    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 3
    .param p1, "isAcuteAccent"    # Z

    .prologue
    .line 3379
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x656c0000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x6c760000

    if-ne v1, v2, :cond_2

    .line 3380
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 3381
    .local v0, "inputType":I
    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    .line 3385
    if-eqz p1, :cond_3

    .line 3386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    .line 3387
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboard()V

    .line 3394
    .end local v0    # "inputType":I
    :cond_2
    :goto_0
    return-void

    .line 3389
    .restart local v0    # "inputType":I
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    .line 3390
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboard()V

    goto :goto_0
.end method

.method public updateEngine()I
    .locals 3

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v2, 0x656e4742

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    .line 2337
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputLanguage(I)S

    .line 2338
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initSubLinguistic()V

    .line 2339
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectList()I
    .locals 18

    .prologue
    .line 1713
    const/4 v12, 0x0

    .line 1714
    .local v12, "wStatus":S
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v10

    .line 1715
    .local v10, "strokeModeOn":Z
    const/4 v13, 0x1

    new-array v4, v13, [B

    .line 1716
    .local v4, "bTotalWords":[B
    const/4 v13, 0x1

    new-array v2, v13, [B

    .line 1717
    .local v2, "bDefaultListIndex":[B
    const/4 v13, 0x1

    new-array v9, v13, [S

    .line 1718
    .local v9, "pwGestureValue":[S
    const/4 v11, 0x0

    .line 1719
    .local v11, "totalWordsCount":I
    const/4 v5, 0x0

    .line 1720
    .local v5, "defaultListIndex":I
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe1

    if-ne v13, v14, :cond_a

    .line 1721
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    .line 1722
    .local v1, "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 1723
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v12

    .line 1724
    if-nez v12, :cond_0

    .line 1725
    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v12

    .line 1726
    if-eqz v12, :cond_2

    .line 1727
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9CPGetSpell : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/4 v13, -0x1

    .line 1808
    .end local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    :goto_0
    return v13

    .line 1731
    .restart local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v12

    .line 1732
    sget-boolean v13, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    .line 1733
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9ClearOneSymb : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_1
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v12

    .line 1736
    if-nez v12, :cond_2

    .line 1737
    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v12

    .line 1738
    if-eqz v12, :cond_2

    .line 1739
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9CPGetSpell : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v13, -0x1

    goto :goto_0

    .line 1744
    :cond_2
    if-nez v12, :cond_9

    iget-byte v13, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-lez v13, :cond_9

    .line 1745
    new-instance v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 1746
    .local v8, "phraseUnicode":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    const/4 v13, 0x1

    new-array v3, v13, [B

    .line 1747
    .local v3, "bSelectedSymb":[B
    const/4 v13, 0x0

    invoke-static {v8, v13, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v12

    .line 1748
    iget-byte v13, v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/2addr v13, v14

    const/16 v14, 0xe0

    if-ge v13, v14, :cond_9

    .line 1749
    iget-byte v13, v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-lez v13, :cond_3

    .line 1750
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-byte v13, v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v6, v13, :cond_3

    .line 1751
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v14, v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v14, v14, v6

    aput-char v14, v13, v15

    .line 1750
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1754
    .end local v6    # "i":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-byte v13, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v6, v13, :cond_9

    .line 1755
    iget-object v13, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v14, 0x1a

    if-ne v13, v14, :cond_5

    .line 1756
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x27

    aput-char v14, v13, v15

    .line 1754
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1757
    :cond_5
    iget-object v13, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v14, 0x19

    if-eq v13, v14, :cond_4

    .line 1759
    if-eqz v10, :cond_8

    .line 1760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->STROKE_CHARSET:[C

    move-object/from16 v16, v0

    iget-object v13, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    iget-object v13, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v13, v0, :cond_7

    :cond_6
    const/4 v13, 0x0

    :goto_4
    aget-char v13, v16, v13

    aput-char v13, v14, v15

    goto :goto_3

    :cond_7
    iget-object v13, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 1762
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    aput-char v14, v13, v15

    goto :goto_3

    .line 1767
    .end local v3    # "bSelectedSymb":[B
    .end local v6    # "i":I
    .end local v8    # "phraseUnicode":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    :cond_9
    const/4 v5, 0x0

    .line 1768
    const/16 v11, 0x1e

    .line 1769
    move-object/from16 v0, p0

    iput v11, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 1770
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .end local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    :goto_5
    move v13, v11

    .line 1808
    goto/16 :goto_0

    .line 1772
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    if-nez v13, :cond_b

    .line 1773
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I

    .line 1776
    :cond_b
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_f

    .line 1777
    invoke-static {v4, v2, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v12

    .line 1781
    :goto_6
    const/4 v13, 0x4

    if-ne v12, v13, :cond_c

    .line 1782
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->breakContext()V

    .line 1784
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_10

    .line 1785
    invoke-static {v4, v2, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v12

    .line 1791
    :cond_c
    :goto_7
    if-nez v12, :cond_d

    .line 1792
    const/4 v13, 0x0

    aget-byte v11, v4, v13

    .line 1793
    const/4 v13, 0x0

    aget-byte v5, v2, v13

    .line 1796
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    .line 1797
    .local v7, "inputMethod":I
    if-nez v7, :cond_e

    .line 1798
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v13

    if-nez v13, :cond_11

    .line 1805
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iput v11, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 1806
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto :goto_5

    .line 1779
    .end local v7    # "inputMethod":I
    :cond_f
    invoke-static {v4, v2, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B[S)S

    move-result v12

    goto :goto_6

    .line 1787
    :cond_10
    invoke-static {v4, v2, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B[S)S

    move-result v12

    goto :goto_7

    .line 1800
    .restart local v7    # "inputMethod":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_e

    .line 1801
    :cond_12
    const/4 v5, 0x0

    goto :goto_8
.end method

.method public updateShiftState()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2449
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 2450
    .local v3, "isUpperCase":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    .line 2451
    .local v1, "isCapslock":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    .line 2452
    .local v2, "isShiftPressed":Z
    const/4 v4, 0x0

    .line 2453
    .local v4, "nResult":I
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 2454
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2455
    .local v0, "inputType":I
    if-eqz v0, :cond_0

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    :cond_0
    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    .line 2459
    if-eqz v3, :cond_3

    .line 2460
    invoke-static {v8, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    .line 2466
    .end local v0    # "inputType":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 2467
    if-eqz v2, :cond_4

    .line 2468
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    .line 2469
    iput-byte v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    .line 2486
    :goto_1
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 2487
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

    .line 2489
    :cond_2
    return-void

    .line 2462
    .restart local v0    # "inputType":I
    :cond_3
    invoke-static {v7, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    goto :goto_0

    .line 2471
    .end local v0    # "inputType":I
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    .line 2472
    iput-byte v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1

    .line 2474
    :cond_5
    if-eqz v3, :cond_7

    .line 2475
    if-eqz v2, :cond_6

    .line 2476
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    .line 2477
    iput-byte v9, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1

    .line 2479
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    move-result v4

    .line 2480
    iput-byte v8, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1

    .line 2483
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    .line 2484
    iput-byte v7, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 2294
    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe1

    if-ne v5, v6, :cond_1

    .line 2295
    int-to-short v5, p1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSelectPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v3

    .line 2296
    .local v3, "wStatus":S
    const/16 v5, 0x64

    if-ne v3, v5, :cond_2

    .line 2297
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    int-to-short v5, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v3

    .line 2312
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v4

    .line 2314
    .end local v3    # "wStatus":S
    :cond_1
    :goto_0
    return v4

    .line 2298
    .restart local v3    # "wStatus":S
    :cond_2
    const/16 v5, 0x65

    if-ne v3, v5, :cond_0

    .line 2299
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 2300
    .local v2, "phrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    const/4 v5, 0x1

    new-array v0, v5, [B

    .line 2301
    .local v0, "bSelectedSymb":[B
    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v3

    .line 2302
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 2303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-byte v5, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v5, :cond_3

    .line 2304
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v7, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    iput-byte v8, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v6, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v6, v6, v1

    aput-char v6, v5, v7

    .line 2303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2306
    :cond_3
    if-nez v3, :cond_1

    .line 2307
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPCommitSelection()S

    .line 2308
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    goto :goto_0
.end method

.method public writeDBdataToFile(B)V
    .locals 13
    .param p1, "dbType"    # B

    .prologue
    const/4 v11, 0x0

    .line 638
    const/4 v5, 0x0

    .line 639
    .local v5, "file":Ljava/io/File;
    const-string v6, ""

    .line 640
    .local v6, "fileName":Ljava/lang/String;
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 641
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "xT9DB"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 642
    .local v3, "dir":Ljava/io/File;
    const/4 v0, 0x0

    .line 643
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 644
    .local v2, "dbSize":I
    if-nez p1, :cond_3

    .line 645
    const-string v6, "xT9UdbData.dat"

    .line 646
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    .line 647
    const/16 v2, 0x5000

    .line 672
    :goto_0
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 673
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 675
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 683
    const/4 v7, 0x0

    .line 685
    .local v7, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .local v8, "os":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v0, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_22
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 698
    if-eqz v8, :cond_1

    .line 700
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 701
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 702
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1e
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 711
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_21

    :cond_1
    :goto_2
    move-object v7, v8

    .line 721
    .end local v8    # "os":Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    return-void

    .line 648
    :cond_3
    const/4 v9, 0x1

    if-ne p1, v9, :cond_4

    .line 649
    const-string v6, "xT9CdbData.dat"

    .line 650
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBBuffer:[B

    .line 651
    const/16 v2, 0x800

    goto :goto_0

    .line 652
    :cond_4
    const/4 v9, 0x2

    if-ne p1, v9, :cond_5

    .line 653
    const-string v6, "xT9ASdbData.dat"

    .line 654
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    .line 655
    const/16 v2, 0x2800

    goto :goto_0

    .line 656
    :cond_5
    const/4 v9, 0x3

    if-ne p1, v9, :cond_6

    .line 657
    const-string v6, "xT9KUdbData.dat"

    .line 658
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mKUDBBuffer:[B

    .line 659
    const/16 v2, 0x5000

    goto :goto_0

    .line 660
    :cond_6
    const/4 v9, 0x4

    if-ne p1, v9, :cond_7

    .line 661
    const-string v6, "xT9DLMData.dat"

    .line 662
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    .line 663
    sget v2, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    goto :goto_0

    .line 664
    :cond_7
    const/4 v9, 0x5

    if-ne p1, v9, :cond_8

    .line 665
    const-string v6, "xT9SMTData.dat"

    .line 666
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    .line 667
    sget v2, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    goto :goto_0

    .line 669
    :cond_8
    const-string v9, "SamsungIME"

    const-string v10, "Invalid DB type!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 676
    :catch_0
    move-exception v4

    .line 677
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

    .line 687
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 688
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_4
    :try_start_5
    const-string v9, "SamsungIME"

    const-string v10, "FileOutputStream is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 698
    if-eqz v7, :cond_2

    .line 700
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 701
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 702
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/SyncFailedException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 711
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 712
    :catch_2
    move-exception v4

    .line 713
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

    .line 689
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 690
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_8
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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 698
    if-eqz v7, :cond_2

    .line 700
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 701
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 702
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/SyncFailedException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 711
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 712
    :catch_4
    move-exception v4

    .line 713
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

    goto :goto_5

    .line 693
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 694
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
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
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 698
    if-eqz v7, :cond_2

    .line 700
    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 701
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 702
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/SyncFailedException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 711
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_3

    .line 712
    :catch_6
    move-exception v4

    .line 713
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

    .line 698
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v7, :cond_9

    .line 700
    :try_start_e
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 701
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V

    .line 702
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/SyncFailedException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 711
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 698
    :cond_9
    :goto_9
    throw v9

    .line 703
    :catch_7
    move-exception v4

    .line 704
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_10
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
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 711
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_9

    .line 712
    :catch_8
    move-exception v4

    .line 713
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

    :goto_a
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 706
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 707
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_12
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
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 711
    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_9

    .line 712
    :catch_a
    move-exception v4

    .line 713
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

    goto :goto_a

    .line 710
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 711
    :try_start_14
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 710
    :goto_b
    throw v9

    .line 712
    :catch_b
    move-exception v4

    .line 713
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

    .line 712
    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 713
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

    goto/16 :goto_a

    .line 703
    .local v4, "e":Ljava/lang/NullPointerException;
    :catch_d
    move-exception v4

    .line 704
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_15
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
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 711
    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    goto/16 :goto_3

    .line 712
    :catch_e
    move-exception v4

    .line 713
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

    .line 706
    .local v4, "e":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v4

    .line 707
    .local v4, "e":Ljava/io/IOException;
    :try_start_17
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
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 711
    :try_start_18
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    goto/16 :goto_3

    .line 712
    :catch_10
    move-exception v4

    .line 713
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

    .line 710
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    .line 711
    :try_start_19
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 710
    :goto_c
    throw v9

    .line 712
    :catch_11
    move-exception v4

    .line 713
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

    .line 703
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_12
    move-exception v4

    .line 704
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_1a
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
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 711
    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    goto/16 :goto_3

    .line 712
    :catch_13
    move-exception v4

    .line 713
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

    .line 706
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_14
    move-exception v4

    .line 707
    .local v4, "e":Ljava/io/IOException;
    :try_start_1c
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
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 711
    :try_start_1d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    goto/16 :goto_3

    .line 712
    :catch_15
    move-exception v4

    .line 713
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

    .line 710
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v9

    .line 711
    :try_start_1e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16

    .line 710
    :goto_d
    throw v9

    .line 712
    :catch_16
    move-exception v4

    .line 713
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

    goto :goto_d

    .line 703
    :catch_17
    move-exception v4

    .line 704
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_1f
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
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    .line 711
    :try_start_20
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18

    goto/16 :goto_3

    .line 712
    :catch_18
    move-exception v4

    .line 713
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

    .line 706
    :catch_19
    move-exception v4

    .line 707
    :try_start_21
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
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 711
    :try_start_22
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1a

    goto/16 :goto_3

    .line 712
    :catch_1a
    move-exception v4

    .line 713
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

    .line 710
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v9

    .line 711
    :try_start_23
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1b

    .line 710
    :goto_e
    throw v9

    .line 712
    :catch_1b
    move-exception v4

    .line 713
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

    .line 703
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v4

    .line 704
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_24
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
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    .line 711
    :try_start_25
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1d

    goto/16 :goto_2

    .line 712
    :catch_1d
    move-exception v4

    .line 713
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

    :goto_f
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 706
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1e
    move-exception v4

    .line 707
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_26
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
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    .line 711
    :try_start_27
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1f

    goto/16 :goto_2

    .line 712
    :catch_1f
    move-exception v4

    .line 713
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

    goto :goto_f

    .line 710
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v9

    .line 711
    :try_start_28
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_20

    .line 710
    :goto_10
    throw v9

    .line 712
    :catch_20
    move-exception v4

    .line 713
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

    goto :goto_10

    .line 712
    .end local v4    # "e":Ljava/io/IOException;
    :catch_21
    move-exception v4

    .line 713
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

    goto/16 :goto_f

    .line 698
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v9

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 693
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_22
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 689
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_23
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 687
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_24
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 1

    .prologue
    .line 3303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3305
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3306
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3307
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3308
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    .line 3309
    return-void
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 9
    .param p1, "psBuf"    # [C
    .param p2, "dwBufLen"    # I
    .param p3, "dwLdbNum"    # I
    .param p4, "bHighQuality"    # Z
    .param p5, "bSentenceBased"    # Z

    .prologue
    .line 3490
    const/high16 v0, 0x6b6f0000

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsKoreanCoreInit:Z

    if-eqz v0, :cond_0

    .line 3491
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDLMScanBuf([CIZZZZ)S

    move-result v0

    .line 3494
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMScanBuf([CIIIIZZZZ)S

    move-result v0

    goto :goto_0
.end method
