.class public Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "KeyboardSwipeSettingsFragment.java"


# instance fields
.field private isUsingPredictiveText:Z

.field private mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private misTablet:Z

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    .line 40
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 42
    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->misTablet:Z

    .line 44
    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->changeSwipe(Landroid/preference/Preference;)V

    return-void
.end method

.method private changeSwipe(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    instance-of v0, p1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 258
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 262
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 266
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 268
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 270
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 274
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 275
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 282
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 284
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 133
    .local v3, "middle":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 134
    .local v4, "sideWeight":I
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "childmiddle":Landroid/view/View;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v6, 0x7f0800aa

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "childleft":Landroid/view/View;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v6, 0x7f0800ab

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 138
    .local v2, "childright":Landroid/view/View;
    :try_start_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020a4b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/4 v3, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    .line 52
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    const v2, 0x7f0d0057

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 56
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    .line 60
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 62
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 63
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_MODE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->misTablet:Z

    .line 66
    :cond_1
    iget-boolean v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->misTablet:Z

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 72
    :cond_2
    const v2, 0x7f03005a

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 74
    const-string v2, "settings_keyboard_swipe_none"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 75
    .local v1, "pf":Landroid/preference/Preference;
    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 76
    check-cast v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    .line 77
    new-instance v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$1;-><init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    :cond_3
    const-string v2, "settings_keyboard_swipe_continuous_input"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 88
    check-cast v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    .line 89
    new-instance v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;-><init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    :cond_4
    const-string v2, "settings_keyboard_swipe_cursor_control"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_5

    instance-of v2, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v2, :cond_5

    move-object v2, v1

    .line 100
    check-cast v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    .line 101
    new-instance v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$3;-><init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    :cond_5
    const-string v2, "settings_keyboard_swipe_flick_umlaut"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_6

    instance-of v2, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v2, :cond_6

    move-object v2, v1

    .line 112
    check-cast v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    .line 113
    new-instance v2, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$4;-><init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 21

    .prologue
    .line 159
    invoke-super/range {p0 .. p0}, Landroid/app/Fragment;->onResume()V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 162
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0d007c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    .line 169
    :goto_0
    const-string v17, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 170
    .local v11, "pf":Landroid/preference/Preference;
    if-eqz v11, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_TRACE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 209
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v12

    .line 210
    .local v12, "repository":Lcom/diotek/ime/framework/repository/Repository;
    const-string v17, "INPUT_LANGUAGE"

    const v18, 0x656e4742

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    .line 211
    .local v6, "language":I
    const/high16 v17, -0x10000

    and-int v9, v6, v17

    .line 213
    .local v9, "mLangCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v16

    .line 214
    .local v16, "supported":[Lcom/diotek/ime/framework/common/Language;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "com.sec.android.inputmethod_preferences"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 215
    .local v13, "sPrefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 216
    .local v7, "languageID":Ljava/lang/String;
    const/4 v10, -0x1

    .line 217
    .local v10, "order":I
    const/4 v14, -0x1

    .line 218
    .local v14, "selectedIndex":I
    move v3, v9

    .line 219
    .local v3, "currentLanguageInSettings":I
    const/4 v15, -0x1

    .line 220
    .local v15, "selectedLanguageId":I
    const/4 v2, 0x0

    .line 221
    .local v2, "currentLanguageExist":Z
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v4, v17, -0x1

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_7

    .line 222
    const-string v17, "0x%08x"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v20, v16, v4

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 223
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 224
    .local v5, "isSelected":Z
    if-eqz v5, :cond_1

    .line 225
    add-int/lit8 v10, v10, 0x1

    .line 226
    move v14, v4

    .line 227
    aget-object v17, v16, v4

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    const/high16 v18, -0x10000

    and-int v15, v17, v18

    .line 228
    if-nez v2, :cond_1

    if-ne v3, v15, :cond_1

    .line 229
    const/4 v2, 0x1

    .line 221
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 165
    .end local v2    # "currentLanguageExist":Z
    .end local v3    # "currentLanguageInSettings":I
    .end local v4    # "i":I
    .end local v5    # "isSelected":Z
    .end local v6    # "language":I
    .end local v7    # "languageID":Ljava/lang/String;
    .end local v9    # "mLangCode":I
    .end local v10    # "order":I
    .end local v11    # "pf":Landroid/preference/Preference;
    .end local v12    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    .end local v13    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v14    # "selectedIndex":I
    .end local v15    # "selectedLanguageId":I
    .end local v16    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0d007d

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 179
    .restart local v11    # "pf":Landroid/preference/Preference;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 188
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 197
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 213
    .restart local v6    # "language":I
    .restart local v9    # "mLangCode":I
    .restart local v12    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v16

    goto/16 :goto_2

    .line 234
    .restart local v2    # "currentLanguageExist":Z
    .restart local v3    # "currentLanguageInSettings":I
    .restart local v4    # "i":I
    .restart local v7    # "languageID":Ljava/lang/String;
    .restart local v10    # "order":I
    .restart local v13    # "sPrefs":Landroid/content/SharedPreferences;
    .restart local v14    # "selectedIndex":I
    .restart local v15    # "selectedLanguageId":I
    .restart local v16    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_7
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    .line 236
    .local v8, "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    const/high16 v18, -0x10000

    and-int v3, v17, v18

    .line 241
    .end local v8    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/high16 v17, 0x6a610000

    move/from16 v0, v17

    if-ne v3, v0, :cond_b

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 252
    :goto_5
    return-void

    .line 237
    :cond_9
    if-eqz v10, :cond_a

    if-nez v2, :cond_8

    .line 238
    :cond_a
    aget-object v17, v16, v14

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    const/high16 v18, -0x10000

    and-int v3, v17, v18

    goto :goto_4

    .line 243
    :cond_b
    const/high16 v17, 0x7a680000

    move/from16 v0, v17

    if-ne v3, v0, :cond_d

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 247
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 250
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->isUsingPredictiveText:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5
.end method
