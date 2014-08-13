.class public Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "PowerSavingModeFpsChange.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field m59FpsMaxHelper:Landroid/os/DVFSHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 31
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 35
    return-void

    .line 31
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data
.end method


# virtual methods
.method public onBootComplete()V
    .locals 6

    .prologue
    .line 53
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->mContext:Landroid/content/Context;

    const-string v2, "PSM_FPS_MAX_59"

    const/16 v3, 0x15

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "FPS"

    const-wide/16 v2, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 55
    return-void
.end method

.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 1
    .param p1, "isForeground"    # Z

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0
.end method
