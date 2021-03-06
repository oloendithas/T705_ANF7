.class public Lcom/touchtype/personalizer/PersonalizerService;
.super Landroid/app/IntentService;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;,
        Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;,
        Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;,
        Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;,
        Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_ENABLE_PERSONALIZATION:Ljava/lang/String; = "com.touchtype.personalizer.ACTION_ENABLE_PERSONALIZATION"

.field public static final INTENT_REQUIRED:Z = true

.field public static final KEY_DISABLED:Ljava/lang/String; = "enabled"

.field public static final KEY_ENABLE_TIME:Ljava/lang/String; = "enable_time"

.field public static final KEY_LASTRUN:Ljava/lang/String; = "lastrun"

.field public static final KEY_PERSONALIZER_ERROR:Ljava/lang/String; = "com.touchtype.personalizer.error"

.field public static final KEY_PREVIOUS_STATE:Ljava/lang/String; = "previous_state"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAX_SERVICE_TRY_COUNT:I = 0x5

.field public static final NO_INTENT_REQUIRED:Z = false

.field public static final PERSONALIZERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSONALIZER_COMPLETE:I = 0x3

.field public static final PERSONALIZER_DISABLED:I = -0x1

.field public static final PERSONALIZER_FAILED:I = 0x2

.field public static final PERSONALIZER_NOT_RUN:I = 0x0

.field public static final PERSONALIZER_NO_CONTACTS:I = 0x5

.field public static final PERSONALIZER_NO_MESSAGES:I = 0x4

.field public static final PERSONALIZER_PREFS:Ljava/lang/String; = "personalizer_service"

.field public static final PERSONALIZER_RUNNING:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "service"

.field private static final SERVICE_SLEEP_TIME:J = 0x2710L

.field private static final SLEEP_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContactsTimedTask:Ljava/lang/Runnable;

.field private mContactsTryCount:I

.field private mContext:Landroid/content/Context;

.field private mDeleteRemoteTimedTask:Ljava/lang/Runnable;

.field private mDeleteTryCount:I

.field private mGotContactsProgress:Z

.field private mGotSmsProgress:Z

.field private mHandler:Landroid/os/Handler;

.field private mPersonalizerHandler:Landroid/os/Handler;

.field private mPersonalizerLastRun:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonalizerPreviousState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonalizerState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

.field private mSmsTimedTask:Ljava/lang/Runnable;

.field private mSmsTryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    .line 73
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_facebook"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_weibo"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_gmail"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_twitter"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_renren"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_sms"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_contacts"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_delremote"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "PersonalizerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;-><init>(Lcom/touchtype/personalizer/PersonalizerService;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mBinder:Landroid/os/IBinder;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method static synthetic access$1200(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I

    return v0
.end method

