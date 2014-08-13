.class public Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;,
        Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;,
        Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;
    }
.end annotation


# static fields
.field public static final CHINESE_HONGKONG:I = 0xe2

.field public static final CHINESE_SIMPLIFIED:I = 0xe1

.field public static final CHINESE_TRADITIONAL:I = 0xe0

.field public static final MSG_UPDATE_PROGRESSBAR:I = 0x0

.field public static final REFRESH_INTERVAL_TIME:I = 0x15180

.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# instance fields
.field private config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

.field private device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

.field private dlm:Lcom/nuance/swypeconnect/ac/ACDlmService;

.field private language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

.field private legalText:Ljava/lang/String;

.field private livingAlphaInput:Lcom/nuance/dlm/AlphaInput;

.field private livingKoreanInput:Lcom/nuance/dlm/KoreanInput;

.field private livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

.field final livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

.field private mAppointedDownloadLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDownloadId:I

.field private mDownloadCBs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private mDownloadableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mDownloadedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mDownloadingLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

.field private mSupportedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 87
    iput-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 107
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    .line 108
    iput-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    .line 311
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$3;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    .line 1091
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$5;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$5;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mHandler:Landroid/os/Handler;

    .line 134
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 135
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 138
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    .line 141
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 143
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->initLanguageList()V

    .line 147
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->initSharedPreferences()V

    .line 148
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->setSupportedLanguageList()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I

    return p1
.end method

