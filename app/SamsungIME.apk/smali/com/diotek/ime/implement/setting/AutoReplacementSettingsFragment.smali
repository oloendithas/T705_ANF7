.class public Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AutoReplacementSettingsFragment.java"


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private misTablet:Z

.field onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 51
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    .line 52
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    .line 53
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    .line 54
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    .line 218
    new-instance v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;-><init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 228
    new-instance v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$2;-><init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->createLanguageList(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private areAllLanguagesDisable()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v6, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 267
    .local v2, "pfScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 268
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v5, v5, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    .line 269
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 270
    .local v1, "languagePref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    .end local v1    # "languagePref":Landroid/preference/CheckBoxPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 275
    goto :goto_0
.end method

.method private createLanguageList(Z)V
    .locals 18
    .param p1, "enabled"    # Z

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 110
    .local v11, "pfScreen":Landroid/preference/PreferenceScreen;
    const/4 v9, 0x0

    .line 111
    .local v9, "languageListPref":Landroid/preference/CheckBoxPreference;
    new-instance v1, Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v1, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, "SummaryPref":Landroid/preference/Preference;
    const/4 v13, 0x0

    .line 113
    .local v13, "supported":[Lcom/diotek/ime/framework/common/Language;
    const/4 v12, 0x0

    .line 114
    .local v12, "selected":[Lcom/diotek/ime/framework/common/Language;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    .line 115
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    .line 116
    const/4 v5, 0x1

    .line 117
    .local v5, "isNoSelected":Z
    const/4 v8, 0x0

    .line 118
    .local v8, "languageListKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 121
    .local v2, "defaultValue":Z
    const/4 v7, 0x0

    .line 128
    .local v7, "languageID":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 130
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Sip_ApplyAutoCorrectionPatent"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 131
    const v14, 0x7f0d0209

    invoke-virtual {v1, v14}, Landroid/preference/Preference;->setSummary(I)V

    .line 135
    :goto_1
    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v14, v13

    if-ge v4, v14, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-nez v14, :cond_3

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 137
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 114
    .end local v2    # "defaultValue":Z
    .end local v4    # "i":I
    .end local v5    # "isNoSelected":Z
    .end local v7    # "languageID":Ljava/lang/String;
    .end local v8    # "languageListKey":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    goto :goto_0

    .line 133
    .restart local v2    # "defaultValue":Z
    .restart local v5    # "isNoSelected":Z
    .restart local v7    # "languageID":Ljava/lang/String;
    .restart local v8    # "languageListKey":Ljava/lang/String;
    :cond_2
    const v14, 0x7f0d0208

    invoke-virtual {v1, v14}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 143
    .restart local v4    # "i":I
    :cond_3
    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ja"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "zh"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 147
    const-string v14, "0x%08x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v13, v4

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v7, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 149
    .local v6, "isSelected":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v15, v13, v4

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 151
    .restart local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_6

    .line 152
    const/4 v5, 0x0

    .line 153
    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 158
    :goto_4
    if-eqz v9, :cond_4

    .line 159
    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    :cond_4
    new-instance v9, Landroid/preference/CheckBoxPreference;

    .end local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 162
    .restart local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 163
    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 165
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 168
    if-eqz v9, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 156
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x1

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4

    .line 173
    :cond_6
    if-eqz v9, :cond_0

    .line 174
    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 179
    .end local v6    # "isSelected":Z
    :cond_7
    if-eqz v5, :cond_9

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    .line 181
    .local v10, "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14, v10}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 183
    .restart local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    if-nez v9, :cond_8

    .line 184
    new-instance v9, Landroid/preference/CheckBoxPreference;

    .end local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 185
    .restart local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 190
    :goto_5
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 193
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 194
    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 196
    if-eqz v9, :cond_8

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-nez v14, :cond_9

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    .line 203
    .local v3, "englishLanguage":Lcom/diotek/ime/framework/common/Language;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14, v3}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 205
    .restart local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    if-nez v9, :cond_9

    .line 206
    new-instance v9, Landroid/preference/CheckBoxPreference;

    .end local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 207
    .restart local v9    # "languageListPref":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x1

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 208
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 211
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    .end local v3    # "englishLanguage":Lcom/diotek/ime/framework/common/Language;
    .end local v10    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_9
    return-void

    .line 188
    .restart local v10    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/4 v15, 0x1

    invoke-interface {v14, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 62
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    .line 64
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v3, :cond_1

    .line 65
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "SamsungIME"

    const-string v4, "[ARS] onCreate() - mInputManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 102
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 72
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "TABLET_MODE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    .line 75
    :cond_2
    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    if-eqz v3, :cond_3

    .line 76
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v4, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 81
    .local v1, "isChecked":Z
    const v3, 0x7f03004c

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 82
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    const v3, 0x7f0d0207

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 87
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 88
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090655

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 90
    .local v2, "rightPadding":I
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 91
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 92
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 94
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 98
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    .end local v2    # "rightPadding":I
    :cond_4
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->createLanguageList(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 246
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->areAllLanguagesDisable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v2, 0x7f0d020a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 260
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 261
    return-void
.end method
