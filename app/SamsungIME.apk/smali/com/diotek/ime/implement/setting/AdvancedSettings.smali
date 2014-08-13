.class public Lcom/diotek/ime/implement/setting/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v7, 0x7f03004b

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 29
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 30
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    .line 34
    .local v3, "mInputManager":Lcom/diotek/ime/framework/common/InputManager;
    if-nez v3, :cond_1

    .line 35
    invoke-static {p0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    .line 37
    :cond_1
    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 38
    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v6

    .line 39
    .local v6, "repository":Lcom/diotek/ime/framework/repository/Repository;
    if-eqz v6, :cond_2

    .line 40
    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, "language":I
    const/high16 v7, -0x10000

    and-int v4, v2, v7

    .line 42
    .local v4, "mLangCode":I
    const/high16 v7, 0x6b6f0000

    if-ne v4, v7, :cond_2

    .line 43
    const-string v7, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 44
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 46
    .local v5, "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_2

    .line 47
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v2    # "language":I
    .end local v4    # "mLangCode":I
    .end local v5    # "pfScreen":Landroid/preference/PreferenceScreen;
    .end local v6    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
