.class public Lcom/android/server/ssrm/fgapps/TouchReportRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchReportRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;


# instance fields
.field final REPORT_RATE_DEFAULT:I

.field final TAG:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mIsBrowserForeground:Z

.field mIsExecutedTouchReportRateRunnable:Z

.field mLastReportRate:I

.field mSIPVisible:Z

.field mUpdateTouchReportRateRunnable:Ljava/lang/Runnable;

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 39
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->TAG:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mSIPVisible:Z

    .line 49
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->REPORT_RATE_DEFAULT:I

    .line 51
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    .line 53
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mUserId:I

    .line 87
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsExecutedTouchReportRateRunnable:Z

    .line 89
    new-instance v0, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;-><init>(Lcom/android/server/ssrm/fgapps/TouchReportRate;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mUpdateTouchReportRateRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mHandler:Landroid/os/Handler;

    .line 57
    return-void

    .line 39
    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x2e
        0x15
        0xf
        0x19
        0x12
        0x28
        0x1f
        0xa
        0x15
        0x8
        0xe
        0x28
        0x1b
        0xe
        0x1f
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 2

    .prologue
    .line 61
    sget-object v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 62
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(I)V

    .line 64
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 69
    return-void
.end method

.method public onLockScreenRelease()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(I)V

    .line 128
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(I)V

    .line 138
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    .line 118
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(I)V

    .line 123
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mSIPVisible:Z

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(I)V

    .line 75
    return-void
.end method

.method public onUltraPowerSavingModeChanged()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(I)V

    .line 133
    return-void
.end method

.method updateTouchReportRate(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsExecutedTouchReportRateRunnable:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mUpdateTouchReportRateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsExecutedTouchReportRateRunnable:Z

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsExecutedTouchReportRateRunnable:Z

    .line 84
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mUpdateTouchReportRateRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method
