.class public Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;
.super Ljava/lang/Object;
.source "VoWifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoWifiStateTracker"

.field public static final WFC_REGISTRATION_URI:Landroid/net/Uri;

.field private static sIntance:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInActiveVoWiFiCall:Z

.field private mIsStatusUpdate:Z

.field private mIsWfcRegistered:Z

.field private mWfcListener:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://com.oem.smartwifisupport.provider/wfc_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    .line 78
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsStatusUpdate:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->updateRegistrationStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->getVoWiFiStatus()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->sIntance:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->sIntance:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    .line 91
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->sIntance:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    return-object v0
.end method

.method private getVoWiFiStatus()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 152
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "wfc_event"

    aput-object v1, v2, v3

    .line 153
    .local v2, "myProjection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 154
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 155
    .local v7, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoWiFi event is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->log(Ljava/lang/String;)V

    .line 162
    const-string v1, "WFC_DEREGISTERED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WFC_BARRED_COUNTRY"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsWfcRegistered:Z

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z

    .line 173
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mWfcListener:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mWfcListener:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsWfcRegistered:Z

    invoke-interface {v1, v3}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;->onVoWifiStateChanged(Z)V

    .line 176
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsStatusUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_3
    if-eqz v6, :cond_4

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_4
    return-void

    .line 165
    :cond_5
    :try_start_1
    const-string v1, "WFC_REGISTERED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsWfcRegistered:Z

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 168
    :cond_7
    :try_start_2
    const-string v1, "WFC_VOICE_CALL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsWfcRegistered:Z

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "VoWifiStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method private updateRegistrationStatus()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$2;-><init>(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;)V

    const-string v2, "CallCard.updateRegistrationStatus"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method


# virtual methods
.method public isInActiveVoWiFiCall()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsStatusUpdate:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->getVoWiFiStatus()V

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z

    return v0
.end method

.method public isVoWiFiRegistered()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsStatusUpdate:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->getVoWiFiStatus()V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsWfcRegistered:Z

    return v0
.end method

.method public registerForWfcRegistrationStatus(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;)V
    .locals 4
    .param p1, "wfcListener"    # Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mWfcListener:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->updateRegistrationStatus()V

    .line 123
    const-string v1, "registerForWfcRegistrationStatus() "

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->log(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public unregisterForWfcRegistrationStatus()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mIsStatusUpdate:Z

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->mWfcListener:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;

    .line 134
    const-string v1, "unregisterForWfcRegistrationStatus() "

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->log(Ljava/lang/String;)V

    .line 135
    return-void
.end method
