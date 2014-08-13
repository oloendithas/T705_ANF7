.class public Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SurfaceFlingerScenario.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsBrowserForeground:Z

.field mMultiWindowOn:Z

.field mSurfaceFlingerParameterChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 27
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mIsBrowserForeground:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mMultiWindowOn:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    .line 34
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 38
    return-void

    .line 27
    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x29
        0xf
        0x8
        0x1c
        0x1b
        0x19
        0x1f
        0x3c
        0x16
        0x13
        0x14
        0x1d
        0x1f
        0x8
        0x29
        0x19
        0x1f
        0x14
        0x1b
        0x8
        0x13
        0x15
    .end array-data

    .line 34
    :array_1
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
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data
.end method


# virtual methods
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
    .line 46
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mIsBrowserForeground:Z

    .line 47
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->updateParameters()V

    .line 48
    return-void
.end method

.method public onMultiWindowStatusChanged(Z)V
    .locals 0
    .param p1, "isMultiWindowOn"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mMultiWindowOn:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->updateParameters()V

    .line 71
    return-void
.end method

.method protected updateParameters()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mIsBrowserForeground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mMultiWindowOn:Z

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service call SurfaceFlinger 1051 i32 1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->executeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service call SurfaceFlinger 1051 i32 0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->executeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    goto :goto_0
.end method
