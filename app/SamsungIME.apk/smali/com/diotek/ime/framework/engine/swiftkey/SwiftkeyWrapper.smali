.class public Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "SwiftkeyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$23;
    }
.end annotation


# static fields
.field private static final KEY_PRESS_MODEL_DB_DIR:Ljava/lang/String; = "KeyPressModel"

.field private static final KEY_PRESS_MODEL_DB_DIR_EX:Ljava/lang/String; = "KeyPressModelEx"

.field private static LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = null

.field private static final PRELOADED_LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = "/system/sipdb"

.field private static SwiftKeyConfigurationURL:Ljava/lang/String; = null

.field private static final ZHUYIN_PRELOADED_LANGUAGE_PACK_FILE:Ljava/lang/String; = "zh_TW.zip"

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private static mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private static mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;


# instance fields
.field private final CANGJIE_SHAPES:[Ljava/lang/Character;

.field private final DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

.field private final DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

.field private downloadingLPCount:I

.field private mAccentState:Z

.field private mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

.field private mCapslockMode:Z

.field private final mCompletionListener:Lcom/touchtype_fluency/util/CompletionListener;

.field private final mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

.field private final mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

.field private mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

.field private mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private mDiableTempDynamicModel:Z

.field private mEnabledLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitializeLangaugePack:Z

.field private mIsEnableAutoCorrection:Z

.field private mIsPersonalizedDataDefaultOff:Z

.field private mIsPrediction:Z

.field private mIsUseLiveLanguage:Z

.field private mIsUsePersonalizedData:Z

.field private final mLoadProgressListener:Lcom/touchtype_fluency/util/LoadProgressListener;

.field private final mLoadProgressListenerForChinese:Lcom/touchtype_fluency/util/LoadProgressListener;

.field private final mLoadProgressListenerForJapanese:Lcom/touchtype_fluency/util/LoadProgressListener;

.field private mLoadingLanguagePackFlag:I

.field private mLoadingLanguagePacks:Z

.field private mSelectedLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mSequence:Lcom/touchtype_fluency/Sequence;

.field private mShiftMode:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mVerbatim:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 58
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 59
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 63
    sput-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    .line 69
    sput-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 105
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$1;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$1;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 70
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 71
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 74
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    .line 75
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCapslockMode:Z

    .line 76
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    .line 79
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    .line 80
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    .line 81
    iput v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    .line 86
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mUIHandler:Landroid/os/Handler;

    .line 88
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    .line 90
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    .line 91
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    .line 92
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    .line 93
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    .line 94
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPersonalizedDataDefaultOff:Z

    .line 95
    iput v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    .line 96
    new-array v0, v5, [Ljava/lang/CharSequence;

    const-string v1, ","

    aput-object v1, v0, v3

    const-string v1, "?"

    aput-object v1, v0, v2

    const-string v1, "!"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    .line 97
    new-array v0, v5, [Ljava/lang/CharSequence;

    const-string v1, "\u3001"

    aput-object v1, v0, v3

    const-string v1, "\uff1f"

    aput-object v1, v0, v2

    const-string v1, "\uff01"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    .line 99
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    .line 100
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x65e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x6708

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x91d1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x6728

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0x6c34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x706b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x571f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7af9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x6208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x5341

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x5927

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4e2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4e00

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x5f13

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4eba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x5fc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x624b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x53e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x5c38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x5eff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x5c71

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x5973

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x96e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x535c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    .line 118
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListener:Lcom/touchtype_fluency/util/LoadProgressListener;

    .line 147
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$3;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForChinese:Lcom/touchtype_fluency/util/LoadProgressListener;

    .line 171
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$4;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForJapanese:Lcom/touchtype_fluency/util/LoadProgressListener;

    .line 195
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$5;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$5;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListener:Lcom/touchtype_fluency/util/CompletionListener;

    .line 206
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

    .line 217
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$7;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$7;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

    .line 245
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 246
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    sget-object v1, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 247
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    .line 248
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    .line 249
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_Disable_Temporary_Dynamic_Models"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    .line 251
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPersonalizedDataDefaultOff:Z

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->clearLanguagePackList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/inputmode/InputModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$1802(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$1902(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->clearLoadLangugagePackFlag(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolder(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldKPMFolder()V

    return-void
.end method

.method static synthetic access$2200(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeKPMExFolder()V

    return-void
.end method

.method static synthetic access$302(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    return p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setSessionPrivateSetting()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSuggestionUIThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    .prologue
    .line 56
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    return p1
.end method

.method static synthetic access$800()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V

    return-void
.end method

.method private checkCurrentSequenceForJapanese(Ljava/lang/StringBuilder;[I[I)V
    .locals 21
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;
    .param p2, "posOfBeforeText"    # [I
    .param p3, "posOfAfterText"    # [I

    .prologue
    .line 1159
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkJapaneseSequence()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    goto :goto_0

    .line 1169
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 1170
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v10, :cond_9

    .line 1172
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1174
    .local v15, "selectedText":Ljava/lang/CharSequence;
    if-eqz v15, :cond_3

    .line 1175
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1176
    const-string v15, ""

    .line 1180
    :cond_3
    const/16 v18, 0x8c

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1181
    .local v14, "longBeforeText":Ljava/lang/CharSequence;
    const/16 v18, 0x8c

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1182
    .local v13, "longAfterText":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 1183
    .local v8, "currentString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1184
    .local v12, "isSelectedText":Z
    const-string v6, ""

    .line 1185
    .local v6, "beforeToken1":Ljava/lang/String;
    const/4 v5, 0x1

    .line 1186
    .local v5, "bRecaptureAfterToken":Z
    if-nez v14, :cond_4

    .line 1187
    const-string v14, ""

    .line 1189
    :cond_4
    if-eqz v15, :cond_a

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1192
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p2, v18

    .line 1193
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p3, v18

    .line 1194
    const/4 v12, 0x1

    .line 1224
    :cond_5
    :goto_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    if-eqz v5, :cond_12

    if-eqz v13, :cond_12

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_12

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getFirtstTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, "afterToken1":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 1236
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1238
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v9

    .line 1239
    .local v9, "currentToken":Lcom/touchtype_fluency/Sequence;
    invoke-virtual {v9}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/touchtype_fluency/Sequence;->get(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1241
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const/16 v18, 0x0

    aget v19, p3, v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    .line 1276
    .end local v3    # "afterToken1":Ljava/lang/String;
    .end local v9    # "currentToken":Lcom/touchtype_fluency/Sequence;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1280
    :cond_8
    if-eqz v12, :cond_13

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    .line 1291
    .end local v5    # "bRecaptureAfterToken":Z
    .end local v6    # "beforeToken1":Ljava/lang/String;
    .end local v8    # "currentString":Ljava/lang/String;
    .end local v12    # "isSelectedText":Z
    .end local v13    # "longAfterText":Ljava/lang/CharSequence;
    .end local v14    # "longBeforeText":Ljava/lang/CharSequence;
    .end local v15    # "selectedText":Ljava/lang/CharSequence;
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    goto/16 :goto_0

    .line 1195
    .restart local v5    # "bRecaptureAfterToken":Z
    .restart local v6    # "beforeToken1":Ljava/lang/String;
    .restart local v8    # "currentString":Ljava/lang/String;
    .restart local v12    # "isSelectedText":Z
    .restart local v13    # "longAfterText":Ljava/lang/CharSequence;
    .restart local v14    # "longBeforeText":Ljava/lang/CharSequence;
    .restart local v15    # "selectedText":Ljava/lang/CharSequence;
    :cond_a
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-nez v18, :cond_b

    .line 1196
    new-instance v18, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v18 .. v18}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1197
    new-instance v18, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-direct/range {v18 .. v20}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1198
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p2, v18

    goto/16 :goto_1

    .line 1199
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 1202
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v18

    add-int/lit8 v11, v18, -0x1

    .local v11, "index":I
    :goto_4
    if-ltz v11, :cond_c

    .line 1203
    invoke-interface {v14, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-nez v18, :cond_d

    .line 1207
    :cond_c
    new-instance v18, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v18 .. v18}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1208
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v11, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1209
    new-instance v18, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1210
    const/16 v18, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    aput v19, p2, v18

    goto/16 :goto_1

    .line 1202
    :cond_d
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 1212
    .end local v11    # "index":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v20

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v6

    .line 1214
    if-eqz v6, :cond_f

    .line 1215
    const/16 v18, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    aput v19, p2, v18

    .line 1219
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 1220
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1217
    :cond_f
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p2, v18

    goto :goto_5

    .line 1245
    .restart local v3    # "afterToken1":Ljava/lang/String;
    .restart local v9    # "currentToken":Lcom/touchtype_fluency/Sequence;
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const/16 v18, 0x0

    aget v19, p3, v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v16

    .line 1251
    .local v16, "sequence":Lcom/touchtype_fluency/Sequence;
    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    if-lez v18, :cond_7

    .line 1252
    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->get(I)Ljava/lang/String;

    move-result-object v7

    .line 1253
    .local v7, "beforeToken2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 1254
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const/16 v18, 0x0

    aget v19, p2, v18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p2, v18

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/touchtype_fluency/Sequence;->remove(I)Ljava/lang/String;

    goto/16 :goto_2

    .line 1259
    .end local v7    # "beforeToken2":Ljava/lang/String;
    .end local v16    # "sequence":Lcom/touchtype_fluency/Sequence;
    :cond_11
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1261
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getFirtstTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1263
    .local v4, "afterToken2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1264
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const/16 v18, 0x0

    aget v19, p3, v18

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    goto/16 :goto_2

    .line 1270
    .end local v3    # "afterToken1":Ljava/lang/String;
    .end local v4    # "afterToken2":Ljava/lang/String;
    .end local v9    # "currentToken":Lcom/touchtype_fluency/Sequence;
    :cond_12
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p3, v18

    goto/16 :goto_2

    .line 1283
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v17

    .line 1284
    .local v17, "tempTH":Lcom/touchtype_fluency/TouchHistory;
    if-nez v17, :cond_14

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1287
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 2
    .param p1, "lp"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 411
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-direct {p0, v1, p1, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkLanguageEnabledForSwift(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;)Z

    .line 414
    :cond_0
    return-void
.end method

.method private checkLanguageEnabledForSwift(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;)Z
    .locals 11
    .param p1, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p2, "lp"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p3, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "enabled":Z
    const/4 v4, 0x0

    .line 420
    .local v4, "languageId":I
    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "token":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 423
    .local v1, "index":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    .line 424
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "language":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "locale":Ljava/lang/String;
    const-string v7, "he"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 428
    const-string v3, "iw"

    .line 430
    :cond_0
    if-eqz v3, :cond_1

    .line 431
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 433
    :cond_1
    if-eqz v5, :cond_2

    .line 434
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 437
    :cond_2
    invoke-static {v3, v5}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 438
    const-string v7, "0x%08x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "key":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {p3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 440
    if-nez v0, :cond_3

    .line 441
    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 442
    const-string v7, "0x%08x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 443
    const/4 v7, 0x0

    invoke-interface {p3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 455
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "locale":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 456
    const/4 v7, 0x1

    invoke-virtual {p1, p2, v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 459
    :cond_4
    return v0

    .line 446
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 447
    const-string v7, "he"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 448
    const-string v6, "iw"

    .line 450
    :cond_6
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 451
    const-string v7, "0x%08x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .restart local v2    # "key":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {p3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private clearLanguagePackList()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 795
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 796
    return-void
.end method

.method private declared-synchronized clearLoadLangugagePackFlag(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 979
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    .line 980
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private convertCodeforChinese(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 1501
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    sparse-switch p1, :sswitch_data_0

    .line 1569
    .end local p1    # "code":I
    :goto_0
    return p1

    .line 1505
    .restart local p1    # "code":I
    :sswitch_0
    const/16 p1, 0x4e00

    goto :goto_0

    .line 1508
    :sswitch_1
    const/16 p1, 0x4e28

    goto :goto_0

    .line 1511
    :sswitch_2
    const/16 p1, 0x4e3f

    goto :goto_0

    .line 1514
    :sswitch_3
    const/16 p1, 0x4e36

    goto :goto_0

    .line 1517
    :sswitch_4
    const/16 p1, 0x4e5b

    goto :goto_0

    .line 1519
    :sswitch_5
    const/16 p1, 0x3f

    goto :goto_0

    .line 1524
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    .line 1525
    .local v0, "language":I
    const v1, 0x7a685457

    if-ne v0, v1, :cond_1

    .line 1526
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1546
    :pswitch_0
    const/16 p1, 0x3108

    goto :goto_0

    .line 1528
    :pswitch_1
    const/16 p1, 0x3105

    goto :goto_0

    .line 1530
    :pswitch_2
    const/16 p1, 0x310d

    goto :goto_0

    .line 1532
    :pswitch_3
    const/16 p1, 0x3113

    goto :goto_0

    .line 1534
    :pswitch_4
    const/16 p1, 0x3106

    goto :goto_0

    .line 1536
    :pswitch_5
    const/16 p1, 0x310e

    goto :goto_0

    .line 1538
    :pswitch_6
    const/16 p1, 0x3114

    goto :goto_0

    .line 1540
    :pswitch_7
    const/16 p1, 0x3107

    goto :goto_0

    .line 1542
    :pswitch_8
    const/16 p1, 0x310f

    goto :goto_0

    .line 1544
    :pswitch_9
    const/16 p1, 0x3115

    goto :goto_0

    .line 1551
    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1553
    :pswitch_a
    const/16 p1, 0x61

    goto :goto_0

    .line 1555
    :pswitch_b
    const/16 p1, 0x64

    goto :goto_0

    .line 1557
    :pswitch_c
    const/16 p1, 0x67

    goto :goto_0

    .line 1559
    :pswitch_d
    const/16 p1, 0x6a

    goto :goto_0

    .line 1561
    :pswitch_e
    const/16 p1, 0x6d

    goto :goto_0

    .line 1563
    :pswitch_f
    const/16 p1, 0x70

    goto :goto_0

    .line 1565
    :pswitch_10
    const/16 p1, 0x74

    goto :goto_0

    .line 1567
    :pswitch_11
    const/16 p1, 0x77

    goto :goto_0

    .line 1502
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_5
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
        0x31d0 -> :sswitch_0
        0x31d1 -> :sswitch_1
        0x31d3 -> :sswitch_2
        0x31d4 -> :sswitch_3
        0x31d6 -> :sswitch_4
    .end sparse-switch

    .line 1526
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1551
    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private declared-synchronized countDownloadingLanguagePack(Z)V
    .locals 1
    .param p1, "increase"    # Z

    .prologue
    .line 388
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 389
    :try_start_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z
    .locals 5
    .param p1, "controller"    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, "result":Z
    :try_start_0
    invoke-interface {p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->createSession()Z
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 315
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Lcom/touchtype_fluency/LicenseException;
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invaild swiftkey license : Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentLangauge()I
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    return v0
.end method

.method public static getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 4

    .prologue
    .line 531
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Lcom/touchtype_fluency/util/FileStorage;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    const-string v2, "/system/sipdb"

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    const/4 v2, 0x4

    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$12;

    invoke-direct {v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$12;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getInstance(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 557
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method public static getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SwiftKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 521
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    .line 523
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 524
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/sipdb"

    const-string v3, "zh_TW.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v1, "zhuyinLanguagePackFile":Ljava/io/File;
    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyConfigurationURL(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    .line 527
    .end local v1    # "zhuyinLanguagePackFile":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    return-object v2
.end method

.method private getPreviewSuggestion(Ljava/util/ArrayList;)I
    .locals 4
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
    .line 1956
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPreviewFlowPredicions()Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    .line 1957
    .local v2, "predictions":Lcom/touchtype_fluency/Predictions;
    if-nez v2, :cond_0

    .line 1958
    const/4 v3, -0x1

    .line 1966
    :goto_0
    return v3

    .line 1960
    :cond_0
    if-nez p1, :cond_1

    .line 1961
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    .restart local p1    # "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Prediction;

    .line 1964
    .local v1, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1966
    .end local v1    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getSelectedLanguageList([Lcom/diotek/ime/framework/common/Language;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "languageList"    # [Lcom/diotek/ime/framework/common/Language;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/diotek/ime/framework/common/Language;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    .local p2, "total":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .local p3, "normal":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .local p4, "chinese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .local p5, "japanese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v7

    invoke-static {v7}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "currentLangCode":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v4, v0, v3

    .line 803
    .local v4, "lang":Lcom/diotek/ime/framework/common/Language;
    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/touchtype_fluency/util/LanguagePackManager;->findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v2

    .line 805
    .local v2, "currentlanguagePack":Lcom/touchtype_fluency/util/LanguagePack;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 806
    const-string v7, "zh"

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 807
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_0
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v6

    .line 821
    .local v6, "llp":Lcom/touchtype_fluency/util/LiveLanguagePack;
    if-eqz v6, :cond_1

    .line 822
    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-virtual {v7, v6, v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Z)Z

    .line 802
    .end local v6    # "llp":Lcom/touchtype_fluency/util/LiveLanguagePack;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 808
    :cond_2
    const-string v7, "ja"

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 809
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 811
    :cond_3
    if-eqz v1, :cond_0

    .line 812
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 813
    const/4 v7, 0x0

    invoke-interface {p3, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 815
    :cond_4
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 826
    .end local v2    # "currentlanguagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v4    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_5
    return-void
.end method

.method private getSequenceType()Lcom/touchtype_fluency/Sequence$Type;
    .locals 1

    .prologue
    .line 1375
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    return-object v0
.end method

.method public static getSuggestions(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "languageID"    # I
    .param p2, "contextText"    # Ljava/lang/String;
    .param p3, "currentText"    # Ljava/lang/String;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1975
    .local p0, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v7, 0x0

    .line 1976
    .local v7, "reservePredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1978
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v7

    .line 1986
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1987
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1979
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1980
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1981
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    .line 1983
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1984
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    .line 1989
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    return-object v0
.end method

.method public static getSwiftKeySupportLanguageList()Ljava/lang/String;
    .locals 13

    .prologue
    .line 463
    const-string v6, ""

    .line 464
    .local v6, "langPackList":Ljava/lang/String;
    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-eqz v10, :cond_3

    .line 465
    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v10}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/util/LanguagePack;

    .line 466
    .local v5, "langPack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 467
    :cond_1
    const-string v10, "he"

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "iw_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 470
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 477
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "langPack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3
    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-eqz v10, :cond_4

    .line 478
    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v10}, Lcom/touchtype_fluency/util/LanguagePackManager;->getStorage()Lcom/touchtype_fluency/util/Storage;

    move-result-object v9

    .line 479
    .local v9, "storage":Lcom/touchtype_fluency/util/Storage;
    invoke-interface {v9}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v8

    .line 480
    .local v8, "preinstallDir":Ljava/io/File;
    if-eqz v8, :cond_4

    .line 481
    new-instance v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$11;

    invoke-direct {v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$11;-><init>()V

    invoke-virtual {v8, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 488
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 489
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v1, v0, v4

    .line 491
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "fileName":Ljava/lang/String;
    const-string v10, "he"

    const-string v11, "iw"

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 493
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "preinstallDir":Ljava/io/File;
    .end local v9    # "storage":Lcom/touchtype_fluency/util/Storage;
    :cond_4
    return-object v6
.end method

.method private initLiveLanguageSetting()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 330
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 331
    .local v1, "isPredictionOn":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v4, v5, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    .local v0, "defaultBoolean":Z
    if-eqz v1, :cond_0

    const-string v4, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    .line 333
    return-void
.end method

.method private installPreloadLanguagePack()V
    .locals 4

    .prologue
    .line 337
    :try_start_0
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "Samsung_nolimit_flow_f2498e18"

    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;

    invoke-direct {v3, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-virtual {v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcom/touchtype_fluency/LicenseException;
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild swiftkey license : Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCangjieInputMode()Z
    .locals 2

    .prologue
    .line 1492
    const v0, 0x7a68484b

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    const/4 v0, 0x1

    .line 1497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangeEnableLanguageList()Z
    .locals 3

    .prologue
    .line 761
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    .line 762
    .local v0, "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 763
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 765
    :cond_1
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateEnabledLanguageList(Ljava/util/List;)V

    .line 766
    const/4 v1, 0x1

    .line 768
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isChangePersonalizedData()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 751
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_USE_STANDARD_DATA"

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPersonalizedDataDefaultOff:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v5, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 752
    .local v0, "isUsePersonalizedData":Z
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    if-eq v1, v0, :cond_1

    .line 754
    :cond_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    move v3, v2

    .line 757
    :cond_1
    return v3

    .end local v0    # "isUsePersonalizedData":Z
    :cond_2
    move v1, v3

    .line 751
    goto :goto_0
.end method

.method private isChangeSelectLanguageList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "languageList":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 774
    :cond_1
    const/4 v0, 0x1

    .line 776
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 2
    .param p0, "language"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 502
    invoke-interface {p0}, Lcom/touchtype_fluency/util/LanguagePack;->getPreinstallFile()Ljava/io/File;

    move-result-object v0

    .line 503
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 504
    :cond_0
    const/4 v1, 0x0

    .line 506
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSecondaryKeyMode()Z
    .locals 3

    .prologue
    .line 2328
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    .line 2329
    .local v1, "shiftState":Z
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    .line 2330
    .local v0, "inputLanguage":I
    const/high16 v2, 0x6b6f0000

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_7

    :cond_0
    const/high16 v2, 0x6b610000

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_7

    :cond_1
    const/high16 v2, 0x656c0000

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    if-nez v2, :cond_7

    :cond_2
    const/high16 v2, 0x6c760000

    if-ne v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    if-nez v2, :cond_7

    :cond_3
    const/high16 v2, 0x61720000

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_7

    :cond_4
    const/high16 v2, 0x66610000

    if-ne v0, v2, :cond_5

    if-nez v1, :cond_7

    :cond_5
    const/high16 v2, 0x75720000

    if-ne v0, v2, :cond_6

    if-nez v1, :cond_7

    :cond_6
    const/high16 v2, 0x74680000

    if-ne v0, v2, :cond_8

    if-eqz v1, :cond_8

    .line 2338
    :cond_7
    const/4 v2, 0x1

    .line 2340
    :goto_0
    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 11
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 697
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 701
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "KeyPressModelEx"

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 703
    .local v2, "dir":Ljava/io/File;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    .line 704
    .local v5, "inputMode":I
    if-eq v5, v0, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v5, v10, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v6, v0

    .line 708
    .local v6, "isPhonePadMode":Z
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    .line 709
    .local v4, "currentLangID":I
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 710
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v10

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZ)V

    invoke-virtual {v10, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 717
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 718
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v10

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$14;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$14;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZ)V

    invoke-virtual {v10, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 726
    :cond_4
    const/4 v9, 0x0

    .line 727
    .local v9, "isSecondary":Z
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 729
    if-eqz v5, :cond_5

    const/4 v0, 0x7

    if-eq v5, v0, :cond_5

    if-ne v5, v10, :cond_6

    .line 732
    :cond_5
    const/4 v9, 0x1

    .line 735
    :cond_6
    move v7, v9

    .line 736
    .local v7, "isSecondaryPage":Z
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v10

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)V

    invoke-virtual {v10, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private loadLanguageModels(Z)V
    .locals 37
    .param p1, "force"    # Z

    .prologue
    .line 829
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v23

    .line 830
    .local v23, "dir":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdir()Z

    .line 831
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v3, :cond_0

    .line 832
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v9, Ljava/io/File;

    const-string v10, "blacklist"

    move-object/from16 v0, v23

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setBlacklist(Ljava/lang/String;)V

    .line 833
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    .line 835
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    .line 836
    .local v4, "languageList":[Lcom/diotek/ime/framework/common/Language;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v6, "selectedLanaguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v7, "selectedLanaguagesForChinese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v8, "selectedLanaguagesForJapanese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v5, "totalSelectedLanaguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v12

    .line 841
    .local v12, "currentLangCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v11

    .local v11, "isStorke":Z
    move-object/from16 v3, p0

    .line 842
    invoke-direct/range {v3 .. v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSelectedLanguageList([Lcom/diotek/ime/framework/common/Language;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 844
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 972
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isChangePersonalizedData()Z

    move-result v27

    .line 849
    .local v27, "isChangePersonalizedData":Z
    if-nez p1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isChangeEnableLanguageList()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    const/16 v30, 0x1

    .line 851
    .local v30, "loadLanguageforcely":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isChangeSelectLanguageList(Ljava/util/List;)Z

    move-result v22

    .line 852
    .local v22, "changeSelectLanguageList":Z
    if-nez v30, :cond_9

    if-nez v22, :cond_9

    .line 853
    if-eqz v27, :cond_4

    .line 854
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    invoke-interface {v3, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadOrUnloadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;Z)V

    .line 856
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 857
    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v13, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object v10, v7

    invoke-interface/range {v9 .. v14}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->changeChineseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 860
    const/16 v3, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 861
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    .line 864
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v26

    .line 866
    .local v26, "inputMode":I
    const/4 v15, 0x0

    .line 867
    .local v15, "isPhonepadMode":Z
    const/4 v3, 0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_6

    const/16 v3, 0x8

    move/from16 v0, v26

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 870
    :cond_6
    const/4 v15, 0x1

    .line 872
    :cond_7
    sget-object v13, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v17, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v18, v0

    move-object v14, v8

    move-object/from16 v16, v12

    invoke-interface/range {v13 .. v18}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->changeJapaneseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 875
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 876
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    goto/16 :goto_0

    .line 849
    .end local v15    # "isPhonepadMode":Z
    .end local v22    # "changeSelectLanguageList":Z
    .end local v26    # "inputMode":I
    .end local v30    # "loadLanguageforcely":Z
    :cond_8
    const/16 v30, 0x0

    goto :goto_1

    .line 881
    .restart local v22    # "changeSelectLanguageList":Z
    .restart local v30    # "loadLanguageforcely":Z
    :cond_9
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setDynamicModelsEnabled(Z)V

    .line 882
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setDynamicModelsEnabled(Z)V

    .line 883
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setDynamicModelsEnabled(Z)V

    .line 884
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setLiveLanguageModelsEnabled(Z)V

    .line 885
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setLiveLanguageModelsEnabled(Z)V

    .line 886
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setLiveLanguageModelsEnabled(Z)V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v30, :cond_f

    .line 888
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v26

    .line 889
    .restart local v26    # "inputMode":I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_b

    const/16 v3, 0x8

    move/from16 v0, v26

    if-ne v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const/16 v28, 0x1

    .line 892
    .local v28, "isPhonePadMode":Z
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/touchtype_fluency/util/LanguagePack;

    .line 893
    .local v29, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setChineseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V

    goto :goto_3

    .line 889
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "isPhonePadMode":Z
    .end local v29    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_c
    const/16 v28, 0x0

    goto :goto_2

    .line 895
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v28    # "isPhonePadMode":Z
    :cond_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/touchtype_fluency/util/LanguagePack;

    .line 896
    .restart local v29    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setJapaneseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V

    goto :goto_4

    .line 898
    .end local v29    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 899
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 900
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 901
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    .line 902
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListener:Lcom/touchtype_fluency/util/LoadProgressListener;

    invoke-interface {v3, v6, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    .line 903
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForChinese:Lcom/touchtype_fluency/util/LoadProgressListener;

    invoke-interface {v3, v7, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    .line 904
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForJapanese:Lcom/touchtype_fluency/util/LoadProgressListener;

    move/from16 v0, v28

    invoke-interface {v3, v8, v9, v10, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;Z)V

    .line 905
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectedLanguageList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 907
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v26    # "inputMode":I
    .end local v28    # "isPhonePadMode":Z
    :cond_f
    if-eqz v27, :cond_10

    .line 908
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    invoke-interface {v3, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadOrUnloadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;Z)V

    .line 910
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->hashCode()I

    move-result v9

    if-eq v3, v9, :cond_1

    .line 911
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .local v19, "addLanaguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v34, "removeLanaguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v20, "addLanaguagesForChinese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v35, "removeLanaguagesForChinese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v21, "addLanaguagesForJapanese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v36, "removeLanaguagesForJapanese":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/16 v33, 0x0

    .line 918
    .local v33, "neetNotAdd":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/touchtype_fluency/util/LanguagePack;

    .line 919
    .local v31, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/touchtype_fluency/util/LanguagePack;

    .line 920
    .local v32, "lp2":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 921
    const/16 v33, 0x1

    .line 925
    .end local v32    # "lp2":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_12
    if-nez v33, :cond_13

    .line 926
    const-string v3, "zh"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 927
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_13
    :goto_6
    const/16 v33, 0x0

    goto :goto_5

    .line 928
    :cond_14
    const-string v3, "ja"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 929
    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 931
    :cond_15
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 936
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v31    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_16
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/touchtype_fluency/util/LanguagePack;

    .line 937
    .restart local v31    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/touchtype_fluency/util/LanguagePack;

    .line 938
    .restart local v32    # "lp2":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 939
    const/16 v33, 0x1

    .line 943
    .end local v32    # "lp2":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_18
    if-nez v33, :cond_19

    .line 944
    const-string v3, "zh"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 945
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_19
    :goto_8
    const/16 v33, 0x0

    goto :goto_7

    .line 946
    :cond_1a
    const-string v3, "ja"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 947
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 949
    :cond_1b
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 954
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v31    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_1c
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 955
    :cond_1d
    const/16 v3, 0x100

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 956
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    .line 957
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListener:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 959
    :cond_1e
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_20

    .line 960
    :cond_1f
    const/16 v3, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 961
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    .line 962
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-interface {v3, v0, v1, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 964
    :cond_20
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_22

    .line 965
    :cond_21
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    .line 966
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    .line 967
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 969
    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectedLanguageList(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private registerPredictionListener()V
    .locals 2

    .prologue
    .line 1712
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    .line 1723
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$18;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$18;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    .line 1734
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    .line 1744
    return-void
.end method

.method private reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 2
    .param p1, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 396
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V

    .line 397
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 398
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-virtual {v0, p1, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    .line 407
    return-void
.end method

.method private removeKPMExFolder()V
    .locals 9

    .prologue
    .line 2513
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2514
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KeyPressModelEx"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 2515
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2516
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2517
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 2518
    aget-object v4, v0, v5

    .line 2519
    .local v4, "filename":Ljava/lang/String;
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2522
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2523
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2524
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[delete]dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2528
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2529
    return-void
.end method

.method private removeKPMExFolderByThread()V
    .locals 2

    .prologue
    .line 2485
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$22;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$22;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2490
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2491
    return-void
.end method

.method private removeOldKPMFolder()V
    .locals 9

    .prologue
    .line 2494
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2495
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KeyPressModel"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 2496
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2497
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2498
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 2499
    aget-object v4, v0, v5

    .line 2500
    .local v4, "filename":Ljava/lang/String;
    const-string v6, "SIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2503
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2504
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2505
    const-string v6, "SIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[delete]dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2509
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2510
    return-void
.end method

.method private removeOldKPMFolderByThread()V
    .locals 2

    .prologue
    .line 2476
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$21;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$21;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2481
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2482
    return-void
.end method

.method private removeOldLanguagePackFolder(Ljava/io/File;)V
    .locals 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 2454
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2457
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 2458
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4

    .line 2459
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 2460
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2461
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2462
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2459
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2465
    :cond_3
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolder(Ljava/io/File;)V

    goto :goto_2

    .line 2469
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2470
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private removeOldLanguagePackFolderByThread()V
    .locals 2

    .prologue
    .line 2443
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$20;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$20;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2450
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2451
    return-void
.end method

.method private setChineseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V
    .locals 3
    .param p1, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "isStroke"    # Z

    .prologue
    .line 984
    if-eqz p1, :cond_0

    .line 985
    if-eqz p2, :cond_1

    .line 986
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "stroke"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    const-string v0, "CN"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "pinyin"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_2
    const-string v0, "HK"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 990
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "cangjie"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :cond_3
    const-string v0, "TW"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "zhuyin"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentSwiftKeyController()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0

    .line 324
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0
.end method

.method private setJapaneseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V
    .locals 3
    .param p1, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "isPhonePadMode"    # Z

    .prologue
    .line 998
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 1001
    :cond_0
    if-eqz p2, :cond_1

    .line 1002
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "hiragana"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "romaji"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized setLoadLangugagePackFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    monitor-exit p0

    return-void

    .line 975
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1709
    return-void
.end method

.method private setParameterForChinese()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1660
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1661
    .local v0, "inputMode":I
    if-eq v0, v4, :cond_0

    .line 1662
    const-string v1, "continuous-input"

    const-string v2, "end-decay"

    const v3, 0x3e4ccccd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1663
    const-string v1, "continuous-input"

    const-string v2, "distance-decay"

    const v3, 0x3eb33333

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1664
    const-string v1, "continuous-input"

    const-string v2, "confidence-factor"

    const v3, 0x3f333333

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1667
    :cond_0
    return v4
.end method

.method private setParameterForJapanese()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000

    .line 1695
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1696
    .local v0, "inputMode":I
    if-eq v0, v5, :cond_0

    .line 1697
    const-string v1, "input-model"

    const-string v2, "partial-probability"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1698
    const-string v1, "input-model"

    const-string v2, "partial-promote-probability"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1699
    const-string v1, "input-model"

    const-string v2, "suffix-skip-probability"

    const v3, 0x3dcccccd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1700
    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    const/high16 v3, 0x3f800000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1701
    const-string v1, "input-model"

    const-string v2, "multi-term-leniency"

    const/high16 v3, 0x40a00000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1704
    :cond_0
    return v5
.end method

.method private setParameterForKorPhonepad()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const v6, 0x3e4ccccd

    const/4 v2, 0x1

    .line 1671
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    const/high16 v4, 0x6b6f0000

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "V1_5"

    const-string v4, "V1_5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1673
    :cond_0
    const-string v3, "input-model"

    const-string v4, "use-wildcards"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v3, v4, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1691
    :goto_0
    return v1

    .line 1677
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    .line 1678
    .local v0, "hangulMode":I
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 1680
    const-string v3, "input-model"

    const-string v4, "use-wildcards"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v3, v4, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1684
    :cond_2
    const-string v3, "input-model"

    const-string v4, "space-skip-probability"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1685
    const-string v3, "continuous-input"

    const-string v4, "feature-threshold"

    const/high16 v5, 0x3f800000

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1686
    const-string v3, "continuous-input"

    const-string v4, "end-decay"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1687
    const-string v3, "continuous-input"

    const-string v4, "length-decay"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1688
    const-string v3, "continuous-input"

    const-string v4, "distance-decay"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1689
    const-string v3, "results"

    const-string v4, "prune-ratio"

    const v5, 0x3b1d4952

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1690
    const-string v3, "input-model"

    const-string v4, "use-wildcards"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v2

    .line 1691
    goto :goto_0
.end method

.method private declared-synchronized setSessionPrivateSetting()V
    .locals 3

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-nez v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    .line 601
    .local v0, "currentLangID":I
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    .line 602
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setChineseSearchType(IZ)V

    .line 603
    const-string v1, "V1_5"

    const-string v2, "V1_5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameterForChinese()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .end local v0    # "currentLangID":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 606
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    .line 608
    .restart local v0    # "currentLangID":I
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    .line 609
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setupParameter()V

    .line 610
    const-string v1, "V1_5"

    const-string v2, "V1_5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameterForJapanese()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    .end local v0    # "currentLangID":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 614
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setupParameter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setupParameter()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x3ecccccd

    .line 1618
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    .line 1619
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1620
    .local v0, "inputMode":I
    if-eq v0, v5, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1624
    :cond_0
    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1625
    const-string v1, "input-model"

    const-string v2, "prefix-probability"

    const v3, 0x3c23d70a

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1630
    :goto_0
    const-string v1, "continuous-input"

    const-string v2, "prefix-probability"

    const v3, 0x3727c5ac

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1631
    const-string v1, "continuous-input"

    const-string v2, "distance-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1632
    const-string v1, "continuous-input"

    const-string v2, "confidence-factor"

    const v3, 0x3f333333

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1633
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    if-eqz v1, :cond_4

    .line 1634
    const-string v1, "results"

    const-string v2, "verbatim-probability"

    const v3, 0x1e3ce508

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1638
    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1639
    const-string v1, "input-model"

    const-string v2, "anykey-probability"

    const v3, 0x3827c5ac

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1643
    :goto_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v1

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-eq v1, v2, :cond_1

    .line 1644
    const-string v1, "input"

    const-string v2, "max-displacement-ratio"

    const v3, 0x3e99999a

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1647
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameterForKorPhonepad()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "V1_5"

    const-string v2, "V1_5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1648
    const-string v1, "input-model"

    const-string v2, "space-skip-probability"

    const v3, 0x382bf76a

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1649
    const-string v1, "continuous-input"

    const-string v2, "feature-threshold"

    const/high16 v3, 0x3fc00000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1650
    const-string v1, "continuous-input"

    const-string v2, "end-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1651
    const-string v1, "continuous-input"

    const-string v2, "length-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1652
    const-string v1, "continuous-input"

    const-string v2, "distance-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1653
    const-string v1, "results"

    const-string v2, "prune-ratio"

    const v3, 0x38d1b717

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1656
    :cond_2
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SwiftkeyWrapper] currentLangauge : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    return-void

    .line 1627
    :cond_3
    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    const/high16 v3, 0x3f000000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1628
    const-string v1, "input-model"

    const-string v2, "prefix-probability"

    const v3, 0x3dcccccd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1636
    :cond_4
    const-string v1, "results"

    const-string v2, "verbatim-probability"

    const v3, 0x33d6bf95

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1641
    :cond_5
    const-string v1, "input-model"

    const-string v2, "anykey-probability"

    const v3, 0x3729732b

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private skipReprospectiveCorrection(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1369
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private updateEnabledLanguageList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, "enabledLanaguage":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    .line 785
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 786
    return-void
.end method

.method private updateRetrospectiveCorrection(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;)I
    .locals 5
    .param p1, "preSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "postSequence"    # Lcom/touchtype_fluency/Sequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1781
    const/4 v1, 0x0

    .line 1782
    .local v1, "predictions":Lcom/touchtype_fluency/Predictions;
    const/4 v0, 0x0

    .line 1783
    .local v0, "isChangedModel":Z
    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-eqz v4, :cond_0

    .line 1784
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->registerPredictionListener()V

    .line 1785
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V

    .line 1810
    :goto_0
    return v2

    .line 1787
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1788
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    .line 1789
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1790
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1791
    const-string v2, "SamsungIME"

    const-string v3, "[SwiftkeyWrapper] mPredictions are returned rapidly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_1
    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    .line 1796
    :cond_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1797
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    move-result v0

    .line 1799
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2, p1, p2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    .line 1800
    iput v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 1801
    if-eqz v0, :cond_4

    .line 1802
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableAllModel()V

    .line 1804
    :cond_4
    if-eqz v1, :cond_5

    .line 1805
    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1807
    goto :goto_0
.end method

.method private updateSelectedLanguageList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, "selectedLanaguage":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    .line 790
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 791
    return-void
.end method

.method private declared-synchronized updateSuggestionUIThread()V
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public breakContext()V
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    .line 2148
    return-void
.end method

.method public breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "longBeforeText"    # Ljava/lang/String;

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getLastTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public cancelTrace()Z
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->cancelPreviewFlow()Z

    move-result v0

    return v0
.end method

.method public checkChineseSequence()V
    .locals 5

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1146
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1147
    const/16 v2, 0x8c

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1148
    .local v1, "longBeforeText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1149
    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1150
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1151
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1152
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1157
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "longBeforeText":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 22
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;
    .param p2, "posOfBeforeText"    # [I
    .param p3, "posOfAfterText"    # [I

    .prologue
    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    .line 1011
    .local v7, "isJapanese":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkChineseSequence()V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    goto :goto_0

    .line 1018
    :cond_2
    if-eqz v7, :cond_3

    .line 1019
    invoke-direct/range {p0 .. p3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkCurrentSequenceForJapanese(Ljava/lang/StringBuilder;[I[I)V

    goto :goto_0

    .line 1022
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 1023
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v13, 0x0

    .line 1024
    .local v13, "postSequence":Lcom/touchtype_fluency/Sequence;
    if-eqz v5, :cond_9

    .line 1026
    const/4 v15, 0x0

    .line 1027
    .local v15, "selectedText":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 1028
    .local v11, "longBeforeText":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 1029
    .local v10, "longAfterText":Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 1030
    .local v14, "prevText":Ljava/lang/CharSequence;
    const/16 v19, 0x8c

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isEmptyEditText()Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v14, :cond_4

    if-eqz v14, :cond_a

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_a

    .line 1032
    :cond_4
    const-string v15, ""

    .line 1033
    const-string v11, ""

    .line 1034
    const-string v10, ""

    .line 1046
    :goto_1
    const/4 v4, 0x0

    .line 1047
    .local v4, "currentString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1048
    .local v8, "isSelectedText":Z
    if-nez v11, :cond_5

    .line 1049
    const-string v11, ""

    .line 1051
    :cond_5
    if-eqz v15, :cond_d

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_d

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1054
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_c

    .line 1055
    :cond_6
    const/16 v19, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v20

    aput v20, p2, v19

    .line 1059
    :goto_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    .line 1060
    const/4 v8, 0x1

    .line 1086
    :goto_3
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const/4 v13, 0x0

    .line 1089
    if-eqz v10, :cond_16

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_16

    .line 1090
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->skipReprospectiveCorrection(Ljava/lang/StringBuilder;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1091
    const/4 v13, 0x0

    .line 1092
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    .line 1118
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1122
    :cond_8
    if-eqz v8, :cond_17

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    .line 1133
    .end local v4    # "currentString":Ljava/lang/String;
    .end local v8    # "isSelectedText":Z
    .end local v10    # "longAfterText":Ljava/lang/CharSequence;
    .end local v11    # "longBeforeText":Ljava/lang/CharSequence;
    .end local v14    # "prevText":Ljava/lang/CharSequence;
    .end local v15    # "selectedText":Ljava/lang/CharSequence;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateRetrospectiveCorrection(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;)I

    goto/16 :goto_0

    .line 1036
    .restart local v10    # "longAfterText":Ljava/lang/CharSequence;
    .restart local v11    # "longBeforeText":Ljava/lang/CharSequence;
    .restart local v14    # "prevText":Ljava/lang/CharSequence;
    .restart local v15    # "selectedText":Ljava/lang/CharSequence;
    :cond_a
    const-string v19, "SamsungIME"

    const-string v20, "SwiftkeyWrapper-checkCurrentSequence : use IC"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1038
    if-eqz v15, :cond_b

    .line 1039
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 1040
    const-string v15, ""

    .line 1043
    :cond_b
    const/16 v19, 0x8c

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1044
    const/16 v19, 0x8c

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_1

    .line 1057
    .restart local v4    # "currentString":Ljava/lang/String;
    .restart local v8    # "isSelectedText":Z
    :cond_c
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    goto/16 :goto_2

    .line 1061
    :cond_d
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_e

    .line 1062
    new-instance v19, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v19 .. v19}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1063
    new-instance v19, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-direct/range {v19 .. v21}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1064
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    goto/16 :goto_3

    .line 1065
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 1068
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v19

    add-int/lit8 v6, v19, -0x1

    .local v6, "index":I
    :goto_6
    if-ltz v6, :cond_f

    .line 1069
    invoke-interface {v11, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLetter(C)Z

    move-result v19

    if-nez v19, :cond_10

    .line 1073
    :cond_f
    new-instance v19, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v19 .. v19}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1074
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v6, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1075
    new-instance v19, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1076
    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    aput v20, p2, v19

    goto/16 :goto_3

    .line 1068
    :cond_10
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 1078
    .end local v6    # "index":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v21

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v16

    .line 1080
    .local v16, "str":Ljava/lang/String;
    if-eqz v16, :cond_12

    .line 1081
    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    aput v20, p2, v19

    goto/16 :goto_3

    .line 1083
    :cond_12
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    goto/16 :goto_3

    .line 1093
    .end local v16    # "str":Ljava/lang/String;
    :cond_13
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLetter(C)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1094
    new-instance v9, Lcom/touchtype_fluency/WordBreakIterator;

    invoke-direct {v9}, Lcom/touchtype_fluency/WordBreakIterator;-><init>()V

    .line 1095
    .local v9, "it":Lcom/touchtype_fluency/WordBreakIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, "beforeWord":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1097
    .local v18, "totalWord":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/touchtype_fluency/WordBreakIterator;->setText(Ljava/lang/String;)V

    .line 1098
    const/16 v19, 0x0

    invoke-virtual {v9}, Lcom/touchtype_fluency/WordBreakIterator;->next()I

    move-result v20

    aput v20, p3, v19

    .line 1099
    const/16 v19, 0x0

    aget v19, p3, v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    if-nez v8, :cond_14

    .line 1100
    const/16 v19, 0x0

    aget v20, p3, v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v20, v20, v21

    aput v20, p3, v19

    .line 1104
    :goto_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, p3, v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v19

    sget-object v20, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    const/16 v19, 0x0

    aget v19, p3, v19

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 1107
    const/16 v19, 0x0

    aget v19, p3, v19

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1108
    .local v12, "postContext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v13

    goto/16 :goto_4

    .line 1102
    .end local v12    # "postContext":Ljava/lang/String;
    :cond_14
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    goto :goto_7

    .line 1110
    .end local v3    # "beforeWord":Ljava/lang/String;
    .end local v9    # "it":Lcom/touchtype_fluency/WordBreakIterator;
    .end local v18    # "totalWord":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v19

    sget-object v20, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v13

    .line 1113
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    goto/16 :goto_4

    .line 1116
    :cond_16
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    goto/16 :goto_4

    .line 1125
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v17

    .line 1126
    .local v17, "tempTH":Lcom/touchtype_fluency/TouchHistory;
    if-nez v17, :cond_18

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1129
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public checkJapaneseSequence()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1296
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1297
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1298
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    .line 1299
    const/16 v9, 0x3f

    invoke-interface {v1, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1302
    .local v2, "longBeforeText":Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    .line 1303
    const-string v2, ""

    .line 1306
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1308
    .local v0, "composingText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v7, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0xc8

    if-le v9, v10, :cond_6

    .line 1311
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1312
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setVerbatim(Ljava/lang/String;)V

    .line 1314
    :cond_2
    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1315
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const-string v10, ""

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    .line 1316
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v9}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1317
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1318
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1320
    :cond_3
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isRecaptureWord()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1321
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    .line 1365
    .end local v0    # "composingText":Ljava/lang/CharSequence;
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "longBeforeText":Ljava/lang/CharSequence;
    :cond_4
    :goto_0
    return v7

    .line 1325
    .restart local v0    # "composingText":Ljava/lang/CharSequence;
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "longBeforeText":Ljava/lang/CharSequence;
    :cond_5
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9, v7}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    move v7, v8

    .line 1326
    goto :goto_0

    .line 1328
    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int v5, v9, v10

    .line 1329
    .local v5, "subSequenceLen":I
    const/4 v4, 0x0

    .line 1330
    .local v4, "subSequence":Ljava/lang/CharSequence;
    if-lez v5, :cond_8

    .line 1331
    invoke-interface {v2, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1337
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatimForPrediction()Ljava/lang/String;

    move-result-object v3

    .line 1338
    .local v3, "selectVerbatim":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1340
    .local v6, "verbatimForComposing":Ljava/lang/CharSequence;
    if-nez v3, :cond_9

    .line 1341
    move-object v6, v0

    .line 1346
    :goto_2
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1348
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 1349
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v8, v9, :cond_a

    .line 1350
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchHistory(Ljava/lang/Character;)V

    .line 1357
    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1358
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1359
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1361
    :cond_7
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    goto :goto_0

    .line 1333
    .end local v3    # "selectVerbatim":Ljava/lang/String;
    .end local v6    # "verbatimForComposing":Ljava/lang/CharSequence;
    :cond_8
    const-string v4, ""

    goto :goto_1

    .line 1343
    .restart local v3    # "selectVerbatim":Ljava/lang/String;
    .restart local v6    # "verbatimForComposing":Ljava/lang/CharSequence;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "verbatimForComposing":Ljava/lang/CharSequence;
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v6    # "verbatimForComposing":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1352
    :cond_a
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_3

    .line 1355
    :cond_b
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const-string v9, ""

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public clearContext()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2140
    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 2141
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContextExceptTouchHistory()V

    .line 2142
    return v1
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 1
    .param p1, "bCommitSpace"    # Z

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    .line 2058
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->storeTouchHistory(Ljava/lang/String;I)V

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v1, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->choosePrediction(Lcom/touchtype_fluency/Sequence;I)V

    .line 2052
    const/4 v0, 0x0

    return v0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "length"    # S
    .param p3, "force"    # Z

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveIndex([I)I
    .locals 2
    .param p1, "outIndex"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1851
    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    aput v0, p1, v1

    .line 1852
    return v1
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 1815
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1816
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    if-eqz v2, :cond_1

    .line 1817
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1818
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    :cond_0
    :goto_0
    return v5

    .line 1820
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1821
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 1822
    const/16 v2, 0x8c

    invoke-interface {v1, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1823
    .local v0, "context":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1824
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1825
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1826
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 4
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1835
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1836
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    .line 1837
    .local v1, "predictions":Lcom/touchtype_fluency/Predictions;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1838
    const/4 v0, 0x0

    .line 1839
    .local v0, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-le v2, p2, :cond_1

    .line 1840
    invoke-virtual {v1, p2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    .line 1844
    :goto_0
    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    .end local v0    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_0
    return v3

    .line 1842
    .restart local v0    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_1
    invoke-virtual {v1, v3}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    goto :goto_0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContactSpecificID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInputBuffer(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "outSuggestion"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getInputBuffer()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2363
    return-void
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2345
    const-string v0, ""

    .line 2346
    .local v0, "current":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    if-eqz v1, :cond_0

    .line 2347
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v1}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v0

    .line 2349
    :cond_0
    return-object v0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getFullCPSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPositionByTap(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2417
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-nez v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    iget-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getKey(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;IIZ)I

    move-result v0

    .line 2421
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 2
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
    .line 2037
    .local p1, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;I)V

    .line 2038
    const/4 v0, 0x0

    return v0
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
    .line 2063
    .local p2, "predictList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkChineseSequence()V

    .line 2064
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkJapaneseSequence()Z

    .line 2065
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    .line 2066
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getSuggestion(Ljava/util/ArrayList;)I

    .line 2068
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .param p2, "inputText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1971
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 18
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
    .line 1857
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isPreviewFlow()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1858
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getPreviewSuggestion(Ljava/util/ArrayList;)I

    move-result v15

    .line 1952
    :goto_0
    return v15

    .line 1860
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictionsAsArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1861
    .local v9, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v14

    .line 1862
    .local v14, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    if-nez v9, :cond_1

    .line 1863
    const/4 v15, -0x1

    goto :goto_0

    .line 1865
    :cond_1
    if-nez p1, :cond_2

    .line 1866
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 1868
    .restart local p1    # "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v17, -0x1

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 1869
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 1870
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 1872
    const/4 v15, 0x0

    goto :goto_0

    .line 1874
    :cond_3
    const/4 v4, 0x0

    .line 1875
    .local v4, "index":I
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v6

    .line 1876
    .local v6, "language":I
    const/high16 v15, -0x10000

    and-int/2addr v15, v6

    const/high16 v16, 0x656e0000

    and-int v15, v15, v16

    if-eqz v15, :cond_5

    const/4 v5, 0x1

    .line 1877
    .local v5, "isEnglish":Z
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/touchtype_fluency/Prediction;

    .line 1878
    .local v7, "prediction":Lcom/touchtype_fluency/Prediction;
    if-nez p2, :cond_6

    const/4 v15, 0x3

    if-ne v4, v15, :cond_6

    .line 1901
    .end local v7    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v10

    .line 1902
    .local v10, "reservePredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1903
    .local v11, "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1876
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "isEnglish":Z
    .end local v10    # "reservePredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "str":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1881
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "isEnglish":Z
    .restart local v7    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_6
    invoke-virtual {v7}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v8

    .line 1882
    .local v8, "predictionText":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v13

    .line 1883
    .local v13, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v15, "verbatim"

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "exact-match-promoted"

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1884
    :cond_7
    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1885
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 1890
    :cond_8
    :goto_4
    if-eqz v8, :cond_9

    const-string v15, "\ufffc"

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 1891
    const/high16 v15, 0x74680000

    if-ne v6, v15, :cond_b

    .line 1892
    const-string v15, "\\p{Space}"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1893
    const-string v15, "\\u200b"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1894
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 1900
    goto/16 :goto_2

    .line 1887
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "SWIFTKEY_VERBATIM_INDEX"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_4

    .line 1896
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1905
    .end local v7    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v8    # "predictionText":Ljava/lang/String;
    .end local v13    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "reservePredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1906
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 1907
    .local v12, "suggestion":Ljava/lang/CharSequence;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-static {v12}, Lcom/diotek/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 1909
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v15

    if-eqz v15, :cond_e

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v16, 0x3002

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 1910
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    array-length v15, v15

    if-ge v2, v15, :cond_f

    .line 1911
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    aget-object v15, v15, v2

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 1912
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    aget-object v15, v15, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1910
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1916
    .end local v2    # "i":I
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    array-length v15, v15

    if-ge v2, v15, :cond_f

    .line 1917
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 1928
    .end local v2    # "i":I
    .end local v12    # "suggestion":Ljava/lang/CharSequence;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_13

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_13

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const v16, 0xfffc

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 1929
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 1930
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1931
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    array-length v15, v15

    if-ge v2, v15, :cond_13

    .line 1932
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    aget-object v15, v15, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1920
    .restart local v12    # "suggestion":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    aget-object v15, v15, v2

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    .line 1921
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    aget-object v15, v15, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1916
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1935
    .end local v2    # "i":I
    .end local v12    # "suggestion":Ljava/lang/CharSequence;
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    array-length v15, v15

    if-ge v2, v15, :cond_13

    .line 1936
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    aget-object v15, v15, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1944
    .end local v2    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isExplicitTextSelection()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 1946
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/diotek/ime/framework/input/additionalprediction/AdditionalPrediction;->getAdditionalPrediction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1947
    .local v1, "additionalPrediction":Ljava/lang/String;
    if-eqz v1, :cond_14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 1948
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1952
    .end local v1    # "additionalPrediction":Ljava/lang/String;
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2355
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2356
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    return-void
.end method

.method public getVerbatim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    return-object v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 256
    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v8, :cond_3

    .line 257
    const/4 v5, 0x0

    .line 258
    .local v5, "result":Z
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->reset()V

    .line 259
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->reset()V

    .line 260
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->reset()V

    .line 261
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolderByThread()V

    .line 262
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldKPMFolderByThread()V

    .line 263
    new-instance v6, Ljava/io/File;

    const-string v8, "/system/sipdb"

    const-string v9, "zh_TW.zip"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v6, "zhuyinLanguagePackFile":Ljava/io/File;
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "SwiftKey"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 266
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    .line 267
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z

    move-result v5

    .line 268
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z

    move-result v8

    and-int/2addr v5, v8

    .line 269
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z

    move-result v8

    and-int/2addr v5, v8

    .line 270
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyConfigurationURL(Z)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v8

    sput-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 272
    if-eqz v5, :cond_0

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v8, :cond_2

    .line 273
    :cond_0
    const-string v7, "SamsungIME"

    const-string v8, "Fail to init input engine : NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v7, -0x1

    .line 305
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dir":Ljava/io/File;
    .end local v5    # "result":Z
    .end local v6    # "zhuyinLanguagePackFile":Ljava/io/File;
    :cond_1
    :goto_0
    return v7

    .line 276
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v5    # "result":Z
    .restart local v6    # "zhuyinLanguagePackFile":Ljava/io/File;
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setCurrentSwiftKeyController()V

    .line 277
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setExclusionPattern()V

    .line 278
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->installPreloadLanguagePack()V

    .line 279
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->initLiveLanguageSetting()V

    .line 280
    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadLanguageModels(Z)V

    .line 283
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dir":Ljava/io/File;
    .end local v5    # "result":Z
    .end local v6    # "zhuyinLanguagePackFile":Ljava/io/File;
    :cond_3
    const-string v8, "V1_5"

    const-string v9, "V1_5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 284
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isNeedToRemoveKPMEx()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 285
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeKPMExFolderByThread()V

    .line 286
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setNeedToRemoveKPMEx(Z)V

    .line 288
    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isNeedToRemoveLPMHistory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 289
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->getStorage()Lcom/touchtype_fluency/util/Storage;

    move-result-object v8

    invoke-interface {v8}, Lcom/touchtype_fluency/util/Storage;->getTempDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 291
    .local v4, "listFile":[Ljava/io/File;
    if-eqz v4, :cond_6

    :try_start_0
    array-length v8, v4

    if-lez v8, :cond_6

    .line 292
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v4

    if-ge v3, v8, :cond_6

    .line 293
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 294
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 298
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setNeedToRemoveLPMHistory(Z)V

    goto :goto_0
.end method

.method public inputKey(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1439
    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    const/4 v0, 0x0

    .line 1444
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    goto :goto_0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 9
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/4 v8, -0x5

    .line 1398
    const-string v6, "SamsungIME"

    const-string v7, "SwiftkeyWrapper-inputKey"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    if-ne p1, v8, :cond_1

    .line 1400
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->inputKey(I)I

    move-result v2

    .line 1434
    :cond_0
    :goto_0
    return v2

    .line 1402
    :cond_1
    move-object v5, p2

    .line 1403
    .local v5, "touchPoint":Landroid/graphics/PointF;
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    .line 1404
    .local v1, "isChinese":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    .line 1405
    .local v4, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    const/16 v7, 0x40

    if-lt v6, v7, :cond_2

    const/high16 v6, 0x6b6f0000

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 1406
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isSecondaryKeyMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1407
    const/4 v5, 0x0

    .line 1409
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6, p1, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchPoint(ILandroid/graphics/PointF;)V

    .line 1410
    if-eqz v1, :cond_4

    .line 1411
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isCangjieInputMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1412
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v6

    add-int/lit8 v0, v6, -0x41

    .line 1414
    .local v0, "indexOfCangjieShape":I
    :try_start_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 1423
    .end local v0    # "indexOfCangjieShape":I
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v3

    .line 1424
    .local v3, "tempPredictions":Lcom/touchtype_fluency/Predictions;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v2

    .line 1426
    .local v2, "predictions":I
    if-nez v2, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1427
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteLastInputKey()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1428
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictions(Lcom/touchtype_fluency/Predictions;)V

    .line 1431
    :cond_5
    if-eqz v1, :cond_0

    .line 1432
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->convertCodeforChinese(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateCPSpell(I)V

    goto :goto_0

    .line 1421
    .end local v2    # "predictions":I
    .end local v3    # "tempPredictions":Lcom/touchtype_fluency/Predictions;
    :cond_6
    const/4 v2, -0x1

    goto :goto_0

    .line 1415
    .restart local v0    # "indexOfCangjieShape":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public inputKeyWithoutBuild(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2565
    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 2566
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2567
    const/4 v0, 0x0

    .line 2570
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyWithoutBuild(ILandroid/graphics/PointF;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/4 v4, -0x5

    .line 2534
    if-ne p1, v4, :cond_0

    .line 2535
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->inputKeyWithoutBuild(I)I

    move-result v4

    .line 2559
    :goto_0
    return v4

    .line 2537
    :cond_0
    move-object v3, p2

    .line 2538
    .local v3, "touchPoint":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    .line 2539
    .local v1, "isChinese":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    .line 2540
    .local v2, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_1

    const/high16 v4, 0x6b6f0000

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 2541
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isSecondaryKeyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2542
    const/4 v3, 0x0

    .line 2544
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4, p1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchPoint(ILandroid/graphics/PointF;)V

    .line 2545
    if-eqz v1, :cond_3

    .line 2546
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isCangjieInputMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2547
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v4

    add-int/lit8 v0, v4, -0x41

    .line 2549
    .local v0, "indexOfCangjieShape":I
    :try_start_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 2559
    .end local v0    # "indexOfCangjieShape":I
    :cond_3
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2556
    :cond_4
    const/4 v4, -0x1

    goto :goto_0

    .line 2550
    .restart local v0    # "indexOfCangjieShape":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public inputString(Ljava/lang/StringBuilder;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addString(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 2
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "pbAddSpace"    # [Z

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isAutoAceeptBeforeFlow(Lcom/touchtype_fluency/Sequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    const/4 v0, 0x1

    .line 1580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isValidWord(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2302
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 2303
    const/4 v0, 0x1

    .line 2305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivateImeOptionsCSC()Z
    .locals 1

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isContactSpecificContext()Z

    move-result v0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 11
    .param p1, "code"    # I

    .prologue
    const/16 v10, 0x39

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x1

    .line 2152
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 2153
    .local v3, "range":I
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 2154
    .local v1, "inputMethod":I
    if-eq v3, v5, :cond_0

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 2297
    :cond_1
    :goto_0
    :sswitch_0
    return v5

    .line 2157
    :cond_2
    if-eqz v1, :cond_4

    if-ne v1, v9, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x7

    if-ne v1, v7, :cond_5

    :cond_4
    if-nez v3, :cond_5

    const/16 v7, 0xe01

    if-lt p1, v7, :cond_5

    const/16 v7, 0xe4c

    if-le p1, v7, :cond_1

    .line 2163
    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v7

    const/high16 v8, 0x74680000

    if-ne v7, v8, :cond_6

    const/16 v7, -0x3a

    if-eq p1, v7, :cond_1

    .line 2166
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v4

    .line 2167
    .local v4, "strokeModeOn":Z
    if-eqz v4, :cond_8

    const/16 v7, 0x37

    if-eq p1, v7, :cond_7

    const/16 v7, 0x38

    if-eq p1, v7, :cond_7

    if-eq p1, v10, :cond_7

    const/16 v7, 0x30

    if-ne p1, v7, :cond_8

    :cond_7
    move v5, v6

    .line 2168
    goto :goto_0

    .line 2170
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eq v1, v5, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_9

    if-ne v1, v9, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    if-nez v3, :cond_a

    const/16 v7, 0x32

    if-lt p1, v7, :cond_a

    if-le p1, v10, :cond_b

    :cond_a
    const/16 v7, 0x27

    if-ne p1, v7, :cond_c

    .line 2178
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 2179
    goto :goto_0

    .line 2182
    :cond_c
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2183
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    int-to-char v8, p1

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isValidCharacter(C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2185
    if-eq v1, v5, :cond_d

    if-ne v1, v9, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2187
    :cond_d
    sparse-switch p1, :sswitch_data_0

    .line 2207
    :cond_e
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    .line 2208
    .local v0, "inputLanguage":I
    const v7, 0x7a685457

    if-ne v0, v7, :cond_10

    if-nez v3, :cond_10

    .line 2210
    if-eq v1, v5, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_f

    if-ne v1, v9, :cond_10

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2213
    :cond_f
    sparse-switch p1, :sswitch_data_1

    .line 2240
    :cond_10
    if-eqz v4, :cond_12

    .line 2241
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_12

    if-nez v3, :cond_12

    .line 2243
    if-eq v1, v5, :cond_11

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_11

    if-ne v1, v9, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2246
    :cond_11
    sparse-switch p1, :sswitch_data_2

    .line 2267
    :cond_12
    const/high16 v6, 0x6c6f0000

    if-ne v0, v6, :cond_18

    .line 2268
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoUnicode(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2276
    :cond_13
    const v6, 0x6d795a57

    if-ne v0, v6, :cond_14

    .line 2277
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2281
    :cond_14
    const/high16 v6, 0x64650000

    if-ne v0, v6, :cond_16

    if-nez v3, :cond_16

    if-eq v1, v5, :cond_15

    if-ne v1, v9, :cond_16

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2285
    :cond_15
    const/16 v6, 0xa7

    if-eq p1, v6, :cond_1

    .line 2290
    :cond_16
    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2291
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v2

    .line 2292
    .local v2, "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    invoke-static {p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v6

    invoke-virtual {v2, p1, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v6

    invoke-virtual {v2, p1, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2297
    .end local v2    # "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    :cond_17
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    goto/16 :goto_0

    .line 2225
    :sswitch_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 2226
    goto/16 :goto_0

    .line 2253
    :sswitch_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 2254
    goto/16 :goto_0

    .line 2271
    :cond_18
    const/high16 v6, 0x6b6d0000

    if-ne v0, v6, :cond_13

    .line 2272
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isKhmerUnicode(I)Z

    move-result v6

    if-eqz v6, :cond_13

    goto/16 :goto_0

    .line 2187
    :sswitch_data_0
    .sparse-switch
        -0x104 -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
    .end sparse-switch

    .line 2213
    :sswitch_data_1
    .sparse-switch
        0x27 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x2c7 -> :sswitch_0
        0x2ca -> :sswitch_0
        0x2cb -> :sswitch_0
        0x2d9 -> :sswitch_0
    .end sparse-switch

    .line 2246
    :sswitch_data_2
    .sparse-switch
        0x2a -> :sswitch_0
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x31d0 -> :sswitch_0
        0x31d1 -> :sswitch_0
        0x31d3 -> :sswitch_0
        0x31d4 -> :sswitch_0
        0x31d6 -> :sswitch_0
    .end sparse-switch
.end method

.method public joinChunjiin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2083
    invoke-static {p1}, Lcom/touchtype_fluency/Chonjiin;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public joinHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2073
    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public joinNaragul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2088
    invoke-static {p1}, Lcom/touchtype_fluency/NaratGeul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2310
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2320
    :cond_0
    :goto_0
    return-void

    .line 2319
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnDynamicModel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    if-nez v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnTempDynamicModel(Ljava/lang/String;)V

    .line 2028
    :cond_0
    return-void
.end method

.method public processTrace([Landroid/graphics/PointF;IB)S
    .locals 6
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "bCount"    # B

    .prologue
    const/4 v0, -0x1

    .line 1585
    if-nez p1, :cond_0

    .line 1609
    :goto_0
    return v0

    .line 1588
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v1

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_1

    const-string v1, "V1_5"

    const-string v2, "V1_5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->startChonjiinFlow()V

    .line 1592
    :cond_1
    if-eq p3, v0, :cond_3

    .line 1593
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isPreviewFlow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1594
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$16;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$16;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->registerPreviewFlowPredictionListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    .line 1604
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->previewFlow(Lcom/touchtype_fluency/Sequence;[Landroid/graphics/PointF;ILjava/lang/String;I)I

    .line 1605
    const/4 v0, 0x1

    goto :goto_0

    .line 1607
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->processFlow([Landroid/graphics/PointF;I)V

    .line 1609
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnKeyPressModel(I)V

    .line 1999
    const/4 v0, 0x0

    return v0
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->removeCurrentTermFromTemporaryModel()V

    .line 2408
    return-void
.end method

.method public removeTerm(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->removeTerm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    .line 2136
    :cond_0
    return-void
.end method

.method public replaceKey(ILandroid/graphics/PointF;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/16 v6, 0x40

    .line 1450
    move-object v4, p2

    .line 1451
    .local v4, "touchPoint":Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    .line 1452
    .local v1, "isChinese":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    .line 1453
    .local v3, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    const/high16 v5, 0x6b6f0000

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 1456
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isSecondaryKeyMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1457
    const/4 v4, 0x0

    .line 1459
    :cond_1
    if-eqz v1, :cond_2

    .line 1460
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isCangjieInputMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1461
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    add-int/lit8 v0, v5, -0x41

    .line 1463
    .local v0, "indexOfCangjieShape":I
    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 1469
    .end local v0    # "indexOfCangjieShape":I
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteLastInputKey()Z

    .line 1470
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5, p1, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchPoint(ILandroid/graphics/PointF;)V

    .line 1474
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v2

    .line 1476
    .local v2, "predictions":I
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1477
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteLastInputKey()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1478
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v2

    .line 1481
    :cond_3
    if-eqz v1, :cond_4

    .line 1482
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->convertCodeforChinese(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateCPSpell(I)V

    .line 1484
    .end local v2    # "predictions":I
    :cond_4
    :goto_1
    return v2

    .line 1472
    :cond_5
    const/4 v2, -0x1

    goto :goto_1

    .line 1464
    .restart local v0    # "indexOfCangjieShape":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public resetTextFieldState()V
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->resetTemporaryModel()V

    .line 2413
    return-void
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 2
    .param p1, "nPhoneticIndex"    # I

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v1, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setChinesePhoneticIndex(Lcom/touchtype_fluency/Sequence;I)V

    .line 2044
    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1, "contextAwareUniqueID"    # Ljava/lang/String;

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setContactSpecificID(Ljava/lang/String;)V

    .line 2368
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setFieldSpecificType(I)V

    .line 2393
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;

    .line 516
    return-void
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setIntentionalEvent(Ljava/lang/String;)V

    .line 2398
    return-void
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 2
    .param p1, "trueOrFalse"    # Z

    .prologue
    .line 2377
    if-nez p1, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setContactSpecificID(Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->disableContactSpecificContext()V

    .line 2383
    :goto_0
    return-void

    .line 2381
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableContactSpecificContext()V

    goto :goto_0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 3
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 562
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isLatinSoftFuncKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwPhonepadEnKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object p1

    .line 569
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    .line 570
    .local v0, "currentLangID":I
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    .line 579
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 595
    :cond_1
    :goto_1
    return-void

    .line 565
    .end local v0    # "currentLangID":I
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKoreaSoftFuncKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwPhonepadKrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object p1

    goto :goto_0

    .line 582
    .restart local v0    # "currentLangID":I
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 585
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    .line 586
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 587
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setSessionPrivateSetting()V

    .line 588
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 589
    const/high16 v1, 0x6b6f0000

    if-ne v0, v1, :cond_4

    .line 590
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_1

    .line 591
    :cond_4
    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVerbatim(Ljava/lang/String;)V
    .locals 0
    .param p1, "verbatim"    # Ljava/lang/String;

    .prologue
    .line 2118
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    .line 2119
    return-void
.end method

.method public setVerbatirmsInPrediction(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 2128
    .local p1, "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setReservePredictions(Ljava/util/ArrayList;)V

    .line 2129
    return-void
.end method

.method public splitHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 2078
    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAcuteAccentState(Z)V
    .locals 9
    .param p1, "isAcuteAccent"    # Z

    .prologue
    const/4 v5, 0x0

    .line 676
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    .line 677
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    .line 678
    .local v3, "currentLangID":I
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x656c0000

    if-eq v3, v0, :cond_0

    const/high16 v0, 0x6c760000

    if-ne v3, v0, :cond_2

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    .line 680
    .local v4, "inputMode":I
    if-eqz v4, :cond_1

    const/4 v0, 0x7

    if-eq v4, v0, :cond_1

    const/16 v0, 0x8

    if-ne v4, v0, :cond_2

    .line 683
    :cond_1
    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    .line 684
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 685
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "KeyPressModelEx"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 687
    .local v1, "dir":Ljava/io/File;
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v7

    .line 688
    .local v7, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    move v6, p1

    invoke-interface/range {v0 .. v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZLjava/util/List;)Z

    .line 689
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    .line 694
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "inputMode":I
    .end local v7    # "packs":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v8    # "context":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method public updateEngine()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 621
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setCurrentSwiftKeyController()V

    .line 622
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    .line 623
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearTouchHistoryRepository()V

    .line 624
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    .line 625
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    .line 626
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    .line 627
    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 631
    .local v0, "force":Z
    if-eqz v0, :cond_1

    .line 632
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 635
    .local v1, "isUseLiveLanguage":Z
    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    if-eq v2, v1, :cond_2

    .line 636
    const/4 v0, 0x1

    .line 637
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    .line 639
    :cond_2
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadLanguageModels(Z)V

    .line 640
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setSequenceType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 641
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 643
    .end local v0    # "force":Z
    .end local v1    # "isUseLiveLanguage":Z
    :cond_3
    return v4
.end method

.method public updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p2, "currentWord"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2426
    .local p1, "touchInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;>;"
    new-instance v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    .line 2428
    .local v2, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    if-nez v2, :cond_0

    .line 2440
    :goto_0
    return-void

    .line 2431
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    .line 2432
    .local v3, "touchInfo":Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2433
    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 2434
    .local v1, "point":Landroid/graphics/PointF;
    new-instance v4, Lcom/touchtype_fluency/Point;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    sget-object v5, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    invoke-virtual {v2, v4, v5}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    goto :goto_1

    .line 2436
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_1
    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getKeyCode()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    goto :goto_1

    .line 2439
    .end local v3    # "touchInfo":Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4, v2, p2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateKeyPressModeling(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public updateSelectList()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1748
    const/4 v1, 0x0

    .line 1749
    .local v1, "predictions":Lcom/touchtype_fluency/Predictions;
    const/4 v0, 0x0

    .line 1750
    .local v0, "isChangedModel":Z
    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-eqz v4, :cond_0

    .line 1751
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->registerPredictionListener()V

    .line 1752
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V

    .line 1777
    :goto_0
    return v2

    .line 1754
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1755
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    .line 1756
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1757
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1758
    const-string v2, "SamsungIME"

    const-string v3, "[SwiftkeyWrapper] mPredictions are returned rapidly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_1
    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    .line 1763
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1764
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    move-result v0

    .line 1766
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    .line 1767
    iput v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 1768
    if-eqz v0, :cond_4

    .line 1769
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableAllModel()V

    .line 1771
    :cond_4
    if-eqz v1, :cond_5

    .line 1772
    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1774
    goto :goto_0
.end method

.method public updateShiftState()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 648
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 649
    .local v3, "isUpperCase":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    .line 650
    .local v1, "isCapslock":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    .line 651
    .local v2, "isShiftPressed":Z
    if-nez v3, :cond_0

    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    .line 652
    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    :cond_2
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCapslockMode:Z

    .line 653
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-boolean v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCapslockMode:Z

    invoke-interface {v4, v7, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateShiftState(ZZ)V

    .line 654
    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 656
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4, v5, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateShiftState(ZZ)V

    .line 657
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 658
    .local v0, "inputType":I
    if-eqz v0, :cond_4

    const/4 v4, 0x7

    if-eq v0, v4, :cond_4

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_5

    .line 662
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 663
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 664
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    const/high16 v5, 0x6b6f0000

    if-ne v4, v5, :cond_8

    .line 665
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-static {v5}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    .line 672
    .end local v0    # "inputType":I
    :cond_5
    :goto_2
    return-void

    :cond_6
    move v4, v5

    .line 651
    goto :goto_0

    :cond_7
    move v4, v5

    .line 652
    goto :goto_1

    .line 667
    .restart local v0    # "inputType":I
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 2004
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2005
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addCPPhrase(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2020
    :goto_0
    return v0

    .line 2008
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    .line 2009
    .local v0, "cnt":I
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateCPSpell(I)V

    goto :goto_0

    .line 2012
    .end local v0    # "cnt":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->doNoteWordDoneForXt9(I)I

    .line 2013
    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2014
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnTempDynamicModel(Ljava/lang/String;)V

    .line 2016
    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    if-eqz v2, :cond_3

    .line 2017
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnKeyPressModel(I)V

    :cond_3
    move v0, v1

    .line 2020
    goto :goto_0
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->saveAndClear()V

    .line 2325
    return-void
.end method
