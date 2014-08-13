.class public Lcom/diotek/ime/implement/setting/ResetSettings;
.super Landroid/preference/DialogPreference;
.source "ResetSettings.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsKor:Z

.field private mIsTablet:Z

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 48
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 49
    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    .line 50
    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    .line 54
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 59
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 63
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    .line 65
    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    new-instance v0, Lcom/diotek/ime/implement/setting/ResetSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 549
    .local v0, "resetSettings":Lcom/diotek/ime/implement/setting/ResetSettings;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetAll()V

    .line 552
    :cond_0
    return-void
.end method

.method private resetHwrSettings()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 483
    const-string v3, "SETTINGS_DEFAULT_HWR_ON"

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    .line 484
    .local v1, "pf":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 485
    const-string v3, "hwr_settings"

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    .line 486
    if-nez v1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.inputmethod_preferences"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 492
    .local v2, "sPrefs":Landroid/content/SharedPreferences;
    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v5, "500"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 494
    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    const-string v3, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const-string v4, "5"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    const-string v3, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const-string v4, "2"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private resetSettingsByCSC()V
    .locals 3

    .prologue
    .line 541
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getInstance(Ljava/lang/String;)Lcom/diotek/ime/framework/util/CSCReadAndSet;

    move-result-object v0

    .line 542
    .local v0, "cscInstance":Lcom/diotek/ime/framework/util/CSCReadAndSet;
    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->setCustomerCSC(Landroid/content/Context;Z)V

    .line 545
    :cond_0
    return-void
.end method

