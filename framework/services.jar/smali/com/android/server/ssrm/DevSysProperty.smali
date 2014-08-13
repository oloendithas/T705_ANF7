.class public Lcom/android/server/ssrm/DevSysProperty;
.super Ljava/lang/Object;
.source "DevSysProperty.java"


# static fields
.field static final DEBUG:Z

.field static final SYS_PROPERTY_AP_TEMP:Ljava/lang/String; = "dev.ssrm.ap_temp"

.field static final SYS_PROPERTY_AP_TEMP_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_BAT_LEVEL:Ljava/lang/String; = "dev.ssrm.bat_level"

.field static final SYS_PROPERTY_BAT_LEVEL_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_BAT_TEMP:Ljava/lang/String; = "dev.ssrm.bat_temp"

.field static final SYS_PROPERTY_BAT_TEMP_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_PST:Ljava/lang/String; = "dev.ssrm.pst"

.field static final SYS_PROPERTY_SSRM_FGAPP:Ljava/lang/String; = "dev.ssrm.fgapp"

.field static final SYS_PROPERTY_SSRM_INIT_FAILURE:Ljava/lang/String; = "0"

.field static final SYS_PROPERTY_SSRM_INIT_RESULT:Ljava/lang/String; = "dev.ssrm.init"

.field static final SYS_PROPERTY_SSRM_INIT_SUCCESS:Ljava/lang/String; = "1"

.field static final SYS_PROPERTY_SSRM_MODE:Ljava/lang/String; = "dev.ssrm.mode"

.field static final SYS_PROPERTY_SSRM_WLUC_TEST:Ljava/lang/String; = "dev.ssrm.wluc.test"

.field static final TAG:Ljava/lang/String; = "SSRMv2:DevSysProperty"

.field static sSsrmFgAppListeners:Ljava/lang/String;

.field static sSsrmModeList:Ljava/lang/String;


# instance fields
.field mShipBuild:Z

.field mTtsFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_tts_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mTtsFeature:Z

    .line 131
    const-string/jumbo v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mShipBuild:Z

    return-void
.end method

.method public static addFgAppListeners(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static addMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method getApTemperature()I
    .locals 3

    .prologue
    .line 61
    const-string v1, "dev.ssrm.ap_temp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 63
    :cond_0
    const/16 v1, -0x3e7

    .line 65
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method getBatteryLevel()I
    .locals 3

    .prologue
    .line 87
    const-string v1, "dev.ssrm.bat_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 89
    :cond_0
    const/16 v1, -0x3e7

    .line 91
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method getBatteryTemperature()I
    .locals 3

    .prologue
    .line 70
    const-string v1, "dev.ssrm.bat_temp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 72
    :cond_0
    const/16 v1, -0x3e7

    .line 74
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getWlucTestMode()I
    .locals 3

    .prologue
    .line 79
    const-string v1, "dev.ssrm.wluc.test"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 83
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public isTtsFeatureEnabled()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mShipBuild:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mTtsFeature:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setPredictedSurfaceTemperatue(I)V
    .locals 3
    .param p1, "pst"    # I

    .prologue
    .line 96
    const-string v0, "dev.ssrm.pst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method setSsrmInitResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 100
    const-string v1, "dev.ssrm.init"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 100
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method writeFgAppListenersToSystemProperty()V
    .locals 5

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/ssrm_fgapps"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 123
    const-string v2, "SSRMv2:DevSysProperty"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method writeModeToSystemProperty()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "dev.ssrm.mode"

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
