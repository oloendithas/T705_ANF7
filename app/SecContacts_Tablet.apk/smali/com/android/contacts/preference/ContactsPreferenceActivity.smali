.class public final Lcom/android/contacts/preference/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"


# static fields
.field public static final EXTRA_CONTACTS_COUNT:Ljava/lang/String; = "contactscount"

.field public static final EXTRA_FRAGMENT_MANAGER:Ljava/lang/String; = "fragment_manager"

.field public static final ONLY_CONTACT_WITH_PHONES_CHANGED:Ljava/lang/String; = "onlyContactWithPhonesChanged"

.field public static final SUBACTIVITY_ACCOUNT_FILTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactsPreferenceActivity"


# instance fields
.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mIsRootScreen:Z

.field private mOnlyPhones:Z

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isEmpty(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIsRootScreen()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 139
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 140
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 141
    const-string v1, "contactListFilter"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 143
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_0

    .line 146
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "onlyContactWithPhonesChanged"

    iget-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mOnlyPhones:Z

    iget-object v3, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlyPhones()Z

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 169
    return-void

    .line 163
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f060007

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 81
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 84
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 86
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "only_phones"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mOnlyPhones:Z

    .line 87
    if-eqz p1, :cond_1

    .line 88
    const-string v1, "is_root_screen"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-boolean v4, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 126
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->onBackPressed()V

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "is_root_screen"

    iget-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method public setIsRootScreen(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 180
    return-void
.end method
