.class public Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "LanguageItemSettingFragment.java"


# instance fields
.field private mCategory:Landroid/preference/PreferenceCategory;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputMethodTypeValues:[Ljava/lang/String;

.field private mInputMethodTypes:[Ljava/lang/String;

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;

.field private mLanguageCode:Ljava/lang/String;

.field private mLanguageName:Ljava/lang/String;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private misTablet:Z

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    .line 34
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 35
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 36
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->misTablet:Z

    return-void
.end method

.method private initInputMethodTypes(Landroid/content/res/Resources;)Z
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 125
    const-string v0, "ko"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 128
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_9

    .line 157
    :cond_1
    const-string v0, "SamsungIME"

    const-string v1, "LanguageItemSettingActivity - initInputMethodTypes : LanguageItemSetting list create failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    .line 161
    :goto_1
    return v0

    .line 130
    :cond_2
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 131
    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "tr"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    const v0, 0x7f070016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 135
    const v0, 0x7f070015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_4
    const-string v0, "vi"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    const v0, 0x7f070014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 138
    const v0, 0x7f070012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_5
    const-string v0, "ja"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    const v0, 0x7f070018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 141
    const v0, 0x7f070017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v0, "zh"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    const v0, 0x7f07001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 144
    const v0, 0x7f070019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :cond_7
    const-string v0, "de"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    const v0, 0x7f07001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 147
    const v0, 0x7f07001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    .line 148
    :cond_8
    const-string v0, "bg"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const v0, 0x7f07001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    .line 150
    const v0, 0x7f07001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    .line 161
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method protected changeInputMethodType(Landroid/preference/Preference;)V
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x0

    .line 165
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 166
    .local v5, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "keyValueString":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v3, v7, -0x30

    .line 170
    .local v3, "keyValue":I
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_0

    .line 171
    const-string v7, "SamsungIME"

    const-string v8, "LanguageItemSettingActivity - changeInputMethodType : Wrong InputMethodType set!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 176
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/LanguageItemPreference;

    .line 177
    .local v2, "inputMethodType":Lcom/diotek/ime/implement/setting/LanguageItemPreference;
    if-ne v3, v1, :cond_1

    .line 178
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->setChecked(Z)V

    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v2, v9}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->setChecked(Z)V

    goto :goto_1

    .line 184
    .end local v2    # "inputMethodType":Lcom/diotek/ime/implement/setting/LanguageItemPreference;
    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "subTypeKey":Ljava/lang/String;
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v7, v3}, Lcom/diotek/ime/framework/common/Language;->setInputMethodSubType(I)V

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x400

    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    .line 48
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 49
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 51
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v8, :cond_0

    .line 52
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "TABLET_MODE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->misTablet:Z

    .line 54
    :cond_0
    iget-boolean v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->misTablet:Z

    if-eqz v8, :cond_1

    .line 55
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 59
    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "AxT9IME.inputLanguage"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    .line 61
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    .line 62
    .local v7, "supported":[Lcom/diotek/ime/framework/common/Language;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_4

    .line 63
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    aget-object v9, v7, v2

    invoke-virtual {v9}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 64
    aget-object v8, v7, v2

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 65
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v2    # "i":I
    .end local v7    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    goto :goto_0

    .line 69
    .restart local v2    # "i":I
    .restart local v7    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_4
    const v8, 0x7f03005c

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 70
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 73
    .local v5, "pfScreen":Landroid/preference/PreferenceScreen;
    const-string v8, "ko"

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "ja"

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "zh"

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 76
    :cond_5
    const-string v8, "keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 77
    .local v4, "keyboardType":Landroid/preference/PreferenceCategory;
    if-eqz v4, :cond_6

    .line 78
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_6
    const-string v8, "floating_keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    .line 89
    .end local v4    # "keyboardType":Landroid/preference/PreferenceCategory;
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 90
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_7

    .line 91
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    :cond_7
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 95
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    .line 97
    invoke-direct {p0, v6}, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->initInputMethodTypes(Landroid/content/res/Resources;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 98
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 101
    :cond_8
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v8, v8

    new-array v3, v8, [Lcom/diotek/ime/implement/setting/LanguageItemPreference;

    .line 103
    .local v3, "itemPreperenceArray":[Lcom/diotek/ime/implement/setting/LanguageItemPreference;
    const/4 v2, 0x0

    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_b

    .line 104
    new-instance v8, Lcom/diotek/ime/implement/setting/LanguageItemPreference;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-direct {v8, v9, v10}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;-><init>(Landroid/content/Context;Lcom/diotek/ime/framework/common/Language;)V

    aput-object v8, v3, v2

    .line 105
    aget-object v8, v3, v2

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 106
    aget-object v8, v3, v2

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    aget-object v8, v3, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    aget-object v8, v3, v2

    new-instance v9, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment$1;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment$1;-><init>(Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;)V

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v3    # "itemPreperenceArray":[Lcom/diotek/ime/implement/setting/LanguageItemPreference;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_9
    const-string v8, "floating_keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 83
    .local v1, "floatingKeyboardType":Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_a

    .line 84
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_a
    const-string v8, "keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    goto :goto_2

    .line 117
    .end local v1    # "floatingKeyboardType":Landroid/preference/PreferenceCategory;
    .restart local v0    # "bar":Landroid/app/ActionBar;
    .restart local v3    # "itemPreperenceArray":[Lcom/diotek/ime/implement/setting/LanguageItemPreference;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method
