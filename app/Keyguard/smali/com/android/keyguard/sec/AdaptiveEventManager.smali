.class public Lcom/android/keyguard/sec/AdaptiveEventManager;
.super Ljava/lang/Object;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;


# instance fields
.field public ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

.field public ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field public ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field public ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field public ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final CITYID_CURRENT_LOCATION:Ljava/lang/String;

.field private final KEY_COUNTRY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_CITY:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ERROR_BUNDLE:Ljava/lang/String;

.field private final KEY_HIGH_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_LOW_TEMP:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final KEY_WEATHER_TEXT:Ljava/lang/String;

.field public WEATHERINFO_URI:Landroid/net/Uri;

.field private final WEATHER_INFO_TRUSTED:I

.field private mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSmallWeather:Landroid/view/View;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

.field mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

.field private mWeatherInfo:Ljava/lang/String;

.field private mWeatherInfoTrue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 681
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACCU_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoTrue:Z

    .line 87
    const-string v10, "Location=\"%s\""

    new-array v11, v9, [Ljava/lang/Object;

    const-string v12, "cityId:current"

    aput-object v12, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->CITYID_CURRENT_LOCATION:Ljava/lang/String;

    .line 88
    const-string v10, "STATE"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_COUNTRY_NAME:Ljava/lang/String;

    .line 90
    const-string v10, "Accuweather"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    .line 93
    const-string v10, "aw_daemon_service_key_current_temp"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 94
    const-string v10, "aw_daemon_service_key_loc_code"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_CITY:Ljava/lang/String;

    .line 95
    const-string v10, "aw_daemon_service_key_high_temp"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_HIGH_TEMP:Ljava/lang/String;

    .line 96
    const-string v10, "aw_daemon_service_key_low_temp"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_LOW_TEMP:Ljava/lang/String;

    .line 98
    const-string v10, "aw_daemon_service_key_temp_scale"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 99
    const-string v10, "aw_daemon_service_key_weather_icon_num"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_ICON_NUM:Ljava/lang/String;

    .line 100
    const-string v10, "aw_daemon_service_key_weather_text"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_WEATHER_TEXT:Ljava/lang/String;

    .line 101
    const-string v10, "Error_Code"

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_ERROR_BUNDLE:Ljava/lang/String;

    .line 102
    const/16 v10, 0xc8

    iput v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHER_INFO_TRUSTED:I

    .line 108
    new-instance v10, Lcom/android/keyguard/sec/AdaptiveEventManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/keyguard/sec/AdaptiveEventManager$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v10, Lcom/android/keyguard/sec/AdaptiveEventManager$2;

    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11}, Lcom/android/keyguard/sec/AdaptiveEventManager$2;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 124
    new-instance v10, Lcom/android/keyguard/sec/AdaptiveEventManager$3;

    invoke-direct {v10, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$3;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v10, Lcom/android/keyguard/sec/AdaptiveEventManager$4;

    invoke-direct {v10, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$4;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 152
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    .line 153
    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 154
    const/4 v10, 0x3

    new-array v10, v10, [Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    .line 155
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->init()V

    .line 157
    const v10, 0x7f03003f

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    .line 159
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v11, 0x7f0b00fd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 160
    .local v6, "temp":Landroid/widget/TextView;
    if-eqz v6, :cond_94

    .line 161
    const-string v10, "/system/fonts/SamsungSans-Num3L.ttf"

    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 162
    .local v7, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    .end local v7    # "tf":Landroid/graphics/Typeface;
    :cond_94
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 165
    const-string v10, "/system/fonts/SamsungSans-Num3L.ttf"

    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 166
    .restart local v7    # "tf":Landroid/graphics/Typeface;
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v11, 0x7f0b00ff

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    .local v0, "HighText":Landroid/widget/TextView;
    if-eqz v0, :cond_b0

    .line 168
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    :cond_b0
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v11, 0x7f0b0102

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, "LowText":Landroid/widget/TextView;
    if-eqz v1, :cond_c0

    .line 172
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    :cond_c0
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    const v11, 0x7f0b0101

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 175
    .local v2, "SeparatorText":Landroid/widget/TextView;
    if-eqz v2, :cond_d0

    .line 176
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    .end local v0    # "HighText":Landroid/widget/TextView;
    .end local v1    # "LowText":Landroid/widget/TextView;
    .end local v2    # "SeparatorText":Landroid/widget/TextView;
    .end local v7    # "tf":Landroid/graphics/Typeface;
    :cond_d0
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v11, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const-string v12, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    iget-object v13, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    invoke-direct {v11, p0, v12, v13}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/view/View;)V

    aput-object v11, v10, v4

    .line 181
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_additional_weather"

    const/4 v12, -0x2

    invoke-static {v10, v11, v4, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v9, :cond_106

    move v4, v9

    .line 188
    .local v4, "isWeatherEnabled":Z
    :cond_106
    const-string v10, "AdaptiveEventManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isWeatherEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v4, :cond_167

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v10

    if-eqz v10, :cond_167

    .line 190
    new-instance v8, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v8, "weatherTrigger":Landroid/content/Intent;
    const-string v10, "START"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const-string v9, "PACKAGE"

    const-string v10, "com.android.keyguard"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v9, "CP"

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    .end local v8    # "weatherTrigger":Landroid/content/Intent;
    :goto_14b
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v5, "pkgFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v9, "package"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 203
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v9, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void

    .line 196
    .end local v5    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_167
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v9, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_14b
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->handleUpdateWeather(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    if-nez v0, :cond_b

    .line 224
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    .line 226
    :cond_b
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    return-object v0
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .registers 6

    .prologue
    .line 667
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 671
    :cond_18
    const-string v1, "AdaptiveEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v0, "-"

    .line 675
    :cond_32
    return-object v0
.end method

.method private getWeatherTempUnit(I)I
    .registers 6
    .param p1, "scale"    # I

    .prologue
    const v3, 0x7f060128

    .line 551
    const-string v1, "AdaptiveEventManager"

    const-string v2, "getWeatherTempUnit()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    packed-switch p1, :pswitch_data_6a

    .line 559
    const v0, 0x7f020218

    .line 560
    .local v0, "resource":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    .line 563
    :goto_3a
    return v0

    .line 555
    .end local v0    # "resource":I
    :pswitch_3b
    const v0, 0x7f020219

    .line 556
    .restart local v0    # "resource":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    goto :goto_3a

    .line 553
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method

.method private handleUpdateWeather(Landroid/content/Intent;)V
    .registers 33
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 420
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 421
    const-string v28, "AdaptiveEventManager"

    const-string v29, "previous look, no adaptive event"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_d
    return-void

    .line 425
    :cond_e
    const-string v28, "aw_daemon_service_key_weather_icon_num"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 426
    .local v14, "iconNum":I
    const-string v28, "aw_daemon_service_key_current_temp"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v11

    .line 427
    .local v11, "currentTemp":F
    const-string v28, "aw_daemon_service_key_temp_scale"

    const/16 v29, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 428
    .local v21, "tempScale":I
    const-string v28, "Error_Code"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 429
    .local v3, "ErrorBundle":I
    const-string v28, "aw_daemon_service_key_loc_code"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, "currentCityId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 433
    .local v9, "curLanguage":Ljava/lang/String;
    const/16 v28, 0xc8

    move/from16 v0, v28

    if-eq v3, v0, :cond_79

    .line 434
    const-string v28, "AdaptiveEventManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NetWork disabled : Don\'t refresh weath info : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 437
    :cond_79
    const-string v28, "AdaptiveEventManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NetWork State is Fine : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setWeatherInfoTrue(Z)V

    .line 441
    if-nez v10, :cond_339

    .line 442
    const-string v28, "AdaptiveEventManager"

    const-string v29, "currentCityId is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setWeatherInfoTrue(Z)V

    .line 448
    :goto_ae
    const-string v28, "AdaptiveEventManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "handleUpdateWeather() [icon, temp, scale] = ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b00fb

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 451
    .local v27, "weatherLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b00fc

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 452
    .local v13, "icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b00fd

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 453
    .local v19, "temp":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b00fe

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 454
    .local v23, "unit":Landroid/widget/ImageView;
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    .line 456
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherIconImageResources(I)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 457
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v28

    if-eqz v28, :cond_365

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isChinaLocation()Z

    move-result v28

    if-nez v28, :cond_365

    .line 458
    const-string v28, "aw_daemon_service_key_high_temp"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v12

    .line 459
    .local v12, "highTemp":F
    const-string v28, "aw_daemon_service_key_low_temp"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v16

    .line 460
    .local v16, "lowTemp":F
    const-string v28, "AdaptiveEventManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "handleUpdateWeather() [highTemp, lowTemp] = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b00ff

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 463
    .local v4, "HighText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b0102

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 464
    .local v5, "LowText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b0101

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 466
    .local v6, "SeparatorText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b0100

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 467
    .local v24, "unitHigh":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallWeather:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0b0103

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 469
    .local v25, "unitLow":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getValidTemp(F)Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "StrHigh":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getValidTemp(F)Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, "StrLow":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    move-object/from16 v28, v0

    if-eqz v28, :cond_225

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    move-object/from16 v28, v0

    const v29, 0x7f0b00f5

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 475
    .local v26, "weatherLL":Landroid/widget/LinearLayout;
    if-eqz v26, :cond_225

    .line 476
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 478
    .local v17, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v28, 0x1

    const/high16 v29, 0x43420000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 479
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    .end local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v26    # "weatherLL":Landroid/widget/LinearLayout;
    :cond_225
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v29

    add-int v18, v28, v29

    .line 485
    .local v18, "strLength":I
    const/16 v28, 0x5

    move/from16 v0, v18

    move/from16 v1, v28

    if-le v0, v1, :cond_342

    .line 487
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 488
    .local v15, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 489
    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    const/16 v28, 0x1

    const/high16 v29, 0x41d80000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 491
    const/16 v28, 0x1

    const/high16 v29, 0x41d80000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 492
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 493
    .restart local v15    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 494
    invoke-virtual {v5, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    const/16 v28, 0x1

    const/high16 v29, 0x41d80000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 503
    .end local v15    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_276
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnit(I)I

    move-result v28

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 505
    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnit(I)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 510
    const/16 v28, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    const/16 v28, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 515
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 519
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 520
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 542
    .end local v4    # "HighText":Landroid/widget/TextView;
    .end local v5    # "LowText":Landroid/widget/TextView;
    .end local v6    # "SeparatorText":Landroid/widget/TextView;
    .end local v7    # "StrHigh":Ljava/lang/String;
    .end local v8    # "StrLow":Ljava/lang/String;
    .end local v12    # "highTemp":F
    .end local v16    # "lowTemp":F
    .end local v18    # "strLength":I
    .end local v24    # "unitHigh":Landroid/widget/ImageView;
    .end local v25    # "unitLow":Landroid/widget/ImageView;
    :goto_31f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3c2

    .line 543
    const-string v28, "AdaptiveEventManager"

    const-string v29, "mAdaptiveEventContainerSmall is not null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherContainer()V

    goto/16 :goto_d

    .line 445
    .end local v13    # "icon":Landroid/widget/ImageView;
    .end local v19    # "temp":Landroid/widget/TextView;
    .end local v23    # "unit":Landroid/widget/ImageView;
    .end local v27    # "weatherLayout":Landroid/widget/LinearLayout;
    :cond_339
    const-string v28, "AdaptiveEventManager"

    const-string v29, "currentCityId is not null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 498
    .restart local v4    # "HighText":Landroid/widget/TextView;
    .restart local v5    # "LowText":Landroid/widget/TextView;
    .restart local v6    # "SeparatorText":Landroid/widget/TextView;
    .restart local v7    # "StrHigh":Ljava/lang/String;
    .restart local v8    # "StrLow":Ljava/lang/String;
    .restart local v12    # "highTemp":F
    .restart local v13    # "icon":Landroid/widget/ImageView;
    .restart local v16    # "lowTemp":F
    .restart local v18    # "strLength":I
    .restart local v19    # "temp":Landroid/widget/TextView;
    .restart local v23    # "unit":Landroid/widget/ImageView;
    .restart local v24    # "unitHigh":Landroid/widget/ImageView;
    .restart local v25    # "unitLow":Landroid/widget/ImageView;
    .restart local v27    # "weatherLayout":Landroid/widget/LinearLayout;
    :cond_342
    const/16 v28, 0x1

    const/high16 v29, 0x41f00000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 499
    const/16 v28, 0x1

    const/high16 v29, 0x41f00000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 500
    const/16 v28, 0x1

    const/high16 v29, 0x41f00000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_276

    .line 525
    .end local v4    # "HighText":Landroid/widget/TextView;
    .end local v5    # "LowText":Landroid/widget/TextView;
    .end local v6    # "SeparatorText":Landroid/widget/TextView;
    .end local v7    # "StrHigh":Ljava/lang/String;
    .end local v8    # "StrLow":Ljava/lang/String;
    .end local v12    # "highTemp":F
    .end local v16    # "lowTemp":F
    .end local v18    # "strLength":I
    .end local v24    # "unitHigh":Landroid/widget/ImageView;
    .end local v25    # "unitLow":Landroid/widget/ImageView;
    :cond_365
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 528
    .local v20, "tempInt":I
    const-string v28, "ar"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3bd

    .line 529
    const-string v28, "AdaptiveEventManager"

    const-string v29, "Current language is Arabic"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->toDigitString(I)Ljava/lang/String;

    move-result-object v22

    .line 531
    .local v22, "tempText":Ljava/lang/String;
    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setLayoutDirection(I)V

    .line 536
    :goto_387
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherTempUnit(I)I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 539
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_31f

    .line 533
    .end local v22    # "tempText":Ljava/lang/String;
    :cond_3bd
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "tempText":Ljava/lang/String;
    goto :goto_387

    .line 546
    .end local v20    # "tempInt":I
    .end local v22    # "tempText":Ljava/lang/String;
    :cond_3c2
    const-string v28, "AdaptiveEventManager"

    const-string v29, "mAdaptiveEventContainerSmall is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method private init()V
    .registers 3

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCPName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 580
    :cond_14
    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    .line 582
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/keyguard/sec/WeatherImageArchiveFactory;->make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    .line 584
    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 585
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 586
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 587
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 588
    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 589
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 590
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 613
    :goto_46
    return-void

    .line 591
    :cond_47
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 592
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 593
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 594
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 595
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 596
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 597
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_46

    .line 598
    :cond_6e
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 599
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 600
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 601
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 602
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 603
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 604
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_46

    .line 606
    :cond_95
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 607
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 608
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 609
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 610
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 611
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_46
.end method

.method private updateContainers(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 310
    const-string v0, "AdaptiveEventManager"

    const-string v1, "M updateContainers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-eqz v0, :cond_11

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateAdaptiveContainer(I)V

    .line 317
    :goto_10
    return-void

    .line 315
    :cond_11
    const-string v0, "AdaptiveEventManager"

    const-string v1, "M mAdaptiveEventContainerSmall == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method


# virtual methods
.method public getCPName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 572
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckCurrentCityLocation(Landroid/content/Context;)I
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 684
    .line 686
    if-nez p1, :cond_c

    .line 687
    const-string v0, "AdaptiveEventManager"

    const-string v1, "getCheckCurrent: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_b
    return v6

    .line 691
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_36

    .line 693
    sget-object v1, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 695
    if-eqz v1, :cond_36

    .line 696
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 698
    const/4 v0, 0x0

    :try_start_2a
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_4f

    move-result v0

    .line 705
    :goto_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 708
    :cond_36
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCheckCurrent: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 701
    :catch_4f
    move-exception v0

    .line 702
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_53
    move v0, v6

    goto :goto_32
.end method

.method protected getEmergencyEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .registers 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getWeatherEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWeatherIconImageResources(I)I
    .registers 5
    .param p1, "number"    # I

    .prologue
    .line 567
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherIconImageResources(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;->getImage(I)I

    move-result v0

    return v0
.end method

.method protected getWeatherInfoTrue()Z
    .registers 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoTrue:Z

    return v0
.end method

.method public isChinaLocation()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 616
    const-string v6, ""

    .line 617
    .local v6, "cityname":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v9

    .line 646
    :goto_9
    return v0

    .line 621
    :cond_a
    const/4 v7, 0x0

    .line 623
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_b
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_30

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->CITYID_CURRENT_LOCATION:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 625
    if-eqz v7, :cond_30

    .line 626
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 627
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_41
    .catchall {:try_start_b .. :try_end_2f} :catchall_49

    move-result-object v6

    .line 634
    :cond_30
    if-eqz v7, :cond_35

    .line 635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_35
    if-eqz v6, :cond_3f

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_3f
    move v0, v9

    .line 640
    goto :goto_9

    .line 631
    :catch_41
    move-exception v8

    .line 634
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_47

    .line 635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_47
    move v0, v9

    goto :goto_9

    .line 634
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_49
    move-exception v0

    if-eqz v7, :cond_4f

    .line 635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v0

    .line 643
    :cond_50
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    move v0, v10

    .line 644
    goto :goto_9

    :cond_65
    move v0, v9

    .line 646
    goto :goto_9
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .registers 8
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 267
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAdaptiveEvent() requestClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-eqz v0, :cond_34

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$302(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v3

    .line 274
    :cond_34
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    .line 282
    :goto_37
    return-void

    .line 276
    :cond_38
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    if-eqz v0, :cond_49

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$302(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v4

    .line 280
    :cond_49
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto :goto_37
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 10
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 237
    if-nez p2, :cond_d

    .line 238
    const-string v0, "AdaptiveEventManager"

    const-string v1, "Requested RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_c
    return-void

    .line 242
    :cond_d
    const-string v1, "AdaptiveEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveEvent() requestClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " smallView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_87

    const-string v0, "null"

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bigView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_8a

    const-string v0, "null"

    :goto_36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-eqz v0, :cond_5a

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$302(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v3

    .line 250
    :cond_5a
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v3

    .line 252
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewList[PEDOMETER].view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto :goto_c

    .line 242
    :cond_87
    const-string v0, "not null"

    goto :goto_28

    :cond_8a
    const-string v0, "not null"

    goto :goto_36

    .line 255
    :cond_8d
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    if-eqz v0, :cond_9e

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$302(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v4

    .line 259
    :cond_9e
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v4

    .line 261
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewList[EMERGENCY].view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v4

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto/16 :goto_c
.end method

.method protected setAdaptiveEventContainerSmall(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .registers 4
    .param p1, "adaptiveEventContainerSmall"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 323
    const-string v0, "AdaptiveEventManager"

    const-string v1, "setAdaptiveEventContainerSmall()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .line 325
    return-void
.end method

.method protected setWeatherInfoTrue(Z)V
    .registers 2
    .param p1, "info"    # Z

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoTrue:Z

    .line 384
    return-void
.end method

.method public toDigitString(I)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # I

    .prologue
    .line 650
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 651
    .local v3, "lengthSize":I
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 652
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_40

    .line 656
    const-string v2, ""

    .line 657
    .local v2, "formatter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .end local v2    # "formatter":Ljava/lang/String;
    :goto_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 660
    :cond_40
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 9
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 285
    const-string v1, "AdaptiveEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdaptiveEvent() requestClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " smallView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_40

    const-string v0, "null"

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bigView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_43

    const-string v0, "null"

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-nez p2, :cond_46

    .line 290
    const-string v0, "AdaptiveEventManager"

    const-string v1, "Requested RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_3f
    return-void

    .line 285
    :cond_40
    const-string v0, "not null"

    goto :goto_1d

    :cond_43
    const-string v0, "not null"

    goto :goto_2b

    .line 294
    :cond_46
    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-eqz v0, :cond_62

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v1, v1, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_3f

    .line 298
    :cond_62
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v3

    goto :goto_3f

    .line 301
    :cond_6c
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    if-eqz v0, :cond_80

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v1, v1, v4

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_3f

    .line 304
    :cond_80
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v4

    goto :goto_3f
.end method