.method static synthetic access$102(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->setSharedPreferencesList()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDownloadLanguage(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/diotek/ime/framework/engine/InputEngineManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-object v0
.end method

.method private addExistedLanguageList()V
    .locals 5

    .prologue
    .line 792
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/T9DB"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 794
    .local v2, "listFile":[Ljava/io/File;
    if-eqz v2, :cond_0

    :try_start_0
    array-length v3, v2

    if-lez v3, :cond_0

    .line 795
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 796
    iget-object v3, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 803
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 805
    :try_start_1
    array-length v3, v2

    if-lez v3, :cond_2

    .line 806
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 807
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ldb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 808
    iget-object v3, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 806
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 812
    .end local v1    # "i":I
    :catch_1
    move-exception v0

    .line 813
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private addSupportedLanguageList()V
    .locals 3

    .prologue
    .line 782
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 789
    :cond_0
    return-void

    .line 786
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 787
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguage(Ljava/lang/Integer;)V

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createNotification(IIZZII)V
    .locals 17
    .param p1, "resId"    # I
    .param p2, "serviceId"    # I
    .param p3, "update"    # Z
    .param p4, "onGoing"    # Z
    .param p5, "maximum"    # I
    .param p6, "current"    # I

    .prologue
    .line 691
    sget-object v13, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 692
    .local v12, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d01d6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, "downloading":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 698
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.diotek.ime.framework.engine.xt9.XT9.SETTINGS_ACTIVITY"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v6, "intent":Landroid/content/Intent;
    sget-object v13, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.diotek.ime.implement.setting.ACLanguagesSettings"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const/high16 v13, 0x20000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    sget-object v13, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    invoke-static {v13, v14, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 705
    .local v3, "downloadIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 707
    .local v9, "languages":[Lcom/diotek/ime/framework/common/Language;
    const/4 v11, -0x1

    .line 709
    .local v11, "result":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    .line 710
    move-object v2, v9

    .local v2, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v10, :cond_1

    aget-object v7, v2, v5

    .line 711
    .local v7, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    .line 713
    .local v8, "languageId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 714
    move/from16 v0, p2

    if-ne v11, v0, :cond_2

    .line 715
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const v16, 0x7f0d000f

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 725
    .end local v7    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v8    # "languageId":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 728
    if-eqz p4, :cond_4

    .line 729
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v14, 0x1080081

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 730
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v15, p6, 0x64

    div-int v15, v15, p5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v13, v0, v1, v14}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 740
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 741
    return-void

    .line 718
    .restart local v7    # "lang":Lcom/diotek/ime/framework/common/Language;
    .restart local v8    # "languageId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 719
    move/from16 v0, p2

    if-ne v11, v0, :cond_3

    .line 720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const v16, 0x7f0d000f

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 710
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 734
    .end local v7    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v8    # "languageId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v14, 0x1080082

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 736
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 737
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private getXt9LanguageId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9LanguageId(I)I

    move-result v0

    return v0
.end method

.method private initLanguageList()V
    .locals 1

    .prologue
    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    .line 750
    return-void
.end method

.method private initLivingLanguageService()V
    .locals 4

    .prologue
    .line 284
    sget-object v2, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, "sp":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-nez v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v3, "LIVING_LANGUAGE"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iput-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .line 289
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v3, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDlmService;

    if-nez v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v3, "DLM"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACDlmService;

    iput-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDlmService;

    .line 293
    const-string v2, "ACDownloadManager"

    const-string v3, "get dlmService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->disableLivingLanguage()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDlmService;

    if-nez v2, :cond_2

    .line 304
    :cond_2
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v2, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSharedPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 753
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "downloadable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    .line 754
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "downloaded"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    .line 755
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "updateable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    .line 756
    return-void
.end method

.method private modifySharedPreferenceByDeleteLanguage(I)V
    .locals 9
    .param p1, "xt9LanguageCode"    # I

    .prologue
    .line 960
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 961
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 962
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 964
    const/4 v4, 0x0

    .line 966
    .local v4, "languages":[Lcom/diotek/ime/framework/common/Language;
    const/4 v6, -0x1

    .line 968
    .local v6, "result":I
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    .line 969
    move-object v0, v4

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v0, v1

    .line 970
    .local v2, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 972
    .local v3, "languageId":Ljava/lang/String;
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const/4 v8, -0x1

    invoke-interface {v7, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 973
    if-ne v6, p1, :cond_1

    .line 974
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 975
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 976
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 981
    .end local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v3    # "languageId":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 982
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 983
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 984
    return-void

    .line 969
    .restart local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    .restart local v3    # "languageId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private modifySharedPreferenceByDownloadLanguage(IZ)V
    .locals 11
    .param p1, "xt9LanguageCode"    # I
    .param p2, "isUpdateLanguage"    # Z

    .prologue
    const/4 v10, -0x1

    .line 906
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 907
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 908
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 910
    const/4 v5, 0x0

    .line 912
    .local v5, "languages":[Lcom/diotek/ime/framework/common/Language;
    const/4 v7, -0x1

    .line 913
    .local v7, "result":I
    const/high16 v8, 0x66720000

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v1

    .line 915
    .local v1, "frenchXt9LanguageCode":I
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v5

    .line 916
    move-object v0, v5

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_5

    aget-object v3, v0, v2

    .line 917
    .local v3, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, "languageId":Ljava/lang/String;
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 919
    if-ne p1, v1, :cond_3

    .line 920
    if-eqz p2, :cond_1

    .line 921
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 922
    if-ne v7, p1, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 924
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 925
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 916
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    :cond_1
    if-ne v7, p1, :cond_2

    .line 929
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 930
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 933
    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 934
    if-ne v7, p1, :cond_0

    .line 935
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 936
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 940
    :cond_3
    if-eq v7, p1, :cond_4

    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 941
    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 942
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 954
    .end local v3    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v4    # "languageId":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 955
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 956
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 957
    return-void

    .line 945
    .restart local v3    # "lang":Lcom/diotek/ime/framework/common/Language;
    .restart local v4    # "languageId":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 946
    if-ne v7, p1, :cond_0

    .line 947
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 948
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public static newInstance()Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .line 130
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    if-nez v0, :cond_0

    .line 118
    sput-object p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .line 122
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method

.method private setDownloadedListFromSharedPreference()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 842
    const/4 v4, 0x0

    .line 844
    .local v4, "languages":[Lcom/diotek/ime/framework/common/Language;
    const/4 v7, -0x1

    .line 845
    .local v7, "xt9LanguageCode":I
    const/4 v6, -0x1

    .line 847
    .local v6, "result":I
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    .line 848
    move-object v0, v4

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 849
    .local v2, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "languageId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v7

    .line 851
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 852
    if-eq v6, v10, :cond_0

    .line 853
    iget-object v8, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    .end local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v3    # "languageId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setSharedPreferencesList()V
    .locals 12

    .prologue
    const v11, 0x66724652

    const v10, 0x66724341

    const/4 v9, -0x1

    .line 860
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 861
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 862
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 864
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 865
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 866
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 868
    const/4 v4, 0x0

    .line 870
    .local v4, "languages":[Lcom/diotek/ime/framework/common/Language;
    const/4 v6, -0x1

    .line 872
    .local v6, "xt9LanguageCode":I
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    .line 873
    move-object v0, v4

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_6

    aget-object v2, v0, v1

    .line 874
    .local v2, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, "languageId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v6

    .line 877
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 878
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 880
    :cond_0
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 881
    const/high16 v7, 0x66720000

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 882
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 884
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 885
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 895
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 896
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 873
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_4

    .line 887
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 889
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 892
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 900
    .end local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v3    # "languageId":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 901
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 902
    iget-object v7, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 903
    return-void
.end method

.method private setSupportedLanguageList()V
    .locals 8

    .prologue
    .line 759
    const/4 v4, 0x0

    .line 761
    .local v4, "languages":[Lcom/diotek/ime/framework/common/Language;
    iget-object v6, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v6, :cond_1

    .line 762
    iget-object v6, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    .line 763
    const/16 v3, 0x100

    .line 765
    .local v3, "languageId":I
    move-object v0, v4

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 766
    .local v2, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getXt9LanguageId(I)I

    move-result v3

    .line 767
    iget-object v6, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 768
    iget-object v6, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "arr$":[Lcom/diotek/ime/framework/common/Language;
    .end local v1    # "i$":I
    .end local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v3    # "languageId":I
    .end local v5    # "len$":I
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelDownload(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 656
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_2
    const v1, 0x7f0d01d9

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V

    .line 667
    return-void

    .line 648
    :catch_0
    move-exception v7

    .line 649
    .local v7, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 650
    .end local v7    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :catch_1
    move-exception v7

    .line 652
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected deleteCacheTempFile(Ljava/io/File;)V
    .locals 1
    .param p1, "deleteFileName"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteLanguage(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageUninstalled(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDeleteLanguage(I)V

    .line 686
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateLdbListDelete(I)V

    .line 687
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public download(I)Z
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 587
    const-string v2, "ACDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACDownloadManager download id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    if-nez v2, :cond_0

    .line 589
    const/4 v2, 0x0

    .line 619
    :goto_0
    return v2

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 593
    .local v0, "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    if-nez v0, :cond_1

    .line 594
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .end local v0    # "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;)V

    .line 595
    .restart local v0    # "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    packed-switch p1, :pswitch_data_0

    .line 612
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v2, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    .line 619
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 603
    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    const-string v3, "Big5_bpmf_pinyin_CJ_xt9_big"

    invoke-virtual {v2, p1, v3, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 606
    .end local v1    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    const-string v3, "GB18030_xt9_big"

    invoke-virtual {v2, p1, v3, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    goto :goto_1

    .line 609
    :pswitch_2
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    const-string v3, "Big5HKSCS_bpmf_pinyin_CJ_xt9_big"

    invoke-virtual {v2, p1, v3, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dummyDownload(ILjava/util/List;)V
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p2, "listenerList":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;>;"
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 635
    .local v0, "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .end local v0    # "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;)V

    .line 637
    .restart local v0    # "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    invoke-virtual {v0, p2, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->register(Ljava/util/List;I)V

    .line 641
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->startProgressBarThread(Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V

    .line 643
    :cond_1
    return-void
.end method

.method protected extractFiles(Ljava/io/File;)Ljava/util/List;
    .locals 17
    .param p1, "languagePackFileName"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 991
    .local v4, "extractedFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x5000

    .line 992
    .local v1, "BUF_SIZE":I
    const/4 v8, 0x0

    .line 994
    .local v8, "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 995
    .local v7, "langPackInputStream":Ljava/io/InputStream;
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v15, Ljava/io/BufferedInputStream;

    const/16 v16, 0x5000

    move/from16 v0, v16

    invoke-direct {v15, v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v9, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 996
    .end local v8    # "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    .local v9, "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_1
    sget-object v15, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "dirPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 998
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 999
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1002
    :cond_0
    const/16 v15, 0x5000

    new-array v6, v15, [B

    .line 1003
    .local v6, "fileDataBuffer":[B
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    .local v12, "langResourceZipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_3

    .line 1004
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1005
    .local v10, "langResourceFileName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1006
    .local v14, "unZipFileName":Ljava/lang/String;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v11, "langResourceOutputStream":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/io/BufferedOutputStream;

    const/16 v15, 0x5000

    invoke-direct {v13, v11, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1009
    .local v13, "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v9, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v15, -0x1

    if-eq v2, v15, :cond_2

    .line 1010
    const/4 v15, 0x0

    invoke-virtual {v13, v6, v15, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1013
    .end local v2    # "bytesRead":I
    :catchall_0
    move-exception v15

    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1018
    .end local v3    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileDataBuffer":[B
    .end local v10    # "langResourceFileName":Ljava/lang/String;
    .end local v11    # "langResourceOutputStream":Ljava/io/FileOutputStream;
    .end local v12    # "langResourceZipEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "unZipFileName":Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v8, v9

    .end local v7    # "langPackInputStream":Ljava/io/InputStream;
    .end local v9    # "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_2
    if-eqz v8, :cond_1

    .line 1019
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_1
    throw v15

    .line 1013
    .end local v8    # "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "bytesRead":I
    .restart local v3    # "dirPath":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileDataBuffer":[B
    .restart local v7    # "langPackInputStream":Ljava/io/InputStream;
    .restart local v9    # "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "langResourceFileName":Ljava/lang/String;
    .restart local v11    # "langResourceOutputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "langResourceZipEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "unZipFileName":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    .line 1015
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 1018
    .end local v2    # "bytesRead":I
    .end local v10    # "langResourceFileName":Ljava/lang/String;
    .end local v11    # "langResourceOutputStream":Ljava/io/FileOutputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "unZipFileName":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 1019
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 1022
    :cond_4
    return-object v4

    .line 1018
    .end local v3    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileDataBuffer":[B
    .end local v7    # "langPackInputStream":Ljava/io/InputStream;
    .end local v9    # "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v12    # "langResourceZipEntry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "langPackZipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v15

    goto :goto_2
.end method

.method public getACManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method public getAppointedDownloadLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadableLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadedLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getKeyboardLanguageManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 343
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v4, :cond_0

    .line 345
    sget-object v4, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/SamsungKeypadApplication;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadApplication;->getACSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 346
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v4

    const-string v5, "EXAMPLESTRING"

    invoke-virtual {v4, v5}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setCustomerString(Ljava/lang/String;)V

    .line 349
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v0

    .line 350
    .local v0, "connectLegal":Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->getTOS()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->legalText:Ljava/lang/String;

    .line 351
    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Legal Text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->legalText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userAcceptedTOS()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    .line 361
    :try_start_1
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V

    .line 363
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->backgroundData(ZZZ)V

    .line 364
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->foregroundData(ZZZ)V

    .line 366
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const v5, 0x15180

    invoke-virtual {v4, v5}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setRefreshInterval(I)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    :goto_1
    new-instance v1, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$4;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$4;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    .line 386
    .local v1, "connectionCallback":Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    .line 388
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 389
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "9.6"

    const-string v6, "9.6"

    const-string v7, "9.6"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v0    # "connectLegal":Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    .end local v1    # "connectionCallback":Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 398
    :try_start_2
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->start()V
    :try_end_2
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_2 .. :try_end_2} :catch_2

    .line 404
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v4

    .line 355
    .restart local v0    # "connectLegal":Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    :catch_0
    move-exception v3

    .line 356
    .local v3, "ex":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v4, "ACDownloadManager"

    const-string v5, "Terms Of Service issue acceptance accepted!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v3    # "ex":Lcom/nuance/swypeconnect/ac/ACException;
    :catch_1
    move-exception v3

    .line 368
    .restart local v3    # "ex":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start set concurrent limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    .end local v3    # "ex":Lcom/nuance/swypeconnect/ac/ACException;
    .restart local v1    # "connectionCallback":Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "9.3"

    const-string v6, "9.3"

    const-string v7, "9.3"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 399
    .end local v0    # "connectLegal":Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    .end local v1    # "connectionCallback":Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    :catch_2
    move-exception v2

    .line 400
    .local v2, "e":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public getSupportedLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getTOSText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->legalText:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateableLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public register(ILjava/util/List;)V
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p2, "listenerList":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;>;"
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 569
    .local v0, "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->register(Ljava/util/List;I)V

    goto :goto_0
.end method

.method protected runCases()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->runLanguageDLCases()V

    .line 195
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->runLivingKoreanLanguage()V

    .line 196
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->runLivingAlphaLanguage()V

    goto :goto_0
.end method

.method protected runDeviceSetup()V
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iput-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    if-nez v1, :cond_0

    .line 187
    :goto_1
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v1, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    new-instance v2, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;)V

    .line 186
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->runCases()V

    goto :goto_1
.end method

.method protected runLanguageDLCases()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iput-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    if-nez v1, :cond_0

    .line 251
    :goto_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v1, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->addSupportedLanguageList()V

    .line 211
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->addExistedLanguageList()V

    .line 213
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    new-instance v2, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;Z)V

    goto :goto_1
.end method

.method public runLivingAlphaLanguage()V
    .locals 4

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->initLivingLanguageService()V

    .line 256
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingAlphaInput:Lcom/nuance/dlm/AlphaInput;

    if-eqz v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v1, Lcom/nuance/dlm/AlphaInput;

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-direct {v1, v2}, Lcom/nuance/dlm/AlphaInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingAlphaInput:Lcom/nuance/dlm/AlphaInput;

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v1, "ACDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start set concurrent limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runLivingKoreanLanguage()V
    .locals 4

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->initLivingLanguageService()V

    .line 271
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingKoreanInput:Lcom/nuance/dlm/KoreanInput;

    if-eqz v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v1, Lcom/nuance/dlm/KoreanInput;

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->dlm:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-direct {v1, v2}, Lcom/nuance/dlm/KoreanInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingKoreanInput:Lcom/nuance/dlm/KoreanInput;

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->config:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v1, "ACDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start set concurrent limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLivingLanguage(I)V
    .locals 3
    .param p1, "currentLanguage"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    .line 308
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([I)V

    .line 309
    return-void
.end method

.method public setUpdateState(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "isUpdate"    # Z

    .prologue
    .line 623
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 625
    .local v0, "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    if-nez v0, :cond_0

    .line 626
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .end local v0    # "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;)V

    .line 627
    .restart local v0    # "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_0
    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->setCurrentUpdateState(Z)V

    .line 630
    return-void
.end method

.method public setUseLivingLanguageFromSetting(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1037
    const-string v1, "ACDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ACDownloadManager-setUseLivingLanguageFromSetting] value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-nez v1, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1044
    :cond_0
    if-eqz p1, :cond_1

    .line 1045
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->enableLivingLanguage()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    const-string v1, "ACDownloadManager"

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->livingLanguage:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->disableLivingLanguage()V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getKeyboardLanguageManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 153
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 155
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_0

    .line 156
    const-string v0, "ACDownloadManager"

    const-string v1, "Could not get the manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->runDeviceSetup()V

    goto :goto_0
.end method

.method public declared-synchronized startProgressBarThread(Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V
    .locals 1
    .param p1, "cb"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .prologue
    .line 1077
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->stopProgressBarThread()V

    .line 1078
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    invoke-direct {v0, p0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    .line 1080
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    :cond_0
    monitor-exit p0

    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 408
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 410
    .local v7, "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const v1, 0x7f0d01d9

    invoke-virtual {v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V

    .line 419
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_1
    invoke-virtual {v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    goto :goto_0

    .line 411
    :catch_0
    move-exception v8

    .line 412
    .local v8, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 413
    .end local v8    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :catch_1
    move-exception v10

    .line 414
    .local v10, "ne":Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 427
    .end local v7    # "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 431
    iput-object v11, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 432
    iput-object v11, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->device:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    .line 433
    iput-object v11, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 434
    return-void
.end method

.method public declared-synchronized stopProgressBarThread()V
    .locals 1

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->requestStop()V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mProgressbarThread:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    :cond_0
    monitor-exit p0

    return-void

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 577
    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 579
    .local v0, "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-virtual {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    goto :goto_0
.end method
