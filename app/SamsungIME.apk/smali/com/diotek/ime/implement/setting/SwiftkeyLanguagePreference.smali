.class public Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
.super Landroid/preference/Preference;
.source "SwiftkeyLanguagePreference.java"


# static fields
.field private static mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private static mlanguageID:Ljava/lang/String;


# instance fields
.field private final DOWNLOAD_CANCELLED:I

.field private final DOWNLOAD_FAILED:I

.field private final DOWNLOAD_SUCCESS:I

.field IS_FHD:Z

.field IS_WQHD:Z

.field VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

.field private cancelButton:Landroid/widget/Button;

.field private final downloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private enableCheckBox:Landroid/widget/CheckBox;

.field private languageItemView:Landroid/view/View;

.field private languageNameTitle:Ljava/lang/String;

.field listener:Lcom/touchtype_fluency/util/ProgressListener;

.field private mIsCheckboxDontShowDownloadForRoam:Z

.field private mIsCheckboxDontShowDownloadForWifi:Z

.field private mIsDownloaded:Z

.field private mIsVOHWRenable:Z

.field private final mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

.field private mLanguagePackHashCode:I

.field private final mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private mNetworkConnect:Landroid/content/BroadcastReceiver;

.field private final mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

.field private final mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private statusTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    .line 74
    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V
    .locals 7
    .param p1, "SwiftkeyLanguagesSettings"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .param p2, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p3, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p4, "isUseSystemLanguageChecked"    # Z
    .param p5, "isDownloaded"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    .line 87
    const/4 v3, 0x0

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    .line 88
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    .line 89
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    .line 91
    const/4 v3, -0x1

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DOWNLOAD_CANCELLED:I

    .line 92
    const/4 v3, 0x0

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DOWNLOAD_FAILED:I

    .line 93
    const/4 v3, 0x1

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DOWNLOAD_SUCCESS:I

    .line 95
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v3

    const/16 v4, 0x780

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v3

    const/16 v4, 0x438

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_FHD:Z

    .line 96
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v3

    const/16 v4, 0xa00

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v3

    const/16 v4, 0x5a0

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_WQHD:Z

    .line 447
    new-instance v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mNetworkConnect:Landroid/content/BroadcastReceiver;

    .line 465
    new-instance v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 573
    new-instance v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 102
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    .line 103
    iput-object p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    .line 104
    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    .line 105
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 107
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 108
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    .line 109
    iput-boolean p5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    .line 111
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mNetworkConnect:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 115
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "VOlanguageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v3, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    .line 121
    .end local v0    # "VOlanguageName":Ljava/lang/String;
    :goto_2
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    .line 122
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    .line 124
    iput-object p3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 125
    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_FHD:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_WQHD:Z

    if-eqz v3, :cond_5

    .line 126
    :cond_0
    const v3, 0x7f030094

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 131
    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    .line 133
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "configLangugaeListValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 139
    if-nez p4, :cond_1

    .line 140
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    .end local v1    # "configLangugaeListValue":Ljava/lang/String;
    :cond_1
    :goto_4
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_9

    .line 162
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    .line 166
    :goto_5
    return-void

    .line 95
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 96
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 118
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 119
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    goto/16 :goto_2

    .line 128
    :cond_5
    const v3, 0x7f030094

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_3

    .line 144
    .restart local v1    # "configLangugaeListValue":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 145
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 149
    .end local v1    # "configLangugaeListValue":Ljava/lang/String;
    :cond_7
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 150
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 151
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    .line 152
    .local v2, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto :goto_4

    .line 154
    .end local v2    # "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :cond_8
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 164
    :cond_9
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    goto :goto_5
.end method

