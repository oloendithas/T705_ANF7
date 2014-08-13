.class public Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayOptionsPreferenceFragment.java"


# static fields
.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DisplayOptionsPreferenceFragment"


# instance fields
.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContext:Landroid/app/Activity;

.field private mHasPhone:Z

.field private mParentPreference:Landroid/preference/PreferenceGroup;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    .line 78
    new-instance v17, Lcom/android/contacts/preference/ContactsPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 80
    const v17, 0x7f060006

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mHasPhone:Z

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v12

    .line 84
    .local v12, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 89
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 92
    invoke-virtual {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mHasPhone:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_DisableMenu4GalSearch"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 147
    const-string v17, "DisplayOptionsPreferenceFragment"

    const-string v18, "DisplayOptionsPreferenceFragment true"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v17, "onlineSearch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "onlineSearch"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_DisableMenuNameOrder"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "displayOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "sortOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 170
    const-string v17, "DisplayOptionsPreferenceFragment"

    const-string v18, "DisplayOptionsPreferenceFragment, handling is false"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "vcardSettings"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 175
    .local v13, "removablePref":Landroid/preference/Preference;
    if-eqz v13, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    .end local v13    # "removablePref":Landroid/preference/Preference;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v17, "com.android.settings"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "accountintent":Landroid/content/Intent;
    const-string v17, "android.settings.SYNC_SETTINGS"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/high16 v17, 0x80000

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    const-string v17, "authorities"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "com.android.contacts"

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "accounts"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "accounts"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 189
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-class v18, Lcom/android/contacts/list/AccountFilterActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v4, "filterintent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "contacts_filter"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    new-instance v18, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;-><init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Intent;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "contacts_filter"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/preference/ImportExportActivity;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 260
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-class v18, Lcom/sec/android/app/contacts/preference/ImportExportActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v6, "importintent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "contactscount"

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 263
    .local v3, "count":I
    const-string v17, "contactscount"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "import_export"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "import_export"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 271
    .local v16, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    .line 273
    .local v5, "hasSim":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v9

    .line 275
    .local v9, "isKnoxMode":Z
    if-eqz v9, :cond_5

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    const-string v19, "import_export"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "attAddressBook"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 282
    .local v14, "removablePreference":Landroid/preference/Preference;
    if-eqz v14, :cond_7

    if-eqz v5, :cond_6

    if-eqz v9, :cond_7

    .line 283
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 286
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v8

    .line 288
    .local v8, "isEasyMode":Z
    if-eqz v8, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "sendContact"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 290
    .local v15, "sendContactPreference":Landroid/preference/Preference;
    if-eqz v15, :cond_8

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    .end local v15    # "sendContactPreference":Landroid/preference/Preference;
    :cond_8
    return-void

    .line 109
    .end local v2    # "accountintent":Landroid/content/Intent;
    .end local v3    # "count":I
    .end local v4    # "filterintent":Landroid/content/Intent;
    .end local v5    # "hasSim":Z
    .end local v6    # "importintent":Landroid/content/Intent;
    .end local v8    # "isEasyMode":Z
    .end local v9    # "isKnoxMode":Z
    .end local v14    # "removablePreference":Landroid/preference/Preference;
    .end local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v17

    if-nez v17, :cond_b

    .line 130
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 109
    :cond_b
    const-string v17, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 111
    const-string v17, "vnd.sec.contact.sim"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "vnd.sec.contact.sim"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v11, 0x1

    .line 113
    .local v11, "isSimAvailable":Z
    :goto_2
    const-string v17, "vnd.sec.contact.sim2"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "vnd.sec.contact.sim2"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/4 v10, 0x1

    .line 115
    .local v10, "isSim2Available":Z
    :goto_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 116
    if-nez v10, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 111
    .end local v10    # "isSim2Available":Z
    .end local v11    # "isSimAvailable":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_2

    .line 113
    .restart local v11    # "isSimAvailable":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    .line 120
    .restart local v10    # "isSim2Available":Z
    :cond_e
    if-eqz v11, :cond_f

    if-eqz v10, :cond_f

    .line 121
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-class v18, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_f
    if-nez v10, :cond_1

    if-nez v11, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 135
    .end local v10    # "isSim2Available":Z
    .end local v11    # "isSimAvailable":Z
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 140
    :cond_11
    invoke-virtual {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v17

    if-nez v17, :cond_12

    const-string v17, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-nez v17, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mHasPhone:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 141
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "serviceNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 160
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_15

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "displayOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0011

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "sortOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 351
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 298
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v8}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v7

    .line 299
    .local v7, "sendType":I
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    const-string v9, "sendContact"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 300
    .local v6, "sendContactPreference":Landroid/preference/Preference;
    if-eqz v6, :cond_0

    .line 301
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v5

    .line 302
    .local v5, "isEasyMode":Z
    if-eqz v5, :cond_3

    .line 303
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    .end local v5    # "isEasyMode":Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 318
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "characterset"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_5

    .line 319
    const-string v8, "vcardSettings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    if-nez v8, :cond_6

    .line 346
    :cond_2
    :goto_2
    return-void

    .line 305
    .restart local v5    # "isEasyMode":Z
    :cond_3
    if-nez v7, :cond_4

    .line 306
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0272

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0273

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 321
    .end local v5    # "isEasyMode":Z
    :cond_5
    const-string v8, "vcardSettings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string v9, "EUC-KR"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 329
    :cond_6
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 330
    .local v2, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 332
    .local v4, "isEASAccount":Z
    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 334
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 335
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v8, "com.android.exchange"

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 336
    const/4 v4, 0x1

    .line 341
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_8
    if-nez v4, :cond_2

    .line 342
    const-string v8, "onlineSearch"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 343
    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mParentPreference:Landroid/preference/PreferenceGroup;

    const-string v9, "onlineSearch"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method
