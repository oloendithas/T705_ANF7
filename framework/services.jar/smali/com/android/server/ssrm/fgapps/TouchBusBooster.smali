.class public final Lcom/android/server/ssrm/fgapps/TouchBusBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchBusBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field mIsAppForeground:Z

.field mIsHeavyAppForeground:Z

.field mLastBoostLevel:I

.field mSipForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->TAG:Ljava/lang/String;

    return-void

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
        0x38
        0xf
        0x9
        0x38
        0x15
        0x15
        0x9
        0xe
        0x1f
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mSipForeground:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsHeavyAppForeground:Z

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mLastBoostLevel:I

    .line 34
    return-void
.end method


# virtual methods
.method public calculateBoostLevel()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsHeavyAppForeground:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    if-eqz v1, :cond_1

    .line 44
    const/16 v0, 0x9

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    if-nez v1, :cond_0

    .line 49
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mSipForeground:Z

    if-nez v1, :cond_0

    .line 52
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 81
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsHeavyAppForeground:Z

    .line 83
    const-string v2, "com.facebook.katana"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google.android.talk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.kakao.talk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.whatsapp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->updateBoostLevel()V

    goto :goto_0

    .line 89
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 97
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mSipForeground:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->updateBoostLevel()V

    .line 70
    return-void
.end method

.method public updateBoostLevel()V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->calculateBoostLevel()I

    move-result v0

    .line 59
    .local v0, "newLevel":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mLastBoostLevel:I

    if-ne v1, v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mLastBoostLevel:I

    .line 63
    sget-object v1, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boost_level,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