.method private DownloadVOLanguage()V
    .locals 4

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "languageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1004
    const-string v1, "SamsungIME"

    const-string v2, "SwiftkeyLanguagePreference.VOlistener : Start to Download VO langaue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$10;

    invoke-direct {v1, p0, v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$10;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1012
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    sput-object p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->checkVaildVOLP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadSwiftkeyLanguage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return p1
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelDownload()V

    return-void
.end method

.method static synthetic access$2000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    return-void
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->processingFailDownload()V

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$902(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    return p1
.end method

.method private cancelDownload()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1064
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> Start to cancel download : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1067
    .local v0, "json":Lorg/json/JSONObject;
    const-string v3, "download-vocur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1068
    const-string v3, "download-vomax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1069
    const-string v3, "download-skmax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1070
    const-string v3, "download-skcur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1071
    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1072
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1077
    new-instance v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    .line 1083
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1087
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->cancelDownload()V

    .line 1089
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 1092
    :cond_1
    const v1, 0x7f0d01d8

    .line 1093
    .local v1, "resId":I
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1097
    return-void

    .line 1073
    .end local v1    # "resId":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private checkVaildVOLP()Z
    .locals 6

    .prologue
    .line 1101
    const/4 v1, 0x0

    .line 1102
    .local v1, "resources":[Ljava/lang/String;
    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v3

    .line 1105
    .local v3, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "languageName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v2

    .line 1108
    .local v2, "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v2, :cond_0

    .line 1109
    const-string v4, "text"

    invoke-virtual {v2, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1112
    :cond_0
    if-nez v1, :cond_1

    .line 1113
    const-string v4, "SamsungIME"

    const-string v5, "SwiftkeyLanguagePreference.checkVaildVOLP : No VO resource. Download fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v4, 0x0

    .line 1116
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createNotification(IIZZII)V
    .locals 9
    .param p1, "resId"    # I
    .param p2, "serviceId"    # I
    .param p3, "update"    # Z
    .param p4, "onGoing"    # Z
    .param p5, "maximum"    # I
    .param p6, "current"    # I

    .prologue
    .line 856
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, "text":Ljava/lang/CharSequence;
    sget-object v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d01d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, "downloading":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 859
    .local v3, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 860
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 862
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v5, "com.touchtype.personalizer.PERSONALIZER_SETTINGS_ACTIVITY"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.diotek.ime.implement.setting.SwiftkeyLanguagesSettings"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 866
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 867
    .local v0, "downloadIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v8, 0x7f0d000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 868
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 869
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, p4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 871
    if-eqz p4, :cond_2

    .line 872
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v6, 0x1080081

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 874
    if-nez p5, :cond_1

    .line 875
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v7, p6, 0x64

    div-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 880
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v6, 0x0

    invoke-virtual {v5, p5, p6, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 881
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 889
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_2
    return-void

    .line 878
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v7, p6, 0x64

    div-int/2addr v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 883
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v6, 0x1080082

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 884
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 885
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 886
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 890
    :catch_0
    move-exception v2

    .line 891
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "SamsungIME"

    const-string v6, "Fail to update Notification"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private downloadSwiftkeyLanguage()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    const-string v0, "SamsungIME"

    const-string v1, "SwiftkeyLanguagePreference.listener : Start to Download Swiftkey langaue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$11;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$11;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1024
    :cond_0
    return-void
.end method

.method private downloadlanguagepack()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 400
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d021a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 445
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    const-string v1, "download-skmax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    const-string v1, "download-vomax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    const-string v1, "download-state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 412
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 427
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DownloadVOLanguage()V

    .line 441
    :goto_2
    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBar(Z)V

    .line 442
    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V

    goto :goto_0

    .line 417
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 418
    .restart local v0    # "json":Lorg/json/JSONObject;
    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 419
    const-string v1, "download-skmax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 420
    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    const-string v1, "download-vomax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 422
    const-string v1, "download-state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 423
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 424
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 430
    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .restart local v0    # "json":Lorg/json/JSONObject;
    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 432
    const-string v1, "download-skmax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 433
    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 434
    const-string v1, "download-vomax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 435
    const-string v1, "download-state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 436
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 439
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_3
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadSwiftkeyLanguage()V

    goto :goto_2

    .line 437
    :catch_1
    move-exception v1

    goto :goto_3

    .line 413
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private drawProgressBar(Z)V
    .locals 19
    .param p1, "update"    # Z

    .prologue
    .line 925
    const/4 v15, 0x0

    .line 926
    .local v15, "skcurrent":I
    const/16 v16, 0x0

    .line 927
    .local v16, "skmaximum":I
    const/16 v17, 0x0

    .line 928
    .local v17, "vocurrent":I
    const/16 v18, 0x0

    .line 929
    .local v18, "vomaximum":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, "curLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v13

    .line 932
    .local v13, "metadata":Lorg/json/JSONObject;
    if-nez v13, :cond_0

    .line 973
    :goto_0
    return-void

    .line 936
    :cond_0
    const-string v1, "download-skcur"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 937
    const-string v1, "download-skmax"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 938
    const-string v1, "download-vocur"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 939
    const-string v1, "download-vomax"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 942
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwiftkeyLanguagePreference-drawProgressBar skcurrent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwiftkeyLanguagePreference-drawProgressBar vocurrent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    add-int v1, v16, v18

    if-nez v1, :cond_1

    .line 945
    const-string v1, "SamsungIME"

    const-string v2, "SwiftkeyLanguagePreference-drawProgressBar avoid ArithmeticException: divide by zero"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    add-int v2, v16, v18

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 950
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    add-int v2, v15, v17

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 951
    const v2, 0x7f0d01d9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    const/4 v5, 0x1

    add-int v6, v16, v18

    add-int v7, v15, v17

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZII)V

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v9

    .line 955
    .local v9, "currentProgress":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v12

    .line 956
    .local v12, "maxProgress":I
    const-string v14, ""

    .line 957
    .local v14, "percentStr":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fa"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 958
    :cond_2
    mul-int/lit8 v1, v9, 0x64

    div-int/2addr v1, v12

    mul-int/lit8 v2, v9, 0x64

    div-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->toDigitString(II)Ljava/lang/String;

    move-result-object v14

    .line 962
    :goto_1
    if-eq v9, v12, :cond_3

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 964
    .local v10, "description":Ljava/lang/String;
    sget-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 965
    .local v11, "downloading":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 967
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 971
    .end local v10    # "description":Ljava/lang/String;
    .end local v11    # "downloading":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    const v2, 0x7f090412

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    const v2, 0x7f090412

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    .line 960
    :cond_4
    mul-int/lit8 v1, v9, 0x64

    div-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1
.end method

.method private drawProgressBarComplete(I)V
    .locals 7
    .param p1, "success"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 991
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 992
    const v1, 0x7f0d01d8

    iget v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZII)V

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    if-nez p1, :cond_2

    .line 994
    const v1, 0x7f0d01d9

    iget v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZII)V

    goto :goto_0

    .line 995
    :cond_2
    if-ne p1, v3, :cond_0

    .line 996
    const v1, 0x7f0d01d7

    iget v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    const/16 v5, 0x64

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZII)V

    goto :goto_0
.end method

.method private getDownloadGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 839
    const v0, 0x7f080043

    return v0
.end method

.method private getDownloadGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 843
    const v0, 0x7f030035

    return v0
.end method

.method public static getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 908
    const-string v1, "he"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    const-string p0, "iw"

    .line 911
    :cond_0
    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 917
    :cond_1
    const-string v1, "0x%08x"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "langID":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 919
    .end local v0    # "langID":Ljava/lang/String;
    :cond_2
    const-string v1, "0x%08x"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "langID":Ljava/lang/String;
    goto :goto_0
.end method

.method private isDownloadInProgress()Z
    .locals 2

    .prologue
    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, "downloadinProgress":Z
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    .line 1030
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1033
    :cond_0
    return v0
.end method

.method private isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 1
    .param p1, "lp"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "downloaded":Z
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    .line 1040
    return v0
.end method

.method private isUpdateAvailable()Z
    .locals 2

    .prologue
    .line 1045
    const/4 v0, 0x0

    .line 1046
    .local v0, "updateavailable":Z
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v0

    .line 1048
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    .line 1051
    :cond_0
    return v0

    .line 1049
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processingFailDownload()V
    .locals 3

    .prologue
    .line 1055
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> Start to processingFailDownload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->doFailDownload()V

    .line 1059
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 1061
    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 897
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 899
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 900
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 901
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 902
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 904
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private showDownloadingState(Z)V
    .locals 5
    .param p1, "downloaging"    # Z

    .prologue
    const v4, 0x7f090412

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 283
    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 309
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 310
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static final toDigitString(II)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # I
    .param p1, "lengthSize"    # I

    .prologue
    .line 975
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 976
    .local v0, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 979
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    .line 980
    const-string v2, ""

    .line 981
    .local v2, "formatter":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 982
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .end local v2    # "formatter":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 984
    :cond_0
    const-string v3, "%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateNotificationBar(Z)V
    .locals 6
    .param p1, "downloaded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "downloadState":I
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v2

    .line 316
    .local v2, "metadata":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 317
    const-string v3, "download-state"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 321
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3, v1}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    if-lez v0, :cond_1

    .line 328
    if-eqz p1, :cond_2

    .line 329
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V

    .line 334
    :cond_1
    :goto_1
    return-void

    .line 331
    :cond_2
    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V

    goto :goto_1

    .line 324
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected ChangeSetEnabledState()V
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 203
    .local v1, "useSystemLanguage":Landroid/preference/CheckBoxPreference;
    if-nez v1, :cond_1

    .line 215
    .end local v1    # "useSystemLanguage":Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v1    # "useSystemLanguage":Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 208
    .local v0, "isEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 206
    .end local v0    # "isEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected CheckandSettheViewState(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f090412

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 218
    const v0, 0x7f0800c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0800c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0800c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    .line 221
    const v0, 0x7f0800c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    .line 222
    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    .line 223
    const v0, 0x7f0800c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 226
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 227
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 229
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->ChangeSetEnabledState()V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/LanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 248
    :cond_2
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBar(Z)V

    .line 279
    :cond_3
    :goto_0
    return-void

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 262
    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :goto_2
    invoke-direct {p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateNotificationBar(Z)V

    .line 268
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    if-nez v0, :cond_3

    .line 269
    iput-boolean v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    .line 270
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    goto :goto_0

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 265
    :cond_6
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateNotificationBar(Z)V

    goto :goto_0
.end method

.method public IntentForDialog(I)V
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 675
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 676
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupNetworkError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v2, "network_err_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const-string v2, "mobile_data_only"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 679
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 680
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 681
    return-void
.end method

.method public MobileDataWarningForRoam()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 730
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 732
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string v9, "first_swiftkey_download_execution_for_roam"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    .line 779
    :goto_0
    return-void

    .line 737
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 738
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    .line 739
    .local v3, "DownloadGuideLayoutRscId":I
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    .line 742
    .local v2, "DownloadGuideCheckBoxRscId":I
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 743
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 745
    .local v6, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v6, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 746
    .local v5, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 747
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v10, 0x7f0d0257

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 749
    const v9, 0x7f080042

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 750
    .local v8, "titleTextView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v10, 0x7f0d0258

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    const v9, 0x7f0d01d1

    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    const v9, 0x7f0d0116

    new-instance v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$6;

    invoke-direct {v10, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$6;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 767
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 768
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_1

    .line 769
    new-instance v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;

    invoke-direct {v9, p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 778
    .local v1, "DownloadDlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public MobileDataWarningForWiFi()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 782
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 784
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v10, "first_swiftkey_download_execution"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 785
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    .line 836
    :goto_0
    return-void

    .line 789
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 790
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    .line 791
    .local v3, "DownloadGuideLayoutRscId":I
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    .line 793
    .local v2, "DownloadGuideCheckBoxRscId":I
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 795
    .local v7, "salesCode":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 796
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 798
    .local v6, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v6, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 799
    .local v5, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 800
    const-string v10, "VZW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 801
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v11, 0x7f0d01f0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 806
    :goto_1
    const v10, 0x7f080042

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 807
    .local v9, "titleTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v11, 0x7f0d0256

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    const v10, 0x7f0d01d1

    invoke-virtual {v0, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 809
    const v10, 0x7f0d0116

    new-instance v11, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;

    invoke-direct {v11, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 824
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 825
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_1

    .line 826
    new-instance v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$9;

    invoke-direct {v10, p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$9;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 835
    .local v1, "DownloadDlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 803
    .end local v1    # "DownloadDlg":Landroid/app/AlertDialog;
    .end local v4    # "chkbox":Landroid/widget/CheckBox;
    .end local v9    # "titleTextView":Landroid/widget/TextView;
    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v11, 0x7f0d0255

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 194
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    iget-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    .line 197
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->CheckandSettheViewState(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    .line 190
    return-void
.end method

.method protected onClick()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 338
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    .line 341
    .local v1, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    .line 342
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 343
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 344
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 346
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 349
    const v2, 0x7f0d01df

    .line 350
    .local v2, "resId":I
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 380
    .end local v0    # "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v2    # "resId":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 381
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 397
    return-void

    .line 356
    .restart local v0    # "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v4, 0x7f0d01d0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 357
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 359
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 364
    .end local v0    # "enabledLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 365
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 366
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 368
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v4, 0x7f0d01cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 369
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 372
    :cond_5
    const v2, 0x7f0d01de

    .line 373
    .restart local v2    # "resId":I
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 383
    .end local v2    # "resId":I
    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloadInProgress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 387
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 388
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    goto/16 :goto_1

    .line 392
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadGuideDialog()V

    goto/16 :goto_1
.end method

.method public showDownloadGuideDialog()V
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 685
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isFlightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    .line 727
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    .line 699
    :cond_1
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 700
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isDataRoammingOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 703
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    .line 707
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MobileDataWarningForRoam()V

    goto :goto_0

    .line 712
    :cond_3
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 715
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    .line 719
    :cond_4
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 721
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    .line 726
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MobileDataWarningForWiFi()V

    goto :goto_0
.end method