.method static synthetic access$1208(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteRemoteTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/touchtype/personalizer/PersonalizerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotSmsProgress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/touchtype/personalizer/PersonalizerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotSmsProgress:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTryCount:I

    return v0
.end method

.method static synthetic access$2108(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTryCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/touchtype/personalizer/PersonalizerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/touchtype/personalizer/PersonalizerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I

    return v0
.end method

.method static synthetic access$2708(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizerService;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    return-void
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->disableRemotePersonalizers()V

    return-void
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    return-object v0
.end method

.method static synthetic access$902(Lcom/touchtype/personalizer/PersonalizerService;Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationRequest;
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService;
    .param p1, "x1"    # Lcom/touchtype/personalizer/PersonalizationRequest;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    return-object p1
.end method

.method private createNotification(ILjava/lang/String;IZ)V
    .locals 10
    .param p1, "resId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "serviceId"    # I
    .param p4, "needsIntent"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 575
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "src":Ljava/lang/String;
    const/4 v5, 0x0

    .line 577
    .local v5, "text":Ljava/lang/CharSequence;
    const-string v6, "%1$s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 578
    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 583
    :goto_0
    const/4 v0, 0x0

    .line 585
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_2

    .line 587
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v6, "com.touchtype.personalizer.PERSONALIZER_SETTINGS_ACTIVITY"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.touchtype.personalizer.PersonalizerSettingsActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const/high16 v6, 0x20000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 591
    const/4 v6, 0x5

    if-eq p3, v6, :cond_0

    const/4 v6, 0x6

    if-eq p3, v6, :cond_0

    invoke-virtual {p0, p3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 595
    const-string v6, "com.touchtype.personalizer.error"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const/high16 v7, 0x8000000

    invoke-static {v6, v8, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 603
    .local v2, "personalizationIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    const v6, 0x7f020319

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 604
    .local v3, "personalizationNotification":Landroid/app/Notification;
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 605
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const v8, 0x7f0d000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 606
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 607
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, p3, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 608
    return-void

    .line 581
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    .end local v2    # "personalizationIntent":Landroid/app/PendingIntent;
    .end local v3    # "personalizationNotification":Landroid/app/Notification;
    :cond_1
    move-object v5, v4

    goto :goto_0

    .line 599
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private disableRemotePersonalizers()V
    .locals 5

    .prologue
    .line 660
    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 661
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 663
    .local v2, "serviceId":I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 664
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    goto :goto_0

    .line 668
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "serviceId":I
    :cond_1
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 669
    return-void
.end method

.method private enableRemotePersonalizers()V
    .locals 5

    .prologue
    .line 677
    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 678
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 680
    .local v2, "serviceId":I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 681
    invoke-direct {p0, v2}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerPreviousState(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    goto :goto_0

    .line 685
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "serviceId":I
    :cond_1
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 689
    return-void
.end method

.method private getPersonalizerPreviousState(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v10, "com.touchtype.personalizer.ACTION_ENABLE_PERSONALIZATION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Got intent with ACTION_ENABLE_PERSONALIZATION"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->enableRemotePersonalizers()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 167
    .local v9, "extras":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "id":Ljava/lang/String;
    const-string v1, "path"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "service":Ljava/lang/String;
    const-string v1, "params"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "params":Ljava/lang/String;
    const-string v1, "modelname"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "modelName":Ljava/lang/String;
    const-string v1, "packagename"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 172
    .local v2, "fromInstaller":Z
    const-string v1, "name"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "serviceName":Ljava/lang/String;
    const-string v1, "serviceid"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 175
    .local v8, "serviceId":I
    const/4 v1, 0x5

    if-ne v8, v1, :cond_2

    .line 177
    const/4 v1, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    .line 178
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 181
    new-instance v1, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;

    invoke-direct {v1, p0, v2, v3, v8}, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;-><init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;I)V

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTimedTask:Ljava/lang/Runnable;

    .line 182
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Adding SMS parse job to queue"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 185
    :cond_2
    const/4 v1, 0x6

    if-ne v8, v1, :cond_3

    .line 187
    const/4 v1, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    .line 188
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 191
    new-instance v1, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    invoke-direct {v1, p0, v2, v3, v8}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;-><init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;I)V

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;

    .line 192
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Adding Contacts parse job to queue"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 195
    :cond_3
    const/4 v1, 0x7

    if-ne v8, v1, :cond_4

    .line 197
    const/4 v1, 0x7

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    .line 198
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 200
    new-instance v1, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    invoke-direct {v1, p0, v5, v4, v8}, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;-><init>(Lcom/touchtype/personalizer/PersonalizerService;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteRemoteTimedTask:Ljava/lang/Runnable;

    .line 201
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Adding delete remote data job to queue"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteRemoteTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 206
    :cond_4
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;-><init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    .local v0, "task":Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parse job to queue"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private initStoredState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 615
    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 616
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 618
    .local v2, "serviceId":I
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v2, v3, v7}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    .line 619
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastrun_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V

    .line 620
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previous_state_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerPreviousState(II)V

    goto :goto_0

    .line 622
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "serviceId":I
    :cond_0
    return-void
.end method

.method private setPersonalizerLastRun(IJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # J

    .prologue
    .line 713
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    return-void
.end method

.method private setPersonalizerPreviousState(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void
.end method

.method private setPersonalizerState(IIZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # I
    .param p3, "overwritePreviousState"    # Z

    .prologue
    .line 701
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    if-eqz p3, :cond_0

    .line 704
    invoke-direct {p0, p1, p2}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerPreviousState(II)V

    .line 706
    :cond_0
    return-void
.end method

.method private writeStoredState()V
    .locals 7

    .prologue
    .line 628
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 629
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    monitor-enter v0

    .line 630
    :try_start_0
    sget-object v4, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 631
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 633
    .local v3, "serviceId":I
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 636
    :cond_1
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastrun_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 639
    :cond_2
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previous_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerPreviousState(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 644
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "serviceId":I
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 643
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    return-void
.end method


# virtual methods
.method public clearLanguageData()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 733
    const/4 v4, 0x0

    .line 734
    .local v4, "result":Z
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v3

    .line 735
    .local v3, "mswiftKeySession":Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    .line 737
    .local v2, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 742
    :goto_0
    if-eqz v4, :cond_2

    .line 743
    sget-object v6, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 744
    .local v1, "key":Ljava/lang/String;
    sget-object v6, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 749
    .local v5, "serviceId":I
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 750
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :goto_2
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 752
    :cond_0
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 756
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "serviceId":I
    :cond_1
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 758
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return v4

    .line 738
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getPersonalizerLastRun(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonalizerState(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 90
    sget-object v5, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v6, "Creating personalizer service"

    invoke-static {v5, v6}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 93
    const-string v5, "personalizer_service"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    .line 94
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    .line 97
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->initStoredState()V

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "staleStateChanged":Z
    sget-object v0, Lcom/touchtype/personalizer/Personalizer;->SERVICE_LIST:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 105
    .local v3, "serviceId":I
    invoke-virtual {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 106
    invoke-direct {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerPreviousState(I)I

    move-result v5

    invoke-direct {p0, v3, v5, v7}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    .line 107
    const/4 v4, 0x1

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "serviceId":I
    :cond_1
    if-eqz v4, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 113
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerService;->init(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerService;->init(Landroid/content/Intent;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public setFailed(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 648
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V

    .line 651
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    .line 652
    return-void
.end method
