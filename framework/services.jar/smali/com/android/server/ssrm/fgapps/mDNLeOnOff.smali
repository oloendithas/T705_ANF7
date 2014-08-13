.class public Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "mDNLeOnOff.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;
    }
.end annotation


# static fields
.field static final MSG_ANI_STARTED:I = 0x1

.field public static avgAniTime:J

.field public static currentEndTime:J

.field public static currentStartTime:J

.field private static delayOffset:I

.field static syncObject:Ljava/lang/Object;

.field static syncObject2:Ljava/lang/Object;

.field public static totalAniCount:I

.field public static totalAniTime:J


# instance fields
.field final SYSPROP_KEY:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field isLockScreenOn:Z

.field ismDNIeAppFg:Z

.field private mHandler:Landroid/os/Handler;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreviousmDNIeValue:I

.field mResult:Z

.field mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

.field updateThread:Ljava/lang/Thread;

.field updateThread2:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 149
    sput v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    .line 306
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    .line 308
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    .line 310
    sput v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    .line 312
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    .line 314
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 44
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->SYSPROP_KEY:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    .line 65
    iput v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    .line 54
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->SYSPROP_KEY:Ljava/lang/String;

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 44
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
        0x17
        0x3e
        0x34
        0x33
        0x1f
        0x35
        0x14
        0x35
        0x1c
        0x1c
    .end array-data

    .line 49
    :array_1
    .array-data 4
        0x9
        0x3
        0x9
        0x54
        0x9
        0x9
        0x8
        0x17
        0x54
        0x17
        0x1e
        0x14
        0x13
        0x1f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->retrieveSettings()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 40
    sput p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    return p0
.end method

.method private retrieveSettings()V
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v12, -0x2

    const/4 v8, 0x0

    .line 103
    sget-object v9, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "reading_mode_app_list"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "readingModeApps":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSettings:: readingModeApps = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v9, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "e_reading_display_mode"

    invoke-static {v9, v10, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v2, :cond_1

    .line 108
    .local v2, "isReadingMode":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSettings:: isReadingMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->clearPackages()V

    .line 113
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 145
    :goto_1
    return-void

    .end local v2    # "isReadingMode":Z
    :cond_1
    move v2, v8

    .line 106
    goto :goto_0

    .line 117
    .restart local v2    # "isReadingMode":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->clearPackages()V

    .line 118
    if-eqz v2, :cond_7

    .line 119
    if-eqz v7, :cond_7

    .line 120
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "names":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v3, :cond_7

    aget-object v5, v0, v1

    .line 122
    .local v5, "packageAndActivityName":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 121
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_4
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "packageName":[Ljava/lang/String;
    const-string v9, "com.google.android.gms"

    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 127
    const-string v9, "com.google.android.gms"

    invoke-virtual {p0, v9}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    .line 128
    const-string v9, "com.google.android.gms.ui"

    invoke-virtual {p0, v9}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :cond_5
    const-string v9, "com.google.android.music"

    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 131
    const-string v9, "com.google.android.music"

    invoke-virtual {p0, v9}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    .line 132
    const-string v9, "com.google.android.music:ui"

    invoke-virtual {p0, v9}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    :cond_6
    aget-object v9, v6, v8

    if-eqz v9, :cond_3

    .line 135
    aget-object v9, v6, v8

    invoke-virtual {p0, v9}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 141
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "packageAndActivityName":Ljava/lang/String;
    .end local v6    # "packageName":[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateForegroundPackageStatus()V

    .line 142
    sget-object v9, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    monitor-enter v9

    .line 143
    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 144
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method


# virtual methods
.method protected calculateCurrentmDNIe()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isMultiWindowActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    const-string v0, "com.android.email"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const/16 v0, 0xa

    goto :goto_0

    .line 271
    :cond_2
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public onAnimationFinished(J)V
    .locals 6
    .param p1, "currentTime"    # J

    .prologue
    .line 328
    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sput-wide p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    .line 333
    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 334
    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    .line 335
    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sget-wide v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    sget-wide v4, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    .line 336
    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sget v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    goto :goto_0
.end method

.method public onAnimationStarted(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 317
    sget-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    sput-wide p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    .line 322
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 324
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string v1, "onBootComplete : mContext == null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    .line 191
    new-instance v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$1;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$1;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    .line 205
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->register()V

    .line 206
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->retrieveSettings()V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 209
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread:Ljava/lang/Thread;

    .line 229
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread2:Ljava/lang/Thread;

    .line 247
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 2

    .prologue
    .line 342
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 344
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 3
    .param p1, "isForeground"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "foregroundPackageName":Ljava/lang/String;
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 156
    const-string v1, "launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    sget-object v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_0
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v1, :cond_0

    .line 159
    const/16 v1, -0x64

    sput v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    .line 161
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 162
    monitor-exit v2

    .line 164
    :cond_1
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLockScreenRelease()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    .line 254
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 255
    return-void
.end method

.method public onMultiWindowStatusChanged(Z)V
    .locals 3
    .param p1, "isMultiWindowOn"    # Z

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiWindowActivated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isMultiWindowActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    sput-object p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    .line 362
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "onReceive:: ACTION_USER_FOREGROUND"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->deregister()V

    .line 364
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->register()V

    .line 365
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->retrieveSettings()V

    .line 367
    :cond_0
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 170
    return-void
.end method

.method protected declared-synchronized updatemDNIe()V
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->calculateCurrentmDNIe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIeSysFs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updatemDNIeSysFs(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    if-eq p1, v1, :cond_0

    .line 287
    :try_start_0
    invoke-static {p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    .line 288
    iput p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    .line 289
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeUIMode => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->SYSPROP_KEY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-nez p1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAutoBrightnessForEbookOnly = true"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e0":Ljava/lang/IllegalAccessError;
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "IllegalAccessError occured!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    .end local v0    # "e0":Ljava/lang/IllegalAccessError;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAutoBrightnessForEbookOnly = false"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
