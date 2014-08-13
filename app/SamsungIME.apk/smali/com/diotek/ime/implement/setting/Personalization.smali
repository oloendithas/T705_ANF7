.class public Lcom/diotek/ime/implement/setting/Personalization;
.super Landroid/preference/PreferenceActivity;
.source "Personalization.java"


# static fields
.field static final KEY_CURRENT_MODE:Ljava/lang/String; = "CURRENT_MODE"

.field static final KEY_EDITTING_WORD:Ljava/lang/String; = "EDITTING_WORD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setEntries(Ljava/lang/String;II)V
    .locals 9
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "unitStrId"    # I
    .param p3, "valueStrId"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 56
    .local v3, "tempRef":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    instance-of v6, v3, Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 57
    check-cast v2, Landroid/preference/ListPreference;

    .line 58
    .local v2, "preference":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "unitArray":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "valueArray":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_1

    .line 64
    array-length v0, v4

    .line 65
    .local v0, "arraySize":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    aget-object v6, v4, v1

    const-string v7, "%d"

    aget-object v8, v5, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 72
    .end local v0    # "arraySize":I
    .end local v1    # "idx":I
    .end local v2    # "preference":Landroid/preference/ListPreference;
    .end local v4    # "unitArray":[Ljava/lang/String;
    .end local v5    # "valueArray":[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f0300a2

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    :cond_0
    const-string v1, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const/high16 v2, 0x7f070000

    const v3, 0x7f070001

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/implement/setting/Personalization;->setEntries(Ljava/lang/String;II)V

    .line 40
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 44
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
