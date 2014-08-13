.class public Lcom/android/server/ssrm/fgapps/NavigationScenario;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "NavigationScenario.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field public static final SSRM_STATUS_NAME_FOR_NAVI:Ljava/lang/String;


# instance fields
.field final PKG_NAME_GOOGLE_NAVI:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mSupportedCpuFreq:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->SSRM_STATUS_NAME_FOR_NAVI:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x34
        0x1b
        0xc
        0x13
        0x1d
        0x1b
        0xe
        0x13
        0x15
        0x14
        0x25
        0x9
        0x12
        0x15
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 29
    const/16 v3, 0x19

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->x([I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->TAG:Ljava/lang/String;

    .line 35
    const/16 v3, 0x1c

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->x([I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->PKG_NAME_GOOGLE_NAVI:Ljava/lang/String;

    .line 67
    iput-object v4, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 69
    iput-object v4, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mSupportedCpuFreq:[I

    .line 46
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-eqz v3, :cond_0

    .line 48
    const/16 v3, 0x17

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->x([I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "PKG_NAME_TMAP":Ljava/lang/String;
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->x([I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "PKG_NAME_KT_NAVI":Ljava/lang/String;
    const/16 v3, 0x12

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "PKG_NAME_LGU_NAVI":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 64
    .end local v0    # "PKG_NAME_KT_NAVI":Ljava/lang/String;
    .end local v1    # "PKG_NAME_LGU_NAVI":Ljava/lang/String;
    .end local v2    # "PKG_NAME_TMAP":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->PKG_NAME_GOOGLE_NAVI:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 65
    return-void

    .line 29
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
        0x34
        0x1b
        0xc
        0x13
        0x1d
        0x1b
        0xe
        0x13
        0x15
        0x14
        0x29
        0x19
        0x1f
        0x14
        0x1b
        0x8
        0x13
        0x15
    .end array-data

    .line 35
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    .line 48
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x11
        0xe
        0x54
        0x9
        0x11
        0x1b
        0x1c
        0x54
        0x16
        0x4a
        0x4a
        0x4b
        0x17
        0xe
        0x17
        0x4a
        0x43
        0x4b
    .end array-data

    .line 53
    :array_3
    .array-data 4
        0x11
        0xe
        0x54
        0x14
        0x1b
        0xc
        0x13
    .end array-data

    .line 57
    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x14
        0x9
        0x15
        0x1c
        0xe
        0x54
        0x16
        0x1d
        0xf
        0x14
        0x1b
        0xc
        0x13
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 8
    .param p1, "isForeground"    # Z

    .prologue
    const v7, 0x13d620

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFgAppInPackageList:: isForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mContext:Landroid/content/Context;

    const-string v2, "NAVI_ARM_CONTROL"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 77
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mSupportedCpuFreq:[I

    .line 78
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mSupportedCpuFreq:[I

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const v3, 0x927c0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 93
    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 94
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 99
    :goto_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v6, "boostIntent":Landroid/content/Intent;
    sget-object v0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->SSRM_STATUS_NOTIFY:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->SSRM_STATUS_NAME:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/fgapps/NavigationScenario;->SSRM_STATUS_NAME_FOR_NAVI:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    sget-object v0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->SSRM_STATUS_VALUE:Ljava/lang/String;

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    const-string v0, "PackageName"

    const-string v1, "com.android.server.ssrm"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->PKG_NAME_GOOGLE_NAVI:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    const-string v0, "PID"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    :goto_3
    sget-object v0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 84
    .end local v6    # "boostIntent":Landroid/content/Intent;
    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v7}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 87
    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v7}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_2

    .line 107
    .restart local v6    # "boostIntent":Landroid/content/Intent;
    :cond_5
    const-string v0, "PID"

    const/16 v1, 0x100

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3
.end method