.method private resetSettingsByPropertise()V
    .locals 3

    .prologue
    .line 534
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyLoader;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyLoader;-><init>()V

    .line 535
    .local v0, "loader":Lcom/diotek/ime/framework/repository/PropertyLoader;
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/repository/PropertyLoader;->loadAndSetToPreference(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    const-string v1, "SamsungIME"

    const-string v2, "Reset settings from properties.xml was failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    return-void
.end method

.method private resetXT9Settings()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, "pf":Landroid/preference/Preference;
    iget-boolean v4, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    if-eqz v4, :cond_1

    .line 506
    const-string v4, "prediction_setting"

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    .line 510
    :goto_0
    if-eqz v2, :cond_0

    .line 511
    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 512
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 513
    .local v3, "sPrefs":Landroid/content/SharedPreferences;
    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 514
    .local v0, "defaultBoolean":Z
    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 515
    const-string v4, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 516
    const-string v4, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 517
    const-string v4, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 518
    const-string v4, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v4, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 520
    const-string v4, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 521
    const-string v4, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 522
    const-string v4, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 523
    const-string v4, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 524
    const-string v4, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 525
    const-string v4, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 526
    const-string v4, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 527
    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const-string v5, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const-string v6, "2"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    .end local v0    # "defaultBoolean":Z
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sPrefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 508
    :cond_1
    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    goto :goto_0
.end method

.method private setChecked(Landroid/preference/TwoStatePreference;Z)V
    .locals 0
    .param p1, "pf"    # Landroid/preference/TwoStatePreference;
    .param p2, "checked"    # Z

    .prologue
    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p1, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 478
    :cond_0
    return-void
.end method

.method private setResetAutoReplacement()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 555
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 556
    .local v3, "sPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    .line 558
    .local v4, "supported":[Lcom/diotek/ime/framework/common/Language;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 559
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "key":Ljava/lang/String;
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ko"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 558
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_0
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 566
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 567
    return-void
.end method

.method private setResetLanguageListSettings()V
    .locals 15

    .prologue
    .line 570
    const-string v12, "SETTINGS_INPUT_LANGUAGES"

    invoke-virtual {p0, v12}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 571
    .local v8, "languageSettingCategory":Landroid/preference/PreferenceCategory;
    iget-object v12, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v13, "com.sec.android.inputmethod_preferences"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 572
    .local v10, "sPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 573
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v8, :cond_0

    .line 597
    :goto_0
    return-void

    .line 575
    :cond_0
    const-string v12, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    const-string v13, ""

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "defaultInputLanguagePrefKey":Ljava/lang/String;
    const-string v12, "select_swiftkey_language_list"

    invoke-virtual {p0, v12}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v11

    .line 577
    .local v11, "selectInputLanguagePref":Landroid/preference/Preference;
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    .line 578
    .local v2, "defaultInputLanguagePref":Landroid/preference/Preference;
    const/4 v1, 0x0

    .line 579
    .local v1, "defaultInputLanguageListPref":Landroid/preference/ListPreference;
    const/4 v6, 0x0

    .line 581
    .local v6, "isListPref":Z
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    const/4 v6, 0x1

    .line 585
    :goto_1
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    .line 586
    .local v9, "numPref":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_2
    if-ge v5, v9, :cond_3

    .line 587
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 588
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0, v7}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 589
    iget-boolean v12, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/high16 v13, 0x6b6f0000

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 590
    const-string v12, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 586
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 592
    :cond_2
    const-string v12, "0"

    invoke-interface {v4, v7, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 596
    .end local v7    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 583
    .end local v5    # "index":I
    .end local v9    # "numPref":I
    :catch_0
    move-exception v12

    goto :goto_1
.end method


# virtual methods
.method protected resetAll()V
    .locals 44
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetSettingsByPropertise()V

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetSettingsByCSC()V

    .line 72
    const/16 v17, 0x0

    .line 73
    .local v17, "isDaMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    const-string v41, "com.sec.android.inputmethod_preferences"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 74
    .local v35, "sPrefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v19

    .line 75
    .local v19, "isSwiftKeySDK":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v40

    if-nez v40, :cond_2

    const/16 v20, 0x1

    .line 76
    .local v20, "isXt9Version7":Z
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    .line 77
    .local v18, "isPersonalizedDataDefaultOff":Z
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 79
    .local v11, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v40, "first_live_language_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v40, "fist_hwr_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v40, "first_pinch_zoom_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v40, "first_predictive_text_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v40, "first_trace_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v40, "swiftkey_download_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v40, "first_swiftkey_download_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v40, "swiftkey_download_list_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v40, "first_swiftkey_download_list_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v40, "swiftkey_download_list_checkbox"

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v40, "first_one_handed_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v40, "first_pen_detection_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v40, "first_auto_replacement_tap_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v40, "first_mmkey_popup_help_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v40, "first_keyboardchange_popup_help_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v40, "first_languagechange_popup_help_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v40, "first_empty_shortcuts_guide_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v40, "SETTINGS_SHORTCUT_PHRASE"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstLanguageChangeTap(Z)V

    .line 99
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setMMKeyFirstTap(Z)V

    .line 100
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstKeyboardChangeTap(Z)V

    .line 102
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v8

    .line 103
    .local v8, "currentInputMethod":I
    if-eqz v8, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/diotek/ime/framework/common/InputManager;->setQwertyInputMethod()V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/diotek/ime/framework/common/InputManager;->resetMultiwindowArrange()V

    .line 107
    :cond_0
    if-eqz v19, :cond_4

    .line 108
    const-string v40, "first_swiftkey_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v41, "SETTINGS_USE_STANDARD_DATA"

    if-nez v18, :cond_3

    const/16 v40, 0x1

    :goto_1
    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v40, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v40, v0

    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v42, 0x0

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    .line 114
    .local v9, "defaultBoolean":Z
    const-string v40, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v40

    invoke-interface {v11, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    .end local v9    # "defaultBoolean":Z
    :goto_2
    if-nez v20, :cond_6

    .line 120
    const-string v40, "first_xt9_9_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v41, "support_dlm"

    if-nez v18, :cond_5

    const/16 v40, 0x1

    :goto_3
    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v40, v0

    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v42, 0x0

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    .line 125
    .restart local v9    # "defaultBoolean":Z
    const-string v40, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v40

    invoke-interface {v11, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    .end local v9    # "defaultBoolean":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1

    .line 132
    const-string v40, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "checkTraceGuideDialogDefault":Ljava/lang/String;
    const-string v40, "true"

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v40, v0

    const-string v41, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v42, 0x1

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 145
    :goto_5
    const-string v40, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v41, "settings_hold_delay_medium"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    const/16 v40, 0x12c

    invoke-static/range {v40 .. v40}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    .line 148
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_6
    const/16 v40, 0xa

    move/from16 v0, v40

    if-gt v13, v0, :cond_8

    .line 149
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "phrase"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 150
    .local v33, "phraseKey":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 75
    .end local v7    # "checkTraceGuideDialogDefault":Ljava/lang/String;
    .end local v8    # "currentInputMethod":I
    .end local v11    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "i":I
    .end local v18    # "isPersonalizedDataDefaultOff":Z
    .end local v20    # "isXt9Version7":Z
    .end local v33    # "phraseKey":Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 109
    .restart local v8    # "currentInputMethod":I
    .restart local v11    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v18    # "isPersonalizedDataDefaultOff":Z
    .restart local v20    # "isXt9Version7":Z
    :cond_3
    const/16 v40, 0x0

    goto/16 :goto_1

    .line 117
    :cond_4
    const-string v40, "first_swiftkey_execution"

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 121
    :cond_5
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 128
    :cond_6
    const-string v40, "first_xt9_9_execution"

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 142
    .restart local v7    # "checkTraceGuideDialogDefault":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v40, v0

    const-string v41, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v42, 0x0

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_5

    .line 154
    .restart local v13    # "i":I
    :cond_8
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    const-string v40, "da_mode"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-interface/range {v40 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->setCheckDontShowPinchZoomGuide(Z)V

    .line 158
    const/16 v38, 0x0

    .line 159
    .local v38, "switchPreference":Landroid/preference/SwitchPreference;
    const-string v40, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v34

    .line 160
    .local v34, "preference":Landroid/preference/Preference;
    if-eqz v34, :cond_9

    move-object/from16 v0, v34

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v40, v0

    if-eqz v40, :cond_9

    .line 161
    check-cast v34, Landroid/preference/SwitchPreference;

    .end local v34    # "preference":Landroid/preference/Preference;
    const-string v40, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 163
    :cond_9
    const-string v40, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 164
    .local v6, "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_a

    .line 165
    const-string v40, "SETTINGS_DEFAULT_AUTO_CAPS"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 167
    :cond_a
    const-string v40, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 168
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_b

    .line 169
    const-string v40, "SETTINGS_DEFAULT_AUTO_SPACING"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 173
    :cond_b
    const-string v40, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v34

    .line 174
    .restart local v34    # "preference":Landroid/preference/Preference;
    if-eqz v34, :cond_c

    move-object/from16 v0, v34

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v40, v0

    if-eqz v40, :cond_c

    .line 175
    check-cast v34, Landroid/preference/SwitchPreference;

    .end local v34    # "preference":Landroid/preference/Preference;
    const-string v40, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 179
    :cond_c
    const-string v40, "SETTINGS_USE_STANDARD_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 180
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_d

    .line 181
    const-string v41, "SETTINGS_USE_STANDARD_DATA"

    if-nez v18, :cond_25

    const/16 v40, 0x1

    :goto_7
    move-object/from16 v0, v35

    move-object/from16 v1, v41

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 184
    :cond_d
    const-string v40, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 185
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_e

    .line 186
    const-string v40, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 188
    :cond_e
    const-string v40, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 189
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_f

    .line 190
    const-string v40, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 192
    :cond_f
    const-string v40, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 193
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_10

    .line 194
    const-string v40, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 195
    const-string v40, "doing_one_in_power_saving_mode"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_10

    .line 196
    const-string v40, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_26

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "sip_key_feedback_vibration"

    const/16 v42, 0x1

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_10
    :goto_8
    const-string v40, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 204
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_11

    .line 205
    const-string v40, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 207
    const-string v40, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_27

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "sip_key_feedback_sound"

    const/16 v42, 0x1

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    :cond_11
    :goto_9
    const-string v40, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 214
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_12

    .line 215
    const-string v40, "SETTINGS_DEFAULT_USE_PREVIEW"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 217
    :cond_12
    const-string v40, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 218
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_13

    .line 219
    const-string v40, "SETTINGS_DEFAULT_TRACE"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 221
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v40, v0

    if-eqz v40, :cond_14

    .line 222
    const-string v40, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 223
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_14

    .line 224
    const-string v40, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 227
    :cond_14
    const-string v40, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 228
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_15

    .line 229
    const-string v40, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 232
    :cond_15
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 233
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_16

    .line 234
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 237
    :cond_16
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 238
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_17

    .line 239
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 242
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v40, v0

    if-nez v40, :cond_1d

    .line 243
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/ListPreference;

    .line 244
    .local v27, "listPreference":Landroid/preference/ListPreference;
    const/16 v16, 0x0

    .line 245
    .local v16, "inputMethodIndex":I
    if-eqz v27, :cond_18

    .line 246
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 251
    invoke-virtual/range {v27 .. v27}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v40

    aget-object v40, v40, v16

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    :cond_18
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 254
    const-string v40, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/ListPreference;

    .line 256
    .local v31, "numSymlListPreference":Landroid/preference/ListPreference;
    if-eqz v31, :cond_19

    .line 257
    const-string v40, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 262
    :cond_19
    if-eqz v31, :cond_1a

    .line 263
    const-string v40, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 266
    invoke-virtual/range {v31 .. v31}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v40

    aget-object v40, v40, v16

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    .end local v31    # "numSymlListPreference":Landroid/preference/ListPreference;
    :cond_1a
    if-nez v19, :cond_1b

    .line 272
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v32

    .line 273
    .local v32, "pf":Landroid/preference/Preference;
    if-eqz v32, :cond_1b

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v40, v0

    if-eqz v40, :cond_1b

    .line 274
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v38

    .end local v38    # "switchPreference":Landroid/preference/SwitchPreference;
    check-cast v38, Landroid/preference/SwitchPreference;

    .line 275
    .restart local v38    # "switchPreference":Landroid/preference/SwitchPreference;
    if-eqz v38, :cond_1b

    .line 276
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 280
    .end local v32    # "pf":Landroid/preference/Preference;
    :cond_1b
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 281
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_1c

    .line 282
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 285
    :cond_1c
    const-string v40, "SETTINGS_DEFAULT_ONE_HAND"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 286
    .restart local v6    # "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_1d

    .line 287
    const-string v40, "SETTINGS_DEFAULT_ONE_HAND"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 288
    .local v5, "bUseOnehand":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Lcom/diotek/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    .line 293
    .end local v5    # "bUseOnehand":Z
    .end local v16    # "inputMethodIndex":I
    .end local v27    # "listPreference":Landroid/preference/ListPreference;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1e

    .line 294
    if-nez v19, :cond_1e

    .line 295
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v32

    .line 296
    .restart local v32    # "pf":Landroid/preference/Preference;
    if-eqz v32, :cond_1e

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v40, v0

    if-eqz v40, :cond_1e

    .line 297
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v38

    .end local v38    # "switchPreference":Landroid/preference/SwitchPreference;
    check-cast v38, Landroid/preference/SwitchPreference;

    .line 298
    .restart local v38    # "switchPreference":Landroid/preference/SwitchPreference;
    if-eqz v38, :cond_1e

    .line 299
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 305
    .end local v32    # "pf":Landroid/preference/Preference;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v40, v0

    if-eqz v40, :cond_24

    .line 306
    const-string v40, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/ListPreference;

    .line 307
    .local v22, "korListPreference":Landroid/preference/ListPreference;
    if-eqz v22, :cond_1f

    .line 308
    const-string v40, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 312
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v40, v0

    if-eqz v40, :cond_20

    .line 313
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v32

    .line 314
    .restart local v32    # "pf":Landroid/preference/Preference;
    if-eqz v32, :cond_20

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v40, v0

    if-eqz v40, :cond_20

    .line 315
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v38

    .end local v38    # "switchPreference":Landroid/preference/SwitchPreference;
    check-cast v38, Landroid/preference/SwitchPreference;

    .line 316
    .restart local v38    # "switchPreference":Landroid/preference/SwitchPreference;
    if-eqz v38, :cond_20

    .line 317
    const-string v40, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    .line 322
    .end local v32    # "pf":Landroid/preference/Preference;
    :cond_20
    const-string v40, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/ListPreference;

    .line 323
    .local v28, "lp":Landroid/preference/ListPreference;
    const/16 v16, 0x0

    .line 324
    .restart local v16    # "inputMethodIndex":I
    if-eqz v28, :cond_21

    .line 325
    const-string v40, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 327
    invoke-virtual/range {v28 .. v28}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v40

    aget-object v40, v40, v16

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    :cond_21
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v28

    .end local v28    # "lp":Landroid/preference/ListPreference;
    check-cast v28, Landroid/preference/ListPreference;

    .line 330
    .restart local v28    # "lp":Landroid/preference/ListPreference;
    if-eqz v28, :cond_22

    .line 331
    const-string v40, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 333
    invoke-virtual/range {v28 .. v28}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v40

    aget-object v40, v40, v16

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    :cond_22
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v40

    if-eqz v40, :cond_24

    .line 337
    const-string v40, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/ListPreference;

    .line 339
    .restart local v31    # "numSymlListPreference":Landroid/preference/ListPreference;
    if-eqz v31, :cond_23

    .line 340
    const-string v40, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 344
    :cond_23
    const-string v40, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v28

    .end local v28    # "lp":Landroid/preference/ListPreference;
    check-cast v28, Landroid/preference/ListPreference;

    .line 345
    .restart local v28    # "lp":Landroid/preference/ListPreference;
    if-eqz v28, :cond_24

    .line 346
    const-string v40, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 349
    invoke-virtual/range {v28 .. v28}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v40

    aget-object v40, v40, v16

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    .end local v16    # "inputMethodIndex":I
    .end local v22    # "korListPreference":Landroid/preference/ListPreference;
    .end local v28    # "lp":Landroid/preference/ListPreference;
    .end local v31    # "numSymlListPreference":Landroid/preference/ListPreference;
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetHwrSettings()V

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetXT9Settings()V

    .line 356
    if-nez v17, :cond_33

    if-nez v19, :cond_33

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/diotek/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v39

    .line 359
    .local v39, "xt9DownloadableLanguageList":[Lcom/diotek/ime/framework/common/Language;
    move-object/from16 v3, v39

    .local v3, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v0, v3

    move/from16 v26, v0

    .local v26, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_a
    move/from16 v0, v26

    if-ge v14, v0, :cond_28

    aget-object v23, v3, v14

    .line 360
    .local v23, "lang":Lcom/diotek/ime/framework/common/Language;
    const-string v40, "0x%08x"

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 359
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 181
    .end local v3    # "arr$":[Lcom/diotek/ime/framework/common/Language;
    .end local v14    # "i$":I
    .end local v23    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v26    # "len$":I
    .end local v39    # "xt9DownloadableLanguageList":[Lcom/diotek/ime/framework/common/Language;
    :cond_25
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 199
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "sip_key_feedback_vibration"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 210
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "sip_key_feedback_sound"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 362
    .restart local v3    # "arr$":[Lcom/diotek/ime/framework/common/Language;
    .restart local v14    # "i$":I
    .restart local v26    # "len$":I
    .restart local v39    # "xt9DownloadableLanguageList":[Lcom/diotek/ime/framework/common/Language;
    :cond_28
    const-string v40, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v25

    .line 363
    .local v25, "languageSettings":Landroid/preference/Preference;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v36, "summary":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v37

    .line 365
    .local v37, "supported":[Lcom/diotek/ime/framework/common/Language;
    const/16 v30, 0x0

    .line 366
    .local v30, "mlanguageID":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v24, "languageListKey":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_b
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v15, v0, :cond_2f

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    aget-object v41, v37, v15

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v41

    aget-object v42, v37, v15

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 369
    const-string v40, "0x%08x"

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget-object v43, v37, v15

    invoke-virtual/range {v43 .. v43}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_2a

    .line 370
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v40

    if-lez v40, :cond_29

    .line 371
    const-string v40, ", "

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_29
    aget-object v40, v37, v15

    invoke-virtual/range {v40 .. v40}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_2a
    const/16 v40, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 376
    const-string v40, "select_language_list_"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 378
    .local v10, "defaultValue":Ljava/lang/String;
    const-string v40, "ja"

    aget-object v41, v37, v15

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_2b

    const-string v40, "zh"

    aget-object v41, v37, v15

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2d

    .line 379
    :cond_2b
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 387
    :cond_2c
    :goto_c
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v11, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 380
    :cond_2d
    const-string v40, "ko"

    aget-object v41, v37, v15

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2c

    .line 381
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2e

    .line 382
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    .line 384
    :cond_2e
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    .line 390
    .end local v10    # "defaultValue":Ljava/lang/String;
    :cond_2f
    if-eqz v25, :cond_30

    .line 391
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->setResetAutoReplacement()V

    .line 394
    const-string v40, "SETTINGS_DEFAULT_TRACE"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-nez v40, :cond_32

    .line 395
    const-string v40, "settings_keyboard_swipe"

    const-string v41, "settings_keyboard_swipe_none"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    .end local v3    # "arr$":[Lcom/diotek/ime/framework/common/Language;
    .end local v14    # "i$":I
    .end local v15    # "index":I
    .end local v24    # "languageListKey":Ljava/lang/StringBuilder;
    .end local v25    # "languageSettings":Landroid/preference/Preference;
    .end local v26    # "len$":I
    .end local v30    # "mlanguageID":Ljava/lang/String;
    .end local v36    # "summary":Ljava/lang/StringBuilder;
    .end local v37    # "supported":[Lcom/diotek/ime/framework/common/Language;
    .end local v39    # "xt9DownloadableLanguageList":[Lcom/diotek/ime/framework/common/Language;
    :cond_31
    :goto_d
    const-string v40, "first_tips_all_execution"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 472
    return-void

    .line 397
    .restart local v3    # "arr$":[Lcom/diotek/ime/framework/common/Language;
    .restart local v14    # "i$":I
    .restart local v15    # "index":I
    .restart local v24    # "languageListKey":Ljava/lang/StringBuilder;
    .restart local v25    # "languageSettings":Landroid/preference/Preference;
    .restart local v26    # "len$":I
    .restart local v30    # "mlanguageID":Ljava/lang/String;
    .restart local v36    # "summary":Ljava/lang/StringBuilder;
    .restart local v37    # "supported":[Lcom/diotek/ime/framework/common/Language;
    .restart local v39    # "xt9DownloadableLanguageList":[Lcom/diotek/ime/framework/common/Language;
    :cond_32
    const-string v40, "settings_keyboard_swipe"

    const-string v41, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v40, v0

    const-string v41, "SETTINGS_DEFAULT_TRACE"

    const/16 v42, 0x1

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_d

    .line 400
    .end local v3    # "arr$":[Lcom/diotek/ime/framework/common/Language;
    .end local v14    # "i$":I
    .end local v15    # "index":I
    .end local v24    # "languageListKey":Ljava/lang/StringBuilder;
    .end local v25    # "languageSettings":Landroid/preference/Preference;
    .end local v26    # "len$":I
    .end local v30    # "mlanguageID":Ljava/lang/String;
    .end local v36    # "summary":Ljava/lang/StringBuilder;
    .end local v37    # "supported":[Lcom/diotek/ime/framework/common/Language;
    .end local v39    # "xt9DownloadableLanguageList":[Lcom/diotek/ime/framework/common/Language;
    :cond_33
    if-eqz v19, :cond_31

    .line 401
    const/16 v30, 0x0

    .line 402
    .restart local v30    # "mlanguageID":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v29

    .line 403
    .local v29, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v4

    .line 405
    .local v4, "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/16 v21, 0x0

    .line 406
    .local v21, "ko_KR_LP":Lcom/touchtype_fluency/util/LanguagePack;
    const/4 v12, 0x0

    .line 407
    .local v12, "en_US_LP":Lcom/touchtype_fluency/util/LanguagePack;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .restart local v24    # "languageListKey":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_3b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/touchtype_fluency/util/LanguagePack;

    .line 410
    .local v28, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 411
    if-eqz v30, :cond_34

    .line 414
    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v40

    if-eqz v40, :cond_37

    .line 416
    const/16 v40, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 417
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v40, v0

    if-nez v40, :cond_37

    .line 418
    const/16 v40, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 419
    const-string v40, "select_language_list_"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 421
    .restart local v10    # "defaultValue":Ljava/lang/String;
    const-string v40, "ja"

    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_35

    const-string v40, "zh"

    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_38

    .line 422
    :cond_35
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 430
    :cond_36
    :goto_f
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v11, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    .end local v10    # "defaultValue":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v40, v0

    if-eqz v40, :cond_34

    .line 436
    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v40

    const-string v41, "KR"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3a

    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v40

    const-string v41, "ko"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3a

    .line 437
    move-object/from16 v21, v28

    goto/16 :goto_e

    .line 423
    .restart local v10    # "defaultValue":Ljava/lang/String;
    :cond_38
    const-string v40, "ko"

    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_36

    .line 424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v40, v0

    if-eqz v40, :cond_39

    .line 425
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 427
    :cond_39
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 438
    .end local v10    # "defaultValue":Ljava/lang/String;
    :cond_3a
    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v40

    const-string v41, "US"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_34

    invoke-interface/range {v28 .. v28}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v40

    const-string v41, "en"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_34

    .line 439
    move-object/from16 v12, v28

    goto/16 :goto_e

    .line 444
    .end local v28    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v40, v0

    if-eqz v40, :cond_3d

    .line 445
    if-eqz v21, :cond_3c

    invoke-interface/range {v21 .. v21}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v40

    if-nez v40, :cond_3c

    .line 446
    const/16 v40, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface/range {v21 .. v21}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    invoke-interface/range {v21 .. v21}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 448
    const/16 v40, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 451
    :cond_3c
    if-eqz v12, :cond_3d

    invoke-interface {v12}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v40

    if-nez v40, :cond_3d

    .line 452
    const/16 v40, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v12, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v40, v0

    invoke-interface {v12}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    invoke-interface {v12}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 454
    const/16 v40, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 458
    :cond_3d
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->setResetLanguageListSettings()V

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->setResetAutoReplacement()V

    .line 461
    const-string v40, "SETTINGS_DEFAULT_TRACE"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-nez v40, :cond_3e

    .line 462
    const-string v40, "settings_keyboard_swipe"

    const-string v41, "settings_keyboard_swipe_none"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_d

    .line 464
    :cond_3e
    const-string v40, "settings_keyboard_swipe"

    const-string v41, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v40, v0

    const-string v41, "SETTINGS_DEFAULT_TRACE"

    const/16 v42, 0x1

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v40, v0

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    const/16 v42, 0x0

    invoke-interface/range {v40 .. v42}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_d
.end method
