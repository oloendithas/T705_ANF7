.class public Lcom/android/server/ssrm/fgapps/FtatAffinity;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "FtatAffinity.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private cpu:I

.field mAfControl:Landroid/sec/performance/AffinityControl;

.field private tid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "SSRMv2:FtatAffinity"

    sput-object v0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->cpu:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->tid:I

    .line 33
    const-string v0, "com.ftat"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->cpu:I

    .line 35
    new-instance v0, Landroid/sec/performance/AffinityControl;

    invoke-direct {v0}, Landroid/sec/performance/AffinityControl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 36
    return-void
.end method


# virtual methods
.method protected declared-synchronized SetAffinity()V
    .locals 5

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->cpu:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->tid:I

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->mAfControl:Landroid/sec/performance/AffinityControl;

    iget v1, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->tid:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->cpu:I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/sec/performance/AffinityControl;->SetAffinity(I[I)I

    .line 41
    sget-object v0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->TAG:Ljava/lang/String;

    const-string v1, "SetAffinity"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/FtatAffinity;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 1
    .param p1, "isForeground"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackagePid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/FtatAffinity;->tid:I

    .line 49
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FtatAffinity;->SetAffinity()V

    .line 51
    :cond_0
    return-void
.end method
