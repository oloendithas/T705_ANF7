.class public final Lcom/android/server/ssrm/fgapps/GovernorSC7715;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorSC7715.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;


# instance fields
.field ID_SCALING_GOVERNOR:I

.field final TAG:Ljava/lang/String;

.field mIsScreenOff:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 26
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->mIsScreenOff:Z

    .line 33
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 36
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "performance"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->ID_SCALING_GOVERNOR:I

    .line 41
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
        0x3d
        0x15
        0xc
        0x1f
        0x8
        0x14
        0x15
        0x8
        0x29
        0x39
        0x4d
        0x4d
        0x4b
        0x4f
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x4a
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x9
        0x19
        0x1b
        0x16
        0x13
        0x14
        0x1d
        0x25
        0x1d
        0x15
        0xc
        0x1f
        0x8
        0x14
        0x15
        0x8
    .end array-data
.end method


# virtual methods
.method public onScreenOff()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->mIsScreenOff:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 56
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->mIsScreenOff:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 62
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->mIsScreenOff:Z

    if-eqz v0, :cond_0

    .line 46
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSC7715;->ID_SCALING_GOVERNOR:I

    const-string v1, "ondemand"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method
