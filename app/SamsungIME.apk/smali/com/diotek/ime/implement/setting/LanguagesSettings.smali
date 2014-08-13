.class public Lcom/diotek/ime/implement/setting/LanguagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "LanguagesSettings.java"


# instance fields
.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsDaMode:Z

.field private mIsKorMode:Z

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 33
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 35
    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsDaMode:Z

    .line 36
    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsKorMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/LanguagesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/LanguagesSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->initLanguageSettingsWithSystemLocale()V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/LanguagesSettings;)Lcom/diotek/ime/framework/repository/Repository;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/LanguagesSettings;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    return-object v0
.end method

.method private checkDefaultEnglishPreference([Lcom/diotek/ime/framework/common/Language;)V
    .locals 7
    .param p1, "languages"    # [Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 211
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SIP_EnablePreferredEnglishTypeAsUS"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 212
    .local v0, "isDefaultUS":Z
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsKorMode:Z

    if-eqz v2, :cond_3

    .line 213
    :cond_0
    const-string v2, "0x%08x"

    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x656e5553

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 214
    .local v1, "languageCheck":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    const-string v2, "0x%08x"

    new-array v3, v5, [Ljava/lang/Object;

    aget-object v4, p1, v6

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "languageCheck":Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 218
    .restart local v1    # "languageCheck":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 221
    .end local v1    # "languageCheck":Landroid/preference/CheckBoxPreference;
    :cond_3
    const-string v2, "0x%08x"

    new-array v3, v5, [Ljava/lang/Object;

    aget-object v4, p1, v6

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 222
    .restart local v1    # "languageCheck":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/diotek/ime/implement/setting/LanguagesSettings$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/LanguagesSettings$1;-><init>(Lcom/diotek/ime/implement/setting/LanguagesSettings;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private initLanguageSettingsWithSystemLocale()V
    .locals 15

    .prologue
    .line 149
    const/4 v7, 0x0

    .line 150
    .local v7, "languages":[Lcom/diotek/ime/framework/common/Language;
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    .line 151
    move-object v0, v7

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v8, :cond_1

    aget-object v4, v0, v3

    .line 152
    .local v4, "lang":Lcom/diotek/ime/framework/common/Language;
    const-string v11, "0x%08x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 153
    .local v5, "languageCheck":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_0

    .line 154
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 151
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v5    # "languageCheck":Landroid/preference/CheckBoxPreference;
    :cond_1
    const/4 v10, -0x1

    .line 158
    .local v10, "localeIndex":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "country":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "locale":Ljava/lang/String;
    const-string v11, "in"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 162
    const-string v9, "id"

    .line 165
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v11, v7

    if-ge v2, v11, :cond_3

    .line 166
    aget-object v4, v7, v2

    .line 167
    .restart local v4    # "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "en"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 169
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 170
    const-string v11, "US"

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 171
    move v10, v2

    .line 189
    .end local v4    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_3
    :goto_2
    const/4 v11, -0x1

    if-ne v10, v11, :cond_9

    .line 190
    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->checkDefaultEnglishPreference([Lcom/diotek/ime/framework/common/Language;)V

    .line 208
    :goto_3
    return-void

    .line 174
    .restart local v4    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_4
    const/4 v10, 0x0

    .line 165
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 178
    move v10, v2

    .line 179
    goto :goto_2

    .line 181
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 184
    :cond_8
    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 185
    move v10, v2

    .line 186
    goto :goto_2

    .line 192
    .end local v4    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_9
    aget-object v11, v7, v10

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v6

    .line 193
    .local v6, "languageId":I
    aget-object v11, v7, v10

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->isLatinLanguage(Lcom/diotek/ime/framework/common/Language;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 194
    const-string v11, "0x%08x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 195
    .restart local v5    # "languageCheck":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_a

    .line 196
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 198
    :cond_a
    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->checkDefaultEnglishPreference([Lcom/diotek/ime/framework/common/Language;)V

    goto :goto_3

    .line 201
    .end local v5    # "languageCheck":Landroid/preference/CheckBoxPreference;
    :cond_b
    const-string v11, "0x%08x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 202
    .restart local v5    # "languageCheck":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_c

    .line 203
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 205
    :cond_c
    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->checkDefaultEnglishPreference([Lcom/diotek/ime/framework/common/Language;)V

    goto :goto_3
.end method

.method private isLatinLanguage(Lcom/diotek/ime/framework/common/Language;)Z
    .locals 3
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getScriptType()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getScriptType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v10, "com.sec.android.inputmethod_preferences"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 43
    .local v7, "sPrefs":Landroid/content/SharedPreferences;
    if-eqz v7, :cond_0

    .line 44
    const-string v10, "da_mode"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsDaMode:Z

    .line 46
    :cond_0
    iget-boolean v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsDaMode:Z

    if-eqz v10, :cond_5

    .line 47
    const v10, 0x7f03005e

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 48
    const v10, 0x7f0d002f

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setTitle(I)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 54
    .local v1, "bar":Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 55
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v10

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 59
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v10

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 60
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v10

    iput-boolean v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsKorMode:Z

    .line 62
    const/4 v5, 0x0

    .line 63
    .local v5, "languages":[Lcom/diotek/ime/framework/common/Language;
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v5

    .line 65
    array-length v10, v5

    new-array v4, v10, [Landroid/preference/CheckBoxPreference;

    .line 66
    .local v4, "langPreferenceArray":[Landroid/preference/CheckBoxPreference;
    const-string v10, "languages_settings"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 67
    .local v6, "mainScreen":Landroid/preference/PreferenceScreen;
    iget-boolean v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsDaMode:Z

    if-nez v10, :cond_2

    .line 68
    const-string v10, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 69
    .local v9, "useSystemLanguage":Landroid/preference/CheckBoxPreference;
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    .end local v9    # "useSystemLanguage":Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 73
    .local v8, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v5

    if-ge v3, v10, :cond_6

    .line 74
    const-string v10, "0x%08x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "Key":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 76
    .local v2, "enabled":Z
    sget-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 77
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "langPreferenceArray[i] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v4, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "languages[i] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "languages[i].getName() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v3

    invoke-virtual {v12}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_3
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-direct {v10, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    aput-object v10, v4, v3

    .line 84
    aget-object v10, v4, v3

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 85
    aget-object v10, v4, v3

    aget-object v11, v5, v3

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    aget-object v10, v4, v3

    invoke-virtual {v10, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 87
    aget-object v10, v4, v3

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    aget-object v10, v4, v3

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    iget-boolean v10, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsDaMode:Z

    if-nez v10, :cond_4

    .line 90
    aget-object v10, v4, v3

    const-string v11, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 73
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 50
    .end local v0    # "Key":Ljava/lang/String;
    .end local v1    # "bar":Landroid/app/ActionBar;
    .end local v2    # "enabled":Z
    .end local v3    # "i":I
    .end local v4    # "langPreferenceArray":[Landroid/preference/CheckBoxPreference;
    .end local v5    # "languages":[Lcom/diotek/ime/framework/common/Language;
    .end local v6    # "mainScreen":Landroid/preference/PreferenceScreen;
    .end local v8    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_5
    const v10, 0x7f03005d

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 94
    .restart local v1    # "bar":Landroid/app/ActionBar;
    .restart local v3    # "i":I
    .restart local v4    # "langPreferenceArray":[Landroid/preference/CheckBoxPreference;
    .restart local v5    # "languages":[Lcom/diotek/ime/framework/common/Language;
    .restart local v6    # "mainScreen":Landroid/preference/PreferenceScreen;
    .restart local v8    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_6
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 141
    const-string v1, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 142
    .local v0, "useSystemLanguage":Landroid/preference/CheckBoxPreference;
    iget-boolean v1, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings;->mIsDaMode:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->initLanguageSettingsWithSystemLocale()V

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    return-void
.end method
