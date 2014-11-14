.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private mServer2:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .registers 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 49
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "server2"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 55
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 58
    iput-wide p3, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 59
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v11, Landroid/util/NtpTrustedTime;

    monitor-enter v11

    :try_start_3
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v10, :cond_4f

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 64
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 66
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v10, 0x104006c

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "defaultServer":Ljava/lang/String;
    const v10, 0x10e0042

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v1, v10

    .line 71
    .local v1, "defaultTimeout":J
    const-string/jumbo v10, "ntp_server"

    invoke-static {v4, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v10, "ntp_timeout"

    invoke-static {v4, v10, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 76
    .local v8, "timeout":J
    if-eqz v5, :cond_53

    move-object v6, v5

    .line 77
    .local v6, "server":Ljava/lang/String;
    :goto_2f
    const v10, 0x104006d

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "server2":Ljava/lang/String;
    const-string v10, "CMCC"

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_55

    .line 80
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v6, v7, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 86
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "defaultTimeout":J
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v7    # "server2":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_4f
    :goto_4f
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_5d

    monitor-exit v11

    return-object v10

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "defaultTimeout":J
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_53
    move-object v6, v0

    .line 76
    goto :goto_2f

    .line 82
    .restart local v6    # "server":Ljava/lang/String;
    .restart local v7    # "server2":Ljava/lang/String;
    :cond_55
    :try_start_55
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5d

    goto :goto_4f

    .line 62
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "defaultTimeout":J
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v7    # "server2":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_5d
    move-exception v10

    monitor-exit v11

    throw v10
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 5

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_c

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_c
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .registers 9

    .prologue
    const-wide/16 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 91
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 119
    :goto_8
    return v1

    .line 96
    :cond_9
    const-string v3, "NtpTrustedTime"

    const-string v4, "forceRefresh() from cache miss"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 98
    .local v0, "client":Landroid/net/SntpClient;
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 99
    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 100
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 101
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 102
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v3

    div-long/2addr v3, v6

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 103
    const-string v1, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTime Success from server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpCertainty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 106
    goto :goto_8

    .line 107
    :cond_76
    const-string v3, "CMCC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ec

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 109
    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 110
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 111
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 112
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v3

    div-long/2addr v3, v6

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 113
    const-string v1, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTime Success from server2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpCertainty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 116
    goto/16 :goto_8

    .line 118
    :cond_ec
    const-string v2, "NtpTrustedTime"

    const-string v3, "forceRefresh Fail."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public getCacheAge()J
    .registers 5

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_c

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 133
    :goto_b
    return-wide v0

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b
.end method

.method public getCacheCertainty()J
    .registers 3

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_7

    .line 140
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 142
    :goto_6
    return-wide v0

    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_6
.end method

.method public getCachedNtpTime()J
    .registers 3

    .prologue
    .line 159
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .registers 3

    .prologue
    .line 164
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
