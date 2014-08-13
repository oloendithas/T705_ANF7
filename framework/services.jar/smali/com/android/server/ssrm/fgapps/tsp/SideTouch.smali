.class public Lcom/android/server/ssrm/fgapps/tsp/SideTouch;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SideTouch.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mCamera:Z

.field mIsAppForeground:Z

.field mLastValue:I

.field mMultiverse:Z

.field mTargetValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 33
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mIsAppForeground:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mMultiverse:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mCamera:Z

    .line 46
    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mLastValue:I

    .line 48
    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    .line 38
    return-void

    .line 33
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
        0x29
        0x2a
        0x40
        0x29
        0x13
        0x1e
        0x1f
        0x2e
        0x15
        0xf
        0x19
        0x12
    .end array-data
.end method


# virtual methods
.method public onBootComplete()V
    .locals 8

    .prologue
    .line 84
    new-instance v1, Landroid/content/Intent;

    const/16 v5, 0x1e

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->x([I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 90
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x200

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 93
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void

    .line 84
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x9
        0x13
        0x1e
        0x1f
        0xe
        0x15
        0xf
        0x19
        0x12
        0x54
        0x3d
        0x28
        0x33
        0x2a
    .end array-data
.end method

.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mIsAppForeground:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->updateSideTouch()V

    .line 59
    return-void
.end method

.method public setCameraEnable(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraEnable:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mCamera:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->updateSideTouch()V

    .line 71
    return-void
.end method

.method public setMultiverseEnable(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultiverseEnable:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mMultiverse:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->updateSideTouch()V

    .line 65
    return-void
.end method

.method updateSideTouch()V
    .locals 3

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mMultiverse:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mIsAppForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mCamera:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    .line 75
    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mLastValue:I

    if-eq v0, v1, :cond_1

    .line 76
    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mLastValue:I

    .line 77
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sidekey_enable,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
