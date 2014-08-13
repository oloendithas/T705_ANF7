.class public Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;
.super Ljava/lang/Object;
.source "SwiftkeyLiveLanguageManager.java"


# static fields
.field public static final ACTION_ALARM_LIVELANGUAGE:Ljava/lang/String; = "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

.field private static final MESSAGE_DOWNLOAD_LIVE_LANGUAGE_PACK:I = 0x2

.field private static final MESSAGE_RETRY_UPDATE_LIVELANGUAGE:I = 0x1

.field private static final READY_HOUR:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static UNSTABLE_NETWORK_DELAY:I

.field private static languaeListRefreshListener:Lcom/touchtype_fluency/util/RefreshListener;

.field private static mCountry:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsEnableLiveLanguage:Z

.field private static mLanguage:Ljava/lang/String;

.field private static mNeedToUpdateLanguageList:Z

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    .line 38
    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mLanguage:Ljava/lang/String;

    .line 39
    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mCountry:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    .line 44
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->UNSTABLE_NETWORK_DELAY:I

    .line 45
    new-instance v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$1;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$2;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$2;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->languaeListRefreshListener:Lcom/touchtype_fluency/util/RefreshListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 31
    sput-object p0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguagePack(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    return p0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static downloadLiveLanguageByWifi(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 178
    sget-boolean v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    move-result v0

    .line 181
    .local v0, "res":Z
    if-nez v0, :cond_0

    .line 182
    sput-object p0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;

    .line 183
    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->UNSTABLE_NETWORK_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    .end local v0    # "res":Z
    :cond_0
    return-void
.end method

.method private static declared-synchronized downloadLiveLanguagePack(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-class v6, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    monitor-enter v6

    if-nez p0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    .line 131
    .local v4, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "country":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "locale":Ljava/lang/String;
    invoke-virtual {v4, v3, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v1

    .line 134
    .local v1, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 135
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v2

    .line 136
    .local v2, "llp":Lcom/touchtype_fluency/util/LiveLanguagePack;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloadInProgress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isUpdateAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    :cond_0
    new-instance v5, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$3;

    invoke-direct {v5}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$3;-><init>()V

    invoke-virtual {v4, v2, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v2    # "llp":Lcom/touchtype_fluency/util/LiveLanguagePack;
    :cond_1
    monitor-exit v6

    return-void

    .line 129
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v3    # "locale":Ljava/lang/String;
    .end local v4    # "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static isUseVOResourceManager()Z
    .locals 2

    .prologue
    .line 123
    const-string v0, "VOHWRPANEL"

    const-string v1, "VOHWRPANEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VOHWRPANEL"

    const-string v1, "SSHWRPANEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VOHWRPANEL"

    const-string v1, "VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    .line 77
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "networkInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 80
    .local v1, "nwInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguageByWifi(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static registerLiveLanguageAlarm(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    sget-boolean v4, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    if-nez v4, :cond_1

    .line 190
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    .line 191
    .local v11, "am":Landroid/app/AlarmManager;
    new-instance v13, Landroid/content/Intent;

    const-string v4, "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v13, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v13, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 193
    .local v10, "sender":Landroid/app/PendingIntent;
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 194
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 195
    .local v12, "hour":I
    const/4 v4, 0x5

    if-lt v12, v4, :cond_0

    .line 196
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 198
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 199
    .local v1, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 200
    .local v2, "month":I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 201
    .local v3, "day":I
    new-instance v14, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v14, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 202
    .local v14, "random":Ljava/util/Random;
    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0x3c

    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/16 v6, 0x3c

    invoke-virtual {v14, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 203
    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    move-object v4, v11

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 204
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    .line 206
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "day":I
    .end local v10    # "sender":Landroid/app/PendingIntent;
    .end local v11    # "am":Landroid/app/AlarmManager;
    .end local v12    # "hour":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "random":Ljava/util/Random;
    :cond_1
    return-void
.end method

.method public static setLiveLanguage(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "country":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    .line 164
    :cond_1
    sput-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mLanguage:Ljava/lang/String;

    .line 165
    sput-object v0, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mCountry:Ljava/lang/String;

    .line 166
    if-eqz p1, :cond_3

    .line 167
    sget-boolean v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    if-eqz v2, :cond_2

    .line 168
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z

    .line 170
    :cond_2
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->registerLiveLanguageAlarm(Landroid/content/Context;)V

    .line 174
    :goto_0
    sput-boolean p1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    .line 175
    return-void

    .line 172
    :cond_3
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->unregisterLiveLanguageAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static unregisterLiveLanguageAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 209
    sget-boolean v3, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    if-eqz v3, :cond_0

    .line 210
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 211
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.inputmethod.ACTION_ALARM_LIVELANGUAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 213
    .local v2, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 214
    sput-boolean v4, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z

    .line 216
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sender":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private static declared-synchronized updateLanguagePackList(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 109
    const-class v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z

    if-eqz v1, :cond_1

    .line 110
    invoke-static {}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->isUseVOResourceManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->updateVOLanguagePackManager(Lcom/touchtype_fluency/util/RefreshListener;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    .line 114
    .local v0, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    sget-object v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->languaeListRefreshListener:Lcom/touchtype_fluency/util/RefreshListener;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->refresh(Lcom/touchtype_fluency/util/RefreshListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v0    # "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :goto_0
    monitor-exit v2

    return v4

    .line 117
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguagePack(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized updateLiveLanguagePack(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 90
    const-class v1, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLanguagePackList(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 104
    :goto_0
    monitor-exit v1

    return v0

    .line 92
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_1
    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->TAG:Ljava/lang/String;

    const-string v3, "Internet limitation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 100
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLanguagePackList(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_3
    sget-object v2, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->TAG:Ljava/lang/String;

    const-string v3, "Internet is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
