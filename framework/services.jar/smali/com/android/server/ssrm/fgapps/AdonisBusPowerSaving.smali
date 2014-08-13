.class public Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "AdonisBusPowerSaving.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field private static final PATH_INT:Ljava/lang/String;

.field private static final PATH_MIF:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;


# instance fields
.field mLastValue:I

.field mTargetValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x34

    .line 26
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->TAG:Ljava/lang/String;

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->PATH_MIF:Ljava/lang/String;

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->PATH_INT:Ljava/lang/String;

    return-void

    .line 26
    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x3b
        0x1e
        0x15
        0x14
        0x13
        0x9
        0x38
        0xf
        0x9
        0x2a
        0x15
        0xd
        0x1f
        0x8
        0x29
        0x1b
        0xc
        0x13
        0x14
        0x1d
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x19
        0x16
        0x1b
        0x9
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x1f
        0x2
        0x3
        0x14
        0x15
        0x9
        0x4f
        0x57
        0x18
        0xf
        0x9
        0x1c
        0x8
        0x1f
        0xb
        0x57
        0x17
        0x13
        0x1c
        0x55
        0x1f
        0x14
        0x25
        0x17
        0x15
        0x14
        0x13
        0xe
        0x15
        0x8
        0x13
        0x14
        0x1d
    .end array-data

    .line 82
    :array_2
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x19
        0x16
        0x1b
        0x9
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x1f
        0x2
        0x3
        0x14
        0x15
        0x9
        0x4f
        0x57
        0x18
        0xf
        0x9
        0x1c
        0x8
        0x1f
        0xb
        0x57
        0x13
        0x14
        0xe
        0x55
        0x1f
        0x14
        0x25
        0x17
        0x15
        0x14
        0x13
        0xe
        0x15
        0x8
        0x13
        0x14
        0x1d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 70
    iput v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mLastValue:I

    .line 72
    iput v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    .line 33
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 37
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 42
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 49
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 37
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
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 42
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x1b
        0x11
        0x1b
        0x15
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 46
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xd
        0x12
        0x1b
        0xe
        0x9
        0x1b
        0xa
        0xa
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 60
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    .line 62
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->updateSysfs()V

    goto :goto_0

    .line 60
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 68
    return-void
.end method

.method updateSysfs()V
    .locals 4

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mLastValue:I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    if-eq v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mLastValue:I

    .line 91
    sget-object v0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->PATH_MIF:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->PATH_INT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
