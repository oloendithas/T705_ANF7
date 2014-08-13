.class public Lcom/android/server/ssrm/fgapps/LocationBundling;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "LocationBundling.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final ACTION_BUNDLING_POLICY_UPDATED:Ljava/lang/String;

.field private final mBlackListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundlingEnabled:Z

.field private mGmsVersionMatched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/LocationBundling;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/LocationBundling;->TAG:Ljava/lang/String;

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
        0x36
        0x15
        0x19
        0x1b
        0xe
        0x13
        0x15
        0x14
        0x38
        0xf
        0x14
        0x1e
        0x16
        0x13
        0x14
        0x1d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mGmsVersionMatched:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    .line 40
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    .line 46
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/LocationBundling;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->ACTION_BUNDLING_POLICY_UPDATED:Ljava/lang/String;

    .line 43
    return-void

    .line 46
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
        0x13
        0x14
        0xe
        0x1f
        0x14
        0xe
        0x54
        0x1b
        0x19
        0xe
        0x13
        0x15
        0x14
        0x54
        0x38
        0x2f
        0x34
        0x3e
        0x36
        0x33
        0x34
        0x3d
        0x25
        0x2a
        0x35
        0x36
        0x33
        0x39
        0x23
        0x25
        0x2f
        0x2a
        0x3e
        0x3b
        0x2e
        0x3f
        0x3e
    .end array-data
.end method


# virtual methods
.method public onBootComplete()V
    .locals 4

    .prologue
    .line 90
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->GMS_BUNDLING:Z

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->ACTION_BUNDLING_POLICY_UPDATED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "GMS_LOCATION_BUNDLING"

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    sget-object v1, Lcom/android/server/ssrm/fgapps/LocationBundling;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/android/server/ssrm/fgapps/LocationBundling;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUNDLING_POLICY_UPDATED: GMS_LOCATION_BUNDLING = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onFgAppChanged()V
    .locals 5

    .prologue
    .line 54
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->GMS_BUNDLING:Z

    if-eqz v2, :cond_0

    .line 55
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mGmsVersionMatched:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 57
    .local v0, "bundlingEnabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    if-eq v0, v2, :cond_0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    .line 59
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->ACTION_BUNDLING_POLICY_UPDATED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "GMS_LOCATION_BUNDLING"

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    sget-object v2, Lcom/android/server/ssrm/fgapps/LocationBundling;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 62
    sget-object v2, Lcom/android/server/ssrm/fgapps/LocationBundling;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUNDLING_POLICY_UPDATED: GMS_LOCATION_BUNDLING = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "bundlingEnabled":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 86
    return-void
.end method

.method public onPolicyUpdated(ZLjava/lang/String;)V
    .locals 8
    .param p1, "mVersionMatched"    # Z
    .param p2, "blackList"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mGmsVersionMatched:Z

    .line 70
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 71
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 72
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "pkgs":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 74
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 75
    sget-object v5, Lcom/android/server/ssrm/fgapps/LocationBundling;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "pkgs":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LocationBundling;->onFgAppChanged()V

    .line 81
    return-void
.end method
