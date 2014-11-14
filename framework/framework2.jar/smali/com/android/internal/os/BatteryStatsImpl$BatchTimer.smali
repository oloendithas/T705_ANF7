.class public final Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchTimer"
.end annotation


# instance fields
.field mInDischarge:Z

.field mLastAddedDuration:J

.field mLastAddedTime:J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Z)V
    .registers 5
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "inDischarge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 965
    .local p3, "unpluggables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;)V

    .line 966
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 967
    iput-boolean p4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 968
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;ZLandroid/os/Parcel;)V
    .registers 8
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "inDischarge"    # Z
    .param p5, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;Z",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 956
    .local p3, "unpluggables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-direct {p0, p2, p3, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 957
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 958
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 959
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 960
    iput-boolean p4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 961
    return-void
.end method

.method private computeOverage(J)J
    .registers 7
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 1003
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_e

    .line 1004
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    .line 1006
    :cond_e
    return-wide v0
.end method

.method private recomputeLastDuration(JZ)V
    .registers 10
    .param p1, "curTime"    # J
    .param p3, "abort"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 1010
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide v0

    .line 1011
    .local v0, "overage":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_17

    .line 1015
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v2, :cond_13

    .line 1016
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1018
    :cond_13
    if-eqz p3, :cond_18

    .line 1019
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 1025
    :cond_17
    :goto_17
    return-void

    .line 1021
    :cond_18
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 1022
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    goto :goto_17
.end method


# virtual methods
.method public abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 8
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 1039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1040
    .local v0, "now":J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1041
    return-void
.end method

.method public addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .registers 10
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "durationMillis"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1028
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long v0, v2, v4

    .line 1029
    .local v0, "now":J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1030
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 1031
    mul-long v2, p2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 1032
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v2, :cond_23

    .line 1033
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1034
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1036
    :cond_23
    return-void
.end method

.method protected computeCurrentCountLocked()I
    .registers 2

    .prologue
    .line 1045
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .registers 9
    .param p1, "curBatteryRealtime"    # J

    .prologue
    .line 1050
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide v0

    .line 1051
    .local v0, "overage":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 1052
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1054
    .end local v0    # "overage":J
    :goto_13
    return-wide v0

    .restart local v0    # "overage":J
    :cond_14
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    goto :goto_13
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 997
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastAddedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastAddedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public plug(JJJ)V
    .registers 12
    .param p1, "elapsedRealtime"    # J
    .param p3, "batteryUptime"    # J
    .param p5, "batteryRealtime"    # J

    .prologue
    const/4 v4, 0x0

    .line 979
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 980
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 981
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->plug(JJJ)V

    .line 982
    return-void
.end method

.method reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z
    .registers 13
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "detachIfReset"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v0, v6, v8

    .line 1060
    .local v0, "now":J
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1061
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    cmp-long v3, v6, v0

    if-nez v3, :cond_1f

    move v2, v4

    .line 1062
    .local v2, "stillActive":Z
    :goto_14
    if-nez v2, :cond_21

    if-eqz p2, :cond_21

    move v3, v4

    :goto_19
    invoke-super {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 1063
    if-nez v2, :cond_23

    :goto_1e
    return v4

    .end local v2    # "stillActive":Z
    :cond_1f
    move v2, v5

    .line 1061
    goto :goto_14

    .restart local v2    # "stillActive":Z
    :cond_21
    move v3, v5

    .line 1062
    goto :goto_19

    :cond_23
    move v4, v5

    .line 1063
    goto :goto_1e
.end method

.method public unplug(JJJ)V
    .registers 11
    .param p1, "elapsedRealtime"    # J
    .param p3, "batteryUptime"    # J
    .param p5, "batteryRealtime"    # J

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 989
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_14

    .line 990
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 992
    :cond_14
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->unplug(JJJ)V

    .line 993
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "batteryRealtime"    # J

    .prologue
    .line 972
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 973
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 974
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 975
    return-void
.end method
