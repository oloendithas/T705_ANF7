.class public Lcom/android/keyguard/sec/ContextualWidgetMonitor;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/ContextualWidgetMonitor$4;,
        Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;,
        Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;


# instance fields
.field private final CONTEXTUAL_WIDGET_RESET_DELAY:J

.field private final FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

.field private final FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

.field private final MISSED_EVENT_ADDED:Ljava/lang/String;

.field private final MISSED_EVENT_REMOVED:Ljava/lang/String;

.field private final MMS_PACKAGE:Ljava/lang/String;

.field private final MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private final REMOTE_ADDED:Ljava/lang/String;

.field private final REMOTE_REMOVED:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final TPHONE_PACKAGE:Ljava/lang/String;

.field private mAlreadyAddedWidgetId:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultFMRadioWidget:Landroid/content/ComponentName;

.field private mDefaultMissedWidget:Landroid/content/ComponentName;

.field private mDefaultMusicWidget:Landroid/content/ComponentName;

.field private mDefaultRemoteWidget:Landroid/content/ComponentName;

.field private mDefaultSecMusicWidget:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetContextualWidgetRunnable:Ljava/lang/Runnable;

.field private mShowMissedWidgetBecauseOfRoaming:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->PHONE_PACKAGE:Ljava/lang/String;

    .line 84
    const-string v3, "com.skt.prod.dialer"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->TPHONE_PACKAGE:Ljava/lang/String;

    .line 86
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MMS_PACKAGE:Ljava/lang/String;

    .line 88
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_ADDED:Ljava/lang/String;

    .line 90
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_REMOVED:Ljava/lang/String;

    .line 92
    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 94
    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 96
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->REMOTE_ADDED:Ljava/lang/String;

    .line 98
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->REMOTE_REMOVED:Ljava/lang/String;

    .line 100
    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 102
    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 104
    const-string v3, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

    .line 106
    const-string v3, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

    .line 144
    new-instance v3, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;-><init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v3, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;-><init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    .line 299
    iput v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 301
    iput-boolean v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    .line 600
    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->CONTEXTUAL_WIDGET_RESET_DELAY:J

    .line 602
    new-instance v3, Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;-><init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    .line 304
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    .line 305
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 307
    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->wipeContextualWidgets()V

    .line 309
    new-instance v3, Landroid/appwidget/AppWidgetHost;

    const v4, 0x4b455947

    invoke-direct {v3, p1, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 310
    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 313
    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 314
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f060011

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    .line 319
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f060013

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060014

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    .line 324
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f060015

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060016

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    .line 329
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f06001b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06001c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    .line 334
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f06001d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v3, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v3, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 355
    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isRoamingFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isIgnoreNationalRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-object v0
.end method

.method private addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .registers 4
    .param p1, "type"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    .prologue
    .line 472
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 491
    :goto_b
    return-void

    .line 474
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 477
    :pswitch_12
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 480
    :pswitch_18
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 483
    :pswitch_1e
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 486
    :pswitch_24
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 472
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

.method private appWidget(Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v3

    .line 547
    .local v3, "widgetId":I
    if-eqz v3, :cond_12

    .line 548
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    if-eqz v4, :cond_f

    .line 549
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-interface {v4, v3}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->moveToContextualWidget(I)V

    .line 550
    :cond_f
    iput v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 579
    :goto_11
    return-void

    .line 553
    :cond_12
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 557
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 559
    .local v0, "contextualWidgetId":I
    if-nez v0, :cond_31

    .line 560
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 561
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v2, "options":Landroid/os/Bundle;
    const-string v4, "appWidgetCategory"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    :try_start_2c
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, p1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_31} :catch_4c

    .line 574
    .end local v2    # "options":Landroid/os/Bundle;
    :cond_31
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 575
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->addContextualWidget(I)Z

    .line 577
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 566
    .restart local v2    # "options":Landroid/os/Bundle;
    :catch_4c
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ContexualWidgetMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_11
.end method

.method private getContextualWidgetId(Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 516
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v0

    .line 517
    .local v0, "contextualWidgetIds":[I
    if-nez v0, :cond_a

    .line 526
    :cond_9
    :goto_9
    return v3

    .line 519
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 520
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 522
    .local v2, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_23

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 523
    aget v3, v0, v1

    goto :goto_9

    .line 519
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    if-nez v0, :cond_b

    .line 440
    new-instance v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    .line 442
    :cond_b
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    return-object v0
.end method

.method private getWidgetId(Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v1

    .line 532
    .local v1, "widgetIds":[I
    if-nez v1, :cond_a

    .line 540
    :cond_9
    :goto_9
    return v3

    .line 534
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v4, v1

    if-ge v0, v4, :cond_9

    .line 535
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 536
    .local v2, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_23

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 537
    aget v3, v1, v0

    goto :goto_9

    .line 534
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private handleFMRadioWidgetUpdate(Z)V
    .registers 3
    .param p1, "added"    # Z

    .prologue
    .line 423
    if-eqz p1, :cond_8

    .line 424
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 428
    :goto_7
    return-void

    .line 426
    :cond_8
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleMissedEventUpdate()V
    .registers 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isMissedEvent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 432
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 436
    :goto_b
    return-void

    .line 434
    :cond_c
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_b
.end method

.method private handleMusicWidgetUpdate(Z)V
    .registers 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 407
    if-eqz p1, :cond_8

    .line 408
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 412
    :goto_7
    return-void

    .line 410
    :cond_8
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleRemoteWidgetUpdate(Z)V
    .registers 3
    .param p1, "added"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_8

    .line 401
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 404
    :goto_7
    return-void

    .line 403
    :cond_8
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleSecMusicWidgetUpdate(Z)V
    .registers 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 415
    if-eqz p1, :cond_8

    .line 416
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 420
    :goto_7
    return-void

    .line 418
    :cond_8
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private isIgnoreNationalRoaming()Z
    .registers 4

    .prologue
    .line 367
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "PRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_16
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isNationalRoaming()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 370
    const-string v1, "ContexualWidgetMonitor"

    const-string v2, "isIgnoreNationalRoaming() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x1

    .line 374
    :goto_24
    return v1

    .line 373
    :cond_25
    const-string v1, "ContexualWidgetMonitor"

    const-string v2, "isIgnoreNationalRoaming() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private isNationalRoaming()Z
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 379
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "simNumeric":Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 383
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 387
    const-string v4, "ContexualWidgetMonitor"

    const-string v5, "isNationalRoaming() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v4, 0x1

    .line 396
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :goto_34
    return v4

    .line 390
    .restart local v0    # "plmnMCC":Ljava/lang/String;
    .restart local v2    # "simMCC":Ljava/lang/String;
    :cond_35
    const-string v5, "ContexualWidgetMonitor"

    const-string v6, "isNationalRoaming() = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 395
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_3d
    const-string v5, "ContexualWidgetMonitor"

    const-string v6, "isNationalRoaming() = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private isRoamingFeature()Z
    .registers 5

    .prologue
    .line 359
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 361
    .local v0, "isFeature":Z
    const-string v1, "ContexualWidgetMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoamingFeature() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v0
.end method

.method private removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .registers 4
    .param p1, "type"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    .prologue
    .line 494
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 512
    :goto_b
    return-void

    .line 496
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 499
    :pswitch_12
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 502
    :pswitch_18
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 505
    :pswitch_1e
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 508
    :pswitch_24
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 494
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

.method private removeWidget(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "widgetComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 584
    .local v0, "alreadyAddedWidgetId":I
    if-eqz v0, :cond_9

    .line 585
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 589
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v1

    .line 591
    .local v1, "widgetId":I
    if-eqz v1, :cond_29

    .line 592
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 593
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 595
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    :cond_29
    return-void
.end method


# virtual methods
.method public isMissedEvent()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 455
    const/4 v3, 0x0

    .line 456
    .local v3, "mNM":Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 457
    .local v0, "CallNotiInfo":Landroid/app/NotificationInfo;
    const/4 v2, 0x0

    .line 458
    .local v2, "TCallNotiInfo":Landroid/app/NotificationInfo;
    const/4 v1, 0x0

    .line 460
    .local v1, "MsgNotiInfo":Landroid/app/NotificationInfo;
    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_33

    .line 461
    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mNM":Landroid/app/NotificationManager;
    check-cast v3, Landroid/app/NotificationManager;

    .line 462
    .restart local v3    # "mNM":Landroid/app/NotificationManager;
    const-string v6, "com.android.phone"

    invoke-virtual {v3, v6, v5}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v0

    .line 463
    const-string v6, "com.skt.prod.dialer"

    invoke-virtual {v3, v6, v5}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    .line 464
    const-string v6, "com.android.mms"

    const/16 v7, 0x7b

    invoke-virtual {v3, v6, v7}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 468
    if-nez v0, :cond_32

    if-nez v2, :cond_32

    if-nez v1, :cond_32

    iget-boolean v6, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    if-eqz v6, :cond_33

    :cond_32
    move v4, v5

    :cond_33
    return v4
.end method

.method public registerCallback(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 451
    return-void
.end method

.method public removeCallback()V
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 447
    return-void
.end method
