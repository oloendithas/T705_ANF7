.class public final Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;
.super Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.source "AirViewOnOffForDual.java"


# instance fields
.field mSetupWizardFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;->checkSetupWizardFinished()V

    .line 29
    return-void
.end method


# virtual methods
.method protected calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;)I
    .locals 8
    .param p1, "deviceInfo"    # Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;
    .param p2, "settingInfo"    # Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "AIRVIEW_MODE_PEN_ONLY":I
    const/4 v1, 0x1

    .line 44
    .local v1, "AIRVIEW_MODE_FINGER_ONLY":I
    const/4 v0, 0x2

    .line 46
    .local v0, "AIRVIEW_MODE_AUTO":I
    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;->mSetupWizardFinished:Z

    if-nez v6, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;->checkSetupWizardFinished()V

    .line 48
    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;->mSetupWizardFinished:Z

    if-nez v6, :cond_1

    .line 49
    const-string v4, "SSRMv2:TSP:AirViewOnOff"

    const-string v5, "Setup wizard is foreground yet."

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return v3

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isGripVolumeDown()Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isClearCoverOn()Z

    move-result v6

    if-nez v6, :cond_0

    .line 60
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandSamsungKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isSIPVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandDialer()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isContactDialerVisible()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isPhoneContactDialerVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 65
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isAirViewMasterOn()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->getAirViewMode()I

    move-result v3

    if-eqz v3, :cond_5

    .line 67
    const/4 v3, 0x3

    goto :goto_0

    :cond_5
    move v3, v5

    .line 69
    goto :goto_0

    .line 71
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandPattern()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isPatternLockVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v5

    .line 72
    goto :goto_0

    .line 74
    :cond_7
    iget-object v6, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    const-string v7, "com.sec.android.app.popupcalculator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandCalculator()Z

    move-result v6

    if-eqz v6, :cond_8

    move v3, v5

    .line 77
    goto :goto_0

    .line 79
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isLockScreenVisible()Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v4

    .line 80
    goto :goto_0

    .line 82
    :cond_9
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isAirViewMasterOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->getAirViewMode()I

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isMultiWindow()Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isStatusBarVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isBrowserMainPageVisible()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isMagnifierOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    :cond_a
    iget-boolean v5, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isSIPVisible()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 103
    goto/16 :goto_0
.end method

.method public checkSetupWizardFinished()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    const-string v2, "FINISH"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;->mSetupWizardFinished:Z

    .line 34
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;->mSetupWizardFinished:Z

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    .line 37
    :cond_0
    return-void
.end method
