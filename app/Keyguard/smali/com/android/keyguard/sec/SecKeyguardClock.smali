.class public Lcom/android/keyguard/sec/SecKeyguardClock;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private batteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarm:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDualClock:Landroid/view/View;

.field private mDualClockHomeTotal:Landroid/view/View;

.field private mDualClockRoamingTotal:Landroid/view/View;

.field private mDualClockTypeface:Landroid/graphics/Typeface;

.field private mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeDate:Landroid/widget/TextView;

.field private mDualHomeLocale:Landroid/widget/TextView;

.field private mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingDate:Landroid/widget/TextView;

.field private mDualRoamingLocale:Landroid/widget/TextView;

.field private mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mHandler:Landroid/os/Handler;

.field private mIsSingleClock:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleClock:Landroid/view/View;

.field private mSingleClockTotal:Landroid/view/View;

.field private mSingleClockTypeface:Landroid/graphics/Typeface;

.field private mSingleDate:Landroid/widget/TextView;

.field private mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mTravelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "SecKeyguardClock"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    .line 105
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    .line 112
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    .line 134
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "SecKeyguardClock"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    .line 105
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    .line 112
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    .line 134
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-string v0, "SecKeyguardClock"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    .line 105
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    .line 112
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    .line 134
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClock;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClock;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/SecKeyguardClock;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClock;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClock;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClock;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClock;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->handleUpdateClock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClock;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleUpdateClock()V
    .registers 1

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateClock()V

    .line 245
    return-void
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 574
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

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

    .line 575
    const/4 v1, 0x1

    .line 580
    :goto_33
    return v1

    .line 577
    :cond_34
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

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

    .line 578
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isTravelWallpaperSet()Z
    .registers 5

    .prologue
    .line 561
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "wallpaperPath":Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "/com.samsung.android.service.travel/files/images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 564
    const/4 v1, 0x1

    .line 566
    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .registers 8
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 617
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "dateFormatWDM":Ljava/lang/String;
    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 621
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_32
    invoke-static {v0, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 626
    .local v2, "dateText":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 627
    return-void

    .line 623
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_3e
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method private refreshAlarm()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 292
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    if-nez v1, :cond_8

    .line 309
    :goto_7
    return-void

    .line 295
    :cond_8
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "nextAlarm":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 299
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0600d2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 301
    :cond_3a
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :goto_3f
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshAlarm(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 303
    :cond_5e
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3f

    .line 306
    :cond_64
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3f
.end method

.method private refreshOwnerInfo()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x2

    const/4 v0, 0x1

    .line 312
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v4, :cond_8

    .line 324
    :goto_7
    return-void

    .line 315
    :cond_8
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v2

    .line 316
    .local v2, "ownerInfoEnabled":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "ownerInfo":Ljava/lang/String;
    if-eqz v2, :cond_29

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    .line 318
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 321
    :cond_29
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_additional_info"

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v0, :cond_40

    .line 322
    .local v0, "isAdditionalInfoEnabled":Z
    :goto_37
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_42

    const/4 v3, 0x4

    :goto_3c
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .end local v0    # "isAdditionalInfoEnabled":Z
    :cond_40
    move v0, v3

    .line 321
    goto :goto_37

    .line 322
    .restart local v0    # "isAdditionalInfoEnabled":Z
    :cond_42
    const/16 v3, 0x8

    goto :goto_3c
.end method

.method private refreshTravelInfo()V
    .registers 5

    .prologue
    .line 546
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_b

    .line 558
    :cond_a
    :goto_a
    return-void

    .line 549
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->isTravelWallpaperSet()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 550
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "locationName":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 552
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 556
    .end local v0    # "locationName":Ljava/lang/String;
    :cond_3a
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method private static setAutoHomeTimezone(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-nez v0, :cond_36

    .line 336
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 338
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 339
    .local v2, "simstateFromTelephony":I
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v5, 0x5

    if-ne v2, v5, :cond_36

    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 342
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "tz":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    .end local v1    # "homeCalendar":Ljava/util/Calendar;
    .end local v2    # "simstateFromTelephony":I
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v4    # "tz":Ljava/lang/String;
    :cond_36
    return-void
.end method

.method private setClockContentDesciption()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 585
    .local v4, "systemLocale":Ljava/util/Locale;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_36

    if-eqz v4, :cond_36

    const-string v6, "ko"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    move v2, v5

    .line 586
    .local v2, "isKorean":Z
    :goto_1e
    if-eqz v2, :cond_38

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 587
    .local v3, "singleAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_22
    if-eqz v2, :cond_3b

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 588
    .local v1, "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_26
    if-eqz v2, :cond_3e

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 590
    .local v0, "dualHAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_2a
    iget-boolean v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    if-ne v6, v5, :cond_41

    .line 591
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v5, v6, v3, v2}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    .line 596
    :goto_35
    return-void

    .line 585
    .end local v0    # "dualHAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .end local v1    # "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .end local v2    # "isKorean":Z
    .end local v3    # "singleAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :cond_36
    const/4 v2, 0x0

    goto :goto_1e

    .line 586
    .restart local v2    # "isKorean":Z
    :cond_38
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_22

    .line 587
    .restart local v3    # "singleAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :cond_3b
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_26

    .line 588
    .restart local v1    # "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :cond_3e
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_2a

    .line 593
    .restart local v0    # "dualHAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :cond_41
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v5, v6, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    .line 594
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v5, v6, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    goto :goto_35
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "time"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p3, "ampm"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p4, "isKorean"    # Z

    .prologue
    .line 600
    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    .line 601
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 602
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecKeyguardClock$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    .end local v6    # "handler":Landroid/os/Handler;
    :cond_1c
    return-void
.end method

.method private setDualClockStyle(I)V
    .registers 9
    .param p1, "size"    # I

    .prologue
    const/high16 v6, 0x41700000

    const/4 v5, 0x0

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "fontSize":I
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 511
    .local v2, "lpRoaming":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 513
    .local v1, "lpHome":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_7a

    .line 522
    :pswitch_17
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 526
    :goto_24
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 527
    int-to-float v3, v0

    div-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 531
    :goto_32
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 536
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 537
    int-to-float v3, v0

    div-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 541
    :goto_4b
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 543
    return-void

    .line 515
    :pswitch_57
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 516
    goto :goto_24

    .line 518
    :pswitch_65
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 519
    goto :goto_24

    .line 529
    :cond_73
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_32

    .line 539
    :cond_76
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4b

    .line 513
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_57
        :pswitch_17
        :pswitch_65
    .end packed-switch
.end method

.method private setSingleClockStyle(I)V
    .registers 8
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "fontSize":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 482
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_84

    .line 491
    :pswitch_d
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 496
    :goto_1a
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 497
    int-to-float v2, v0

    const/high16 v3, 0x41700000

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 501
    :goto_2a
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fontSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lp.leftMargin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v3, v0

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 506
    return-void

    .line 484
    :pswitch_64
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 485
    goto :goto_1a

    .line 487
    :pswitch_72
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 488
    goto :goto_1a

    .line 499
    :cond_80
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2a

    .line 482
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_64
        :pswitch_d
        :pswitch_72
    .end packed-switch
.end method

.method private updateClock()V
    .registers 13

    .prologue
    const/4 v11, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 248
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    const-string v10, "updateClock()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dualclock_menu_settings"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_d8

    move v1, v7

    .line 251
    .local v1, "isDualClock":Z
    :goto_19
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 253
    .local v6, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    .line 255
    .local v5, "isNetworkRoaming":Z
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_clock_size"

    invoke-static {v9, v10, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 258
    .local v0, "clockSize":I
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "easy_mode_switch"

    invoke-static {v9, v10, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_db

    move v2, v8

    .line 260
    .local v2, "isEasyUxOn":Z
    :goto_42
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "homecity_timezone"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_de

    move v4, v8

    .line 262
    .local v4, "isHometimeExist":Z
    :goto_51
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "emergency_mode"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_e1

    move v3, v7

    .line 265
    .local v3, "isEmergencyOn":Z
    :goto_60
    if-nez v2, :cond_64

    if-eqz v3, :cond_65

    .line 266
    :cond_64
    const/4 v0, 0x2

    .line 269
    :cond_65
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 270
    const/4 v5, 0x0

    .line 273
    :cond_6c
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDualClock = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", isNetworkRoaming = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", !isEasyUxOn = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v2, :cond_e4

    move v9, v7

    :goto_90
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "isHometimeExist = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", isEmergencyOn = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v1, :cond_e6

    if-eqz v5, :cond_e6

    if-eqz v2, :cond_c1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v9

    if-eqz v9, :cond_e6

    :cond_c1
    if-eqz v4, :cond_e6

    .line 276
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateDualClock()V

    .line 277
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setDualClockStyle(I)V

    .line 278
    iput-boolean v8, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    .line 284
    :goto_cb
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciption()V

    .line 286
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshAlarm()V

    .line 287
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshOwnerInfo()V

    .line 288
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshTravelInfo()V

    .line 289
    return-void

    .end local v0    # "clockSize":I
    .end local v1    # "isDualClock":Z
    .end local v2    # "isEasyUxOn":Z
    .end local v3    # "isEmergencyOn":Z
    .end local v4    # "isHometimeExist":Z
    .end local v5    # "isNetworkRoaming":Z
    .end local v6    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :cond_d8
    move v1, v8

    .line 249
    goto/16 :goto_19

    .restart local v0    # "clockSize":I
    .restart local v1    # "isDualClock":Z
    .restart local v5    # "isNetworkRoaming":Z
    .restart local v6    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :cond_db
    move v2, v7

    .line 258
    goto/16 :goto_42

    .restart local v2    # "isEasyUxOn":Z
    :cond_de
    move v4, v7

    .line 260
    goto/16 :goto_51

    .restart local v4    # "isHometimeExist":Z
    :cond_e1
    move v3, v8

    .line 262
    goto/16 :goto_60

    .restart local v3    # "isEmergencyOn":Z
    :cond_e4
    move v9, v8

    .line 273
    goto :goto_90

    .line 280
    :cond_e6
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateSingleClock()V

    .line 281
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setSingleClockStyle(I)V

    .line 282
    iput-boolean v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    goto :goto_cb
.end method

.method private updateDualClock()V
    .registers 12

    .prologue
    const v10, 0x7f0600d3

    const/4 v9, -0x2

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 397
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    const v8, 0x7f0b0104

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    .line 400
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    const v8, 0x7f0b0134

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 401
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 404
    .local v4, "systemLocale":Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_65

    .line 405
    if-eqz v4, :cond_173

    const-string v5, "ko"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 406
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_65
    :goto_65
    if-eqz v4, :cond_91

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    if-eqz v5, :cond_91

    .line 419
    const-string v5, "ar"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-string v5, "fa"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_189

    .line 420
    :cond_87
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 421
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 428
    :cond_91
    :goto_91
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "homecity_timezone"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 431
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 432
    .local v3, "roamingCalendar":Ljava/util/Calendar;
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_screen_date_and_year"

    invoke-static {v5, v8, v2, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_195

    .line 435
    .local v2, "isDateOn":Z
    :goto_b3
    if-eqz v0, :cond_1a5

    .line 436
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 437
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 438
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 439
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_d0

    .line 440
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 442
    :cond_d0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v5

    if-eqz v5, :cond_198

    const-string v5, "Asia/Seoul"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    .line 443
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600d5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :goto_ec
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    if-eqz v2, :cond_1b9

    move v5, v6

    :goto_fc
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDualClock() home: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    invoke-direct {p0, v5, v1}, Lcom/android/keyguard/sec/SecKeyguardClock;->plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 459
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v5

    if-eqz v5, :cond_1bc

    .line 460
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600d6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_13d
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    if-eqz v2, :cond_1db

    :goto_14c
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDualClock() roaming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    invoke-direct {p0, v5, v3}, Lcom/android/keyguard/sec/SecKeyguardClock;->plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 472
    return-void

    .line 411
    .end local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .end local v1    # "homeCalendar":Ljava/util/Calendar;
    .end local v2    # "isDateOn":Z
    .end local v3    # "roamingCalendar":Ljava/util/Calendar;
    :cond_173
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_65

    .line 423
    :cond_189
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutDirection(I)V

    .line 424
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_91

    .restart local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .restart local v1    # "homeCalendar":Ljava/util/Calendar;
    .restart local v3    # "roamingCalendar":Ljava/util/Calendar;
    :cond_195
    move v2, v6

    .line 432
    goto/16 :goto_b3

    .line 445
    .restart local v2    # "isDateOn":Z
    :cond_198
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ec

    .line 448
    :cond_1a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 449
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ec

    :cond_1b9
    move v5, v7

    .line 452
    goto/16 :goto_fc

    .line 461
    :cond_1bc
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v5

    if-eqz v5, :cond_1cb

    .line 462
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13d

    .line 464
    :cond_1cb
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600d4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13d

    :cond_1db
    move v6, v7

    .line 467
    goto/16 :goto_14c
.end method

.method private updateSingleClock()V
    .registers 10

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 357
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    const v7, 0x7f0b0104

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    .line 360
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    const v7, 0x7f0b0134

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 361
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 362
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 367
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_screen_date_and_year"

    const/4 v8, -0x2

    invoke-static {v3, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_d5

    move v1, v4

    .line 369
    .local v1, "isDateOn":Z
    :goto_58
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    if-eqz v1, :cond_d7

    move v3, v5

    :goto_5d
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSingleClock(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardClock;->setAutoHomeTimezone(Landroid/content/Context;)V

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 373
    .local v2, "systemLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_b1

    .line 374
    if-eqz v2, :cond_df

    const-string v3, "ko"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 375
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 377
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :cond_b1
    :goto_b1
    if-eqz v2, :cond_d4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    if-eqz v3, :cond_d4

    .line 388
    const-string v3, "ar"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cf

    const-string v3, "fa"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 389
    :cond_cf
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 394
    :cond_d4
    :goto_d4
    return-void

    .end local v1    # "isDateOn":Z
    .end local v2    # "systemLocale":Ljava/util/Locale;
    :cond_d5
    move v1, v5

    .line 367
    goto :goto_58

    .restart local v1    # "isDateOn":Z
    :cond_d7
    move v3, v6

    .line 369
    goto :goto_5d

    .line 379
    .restart local v2    # "systemLocale":Ljava/util/Locale;
    :cond_d9
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b1

    .line 382
    :cond_df
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b1

    .line 391
    :cond_ea
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_d4
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    const-string v3, "onAttachedToWindow()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 217
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "batteryFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateClock()V

    .line 230
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 231
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 237
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 241
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 164
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 165
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 167
    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    .line 168
    const v0, 0x7f0b0112

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    .line 169
    const v0, 0x7f0b0136

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    .line 170
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    .line 171
    const v0, 0x7f0b011a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    .line 173
    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 174
    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 175
    const v0, 0x7f0b0137

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 176
    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0b0113

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 180
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 181
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 182
    const v0, 0x7f0b0118

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0b0119

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 186
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 187
    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 188
    const v0, 0x7f0b011e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    .line 191
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_eb

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_eb
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 197
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    .line 199
    const-string v0, "/system/fonts/SamsungSans-Num3T.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTypeface:Landroid/graphics/Typeface;

    .line 200
    const-string v0, "/system/fonts/SamsungSans-Num3L.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockTypeface:Landroid/graphics/Typeface;

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciption()V

    .line 207
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 328
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 329
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshOwnerInfo()V

    .line 330
    return-void
.end method
