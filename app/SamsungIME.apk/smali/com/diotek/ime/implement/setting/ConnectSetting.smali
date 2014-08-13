.class public Lcom/diotek/ime/implement/setting/ConnectSetting;
.super Landroid/preference/PreferenceActivity;
.source "ConnectSetting.java"


# instance fields
.field private mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContactsConnectModule:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

.field mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field mFacebookConnectModule:Lcom/diotek/ime/framework/connect/FacebookConnectModule;

.field mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field mGmailConnectModule:Lcom/diotek/ime/framework/connect/GmailConnectModule;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsPersonalizedDataDefaultOff:Z

.field mMessagingConnectModule:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

.field mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field private mPhoneType:I

.field mSpellCheckerPreference:Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

.field mTwitterConnectModule:Lcom/diotek/ime/framework/connect/TwitterConnectModule;

.field mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 119
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    .line 124
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mPhoneType:I

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/ConnectSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ConnectSetting;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ConnectSetting;->showXt9GuideDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/ConnectSetting;)Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ConnectSetting;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/ConnectSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/ConnectSetting;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ConnectSetting;->showLiveLanguageGuideDialog()V

    return-void
.end method

.method private showLiveLanguageGuideDialog()V
    .locals 8

    .prologue
    .line 471
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 472
    :cond_0
    const v5, 0x7f030038

    .line 473
    .local v5, "liveLanguageGuideLayoutRscId":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0212

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "liveLanguageGuideDialogTitle":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 517
    .end local v4    # "liveLanguageGuideDialogTitle":Ljava/lang/String;
    .end local v5    # "liveLanguageGuideLayoutRscId":I
    :cond_1
    :goto_0
    return-void

    .line 478
    .restart local v4    # "liveLanguageGuideDialogTitle":Ljava/lang/String;
    .restart local v5    # "liveLanguageGuideLayoutRscId":I
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const/high16 v7, 0x7f0e0000

    invoke-direct {v6, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 481
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 482
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 483
    .local v2, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 485
    const v6, 0x7f080045

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 486
    .local v1, "chkbox":Landroid/widget/CheckBox;
    const v6, 0x104000a

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$5;

    invoke-direct {v7, p0, v1}, Lcom/diotek/ime/implement/setting/ConnectSetting$5;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    const v6, 0x7f0d01d1

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$6;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$6;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    .line 515
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showXt9GuideDialog()V
    .locals 8

    .prologue
    .line 378
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 380
    :cond_0
    const v5, 0x7f030044

    .line 382
    .local v5, "xt9GuideLayoutRscId":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "xt9GuideDialogTitle":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 467
    .end local v4    # "xt9GuideDialogTitle":Ljava/lang/String;
    .end local v5    # "xt9GuideLayoutRscId":I
    :cond_1
    :goto_0
    return-void

    .line 391
    .restart local v4    # "xt9GuideDialogTitle":Ljava/lang/String;
    .restart local v5    # "xt9GuideLayoutRscId":I
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const/high16 v7, 0x7f0e0000

    invoke-direct {v6, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 398
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 400
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 402
    .local v2, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 406
    const v6, 0x7f08005d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 410
    .local v1, "chkbox":Landroid/widget/CheckBox;
    const v6, 0x104000a

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$3;

    invoke-direct {v7, p0, v1}, Lcom/diotek/ime/implement/setting/ConnectSetting$3;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    const v6, 0x7f0d01d1

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$4;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$4;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    .line 463
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    .line 142
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    .line 147
    iget-boolean v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    if-eqz v7, :cond_9

    .line 149
    const v7, 0x7f03004e

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 159
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 161
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 163
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    :cond_0
    const-string v7, "connect_gmail_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 170
    const-string v7, "connect_facebook_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 172
    const-string v7, "connect_twitter_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 174
    const-string v7, "connect_messaging_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 176
    const-string v7, "connect_contacts_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 182
    const-string v7, "settings_use_spell_checker"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mSpellCheckerPreference:Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

    .line 186
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 192
    const-string v7, "settings_use_spell_checker"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

    .line 194
    .local v1, "cp":Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 198
    .local v3, "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    .end local v3    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 211
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    iput v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mPhoneType:I

    .line 213
    iget v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mPhoneType:I

    if-eqz v7, :cond_a

    .line 231
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    if-nez v7, :cond_3

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 233
    :cond_3
    const-string v7, "support_dlm"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 235
    .local v6, "usePredictiondata":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_4

    .line 237
    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$1;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$1;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 275
    .end local v6    # "usePredictiondata":Landroid/preference/CheckBoxPreference;
    :cond_4
    const-string v7, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "cp":Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 277
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_5

    .line 279
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 281
    .restart local v3    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_5

    .line 283
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    .end local v3    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_5
    const-string v7, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 290
    .local v2, "cpLiveLanguage":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_6

    .line 291
    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$2;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$2;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 312
    :cond_6
    const-string v7, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 313
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_7

    .line 314
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 315
    .restart local v3    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_7

    .line 316
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    .end local v3    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 322
    const-string v7, "support_dlm"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 323
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_8

    .line 324
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    :cond_8
    return-void

    .line 153
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v2    # "cpLiveLanguage":Landroid/preference/CheckBoxPreference;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    const v7, 0x7f03004d

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 215
    .restart local v0    # "bar":Landroid/app/ActionBar;
    .local v1, "cp":Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v7, :cond_2

    .line 217
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 219
    .restart local v3    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_2

    .line 221
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 357
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    .line 372
    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 339
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public showTOS()V
    .locals 7

    .prologue
    .line 520
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 523
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 524
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030045

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 526
    .local v1, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 527
    const v5, 0x7f08005e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getTOSText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    const v4, 0x7f0d01d1

    .line 530
    .local v4, "resIdCancel":I
    const v3, 0x7f0d0116

    .line 532
    .local v3, "resIdAccept":I
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/diotek/ime/implement/setting/ConnectSetting$7;

    invoke-direct {v6, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$7;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 538
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/diotek/ime/implement/setting/ConnectSetting$8;

    invoke-direct {v6, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$8;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 546
    return-void
.end method
