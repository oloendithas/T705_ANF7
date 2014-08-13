.class public Lcom/sec/android/inputmethod/Booster;
.super Ljava/lang/Object;
.source "Booster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/Booster$BoosterHandler;
    }
.end annotation


# static fields
.field private static final MSG_SELF_STOP:I = 0x1

.field private static final MSG_SELF_STOP_AND_TERMINATE:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/sec/android/inputmethod/Booster;


# instance fields
.field private final DEBUG:Z

.field private SELF_TERMINATE_TIME:J

.field private lastBoostRequestedAt:J

.field private mCPUBooster:Landroid/os/DVFSHelper;

.field private mCPUMaxBooster:Landroid/os/DVFSHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/Booster;->DEBUG:Z

    .line 20
    iput-object v2, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    .line 22
    iput-object v2, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/Booster;->lastBoostRequestedAt:J

    .line 26
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/inputmethod/Booster;->SELF_TERMINATE_TIME:J

    .line 32
    iput-object v2, p0, Lcom/sec/android/inputmethod/Booster;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/Booster$BoosterHandler;-><init>(Lcom/sec/android/inputmethod/Booster;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/Booster;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/Booster;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/inputmethod/Booster;
    .param p1, "x1"    # Landroid/os/DVFSHelper;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/Booster;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/Booster;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/inputmethod/Booster;
    .param p1, "x1"    # Landroid/os/DVFSHelper;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    return-object p1
.end method

.method private doBoost(IZ)V
    .locals 9
    .param p1, "boostTime"    # I
    .param p2, "selfTerminate"    # Z

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/inputmethod/Booster;->lastBoostRequestedAt:J

    sub-long/2addr v3, v5

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    sget-object v3, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 128
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/inputmethod/Booster;->lastBoostRequestedAt:J

    .line 130
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_2

    .line 131
    new-instance v3, Landroid/os/DVFSHelper;

    sget-object v4, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    .line 132
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    .line 134
    .local v2, "supportedCPUFreqTable":[I
    if-eqz v2, :cond_2

    .line 135
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "CPU"

    const/4 v5, 0x0

    aget v5, v2, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 140
    .end local v2    # "supportedCPUFreqTable":[I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_3

    .line 141
    new-instance v3, Landroid/os/DVFSHelper;

    sget-object v4, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    const/16 v5, 0xe

    invoke-direct {v3, v4, v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    .line 142
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 143
    .local v1, "supportedCPUCoreTable":[I
    if-eqz v1, :cond_3

    .line 144
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    const-string v4, "CORE_NUM"

    const/4 v5, 0x0

    aget v5, v1, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 148
    .end local v1    # "supportedCPUCoreTable":[I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_4

    .line 149
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_5

    .line 153
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 156
    :cond_5
    if-eqz p2, :cond_0

    .line 157
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/sec/android/inputmethod/Booster;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    int-to-long v5, p1

    iget-wide v7, p0, Lcom/sec/android/inputmethod/Booster;->SELF_TERMINATE_TIME:J

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungIME"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/Booster;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/sec/android/inputmethod/Booster;->sInstance:Lcom/sec/android/inputmethod/Booster;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/sec/android/inputmethod/Booster;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/Booster;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/Booster;->sInstance:Lcom/sec/android/inputmethod/Booster;

    .line 83
    sput-object p0, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    .line 87
    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/Booster;->sInstance:Lcom/sec/android/inputmethod/Booster;

    return-object v0
.end method


# virtual methods
.method public doBoost(I)V
    .locals 1
    .param p1, "boostTime"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/inputmethod/Booster;->doBoost(IZ)V

    .line 116
    return-void
.end method

.method public stopBoost()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 98
    :cond_1
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 109
    :cond_1
    iput-object v1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    .line 110
    iput-object v1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    .line 111
    return-void
.end method
