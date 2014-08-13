.class public final Lcom/android/contacts/preference/ContactsPreferences;
.super Landroid/database/ContentObserver;
.source "ContactsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# static fields
.field public static final CSC_SMS_MAX_RECIPIENT:Ljava/lang/String; = "Settings.Messages.SMS.MaxRecipient"

.field private static final DEFAULT_LIMITED_MMS_COUNT:I = 0xa

.field public static final NAMECARD_SORT_ORDER:Ljava/lang/String; = "namecard_sort_order"

.field public static final PREF_DISPLAY_ONLY_PHONES:Ljava/lang/String; = "only_phones"

.field public static final PREF_DISPLAY_ONLY_PHONES_DEFAULT:Z = false

.field public static final PREF_ONLINE_SEARCH:Ljava/lang/String; = "online_search"

.field public static final PREF_ONLINE_SEARCH_OFF:I = 0x0

.field public static final PREF_ONLINE_SEARCH_ON:I = 0x1

.field public static final PREF_TOGGLE:Ljava/lang/String; = "toggle"

.field public static final PREF_VIDEO_CALLING:Ljava/lang/String; = "video_switch"

.field public static final PRFS_MMS_MAX_RECIPIENT:Ljava/lang/String; = "csc_pref_key_max_recipient"

.field public static final SEND_ALL_CONTACTS:I = 0x0

.field public static final SEND_CONTACT_TYPE:Ljava/lang/String; = "send_contact_type"

.field public static final SEND_INDIVIDUAL_CONTACTS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mNamecardSortOrder:I

.field private mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 85
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 61
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 63
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mNamecardSortOrder:I

    .line 65
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 67
    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/preference/ContactsPreferences;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/preference/ContactsPreferences;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/preference/ContactsPreferences;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/preference/ContactsPreferences;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/preference/ContactsPreferences;)Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/preference/ContactsPreferences;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-object v0
.end method


# virtual methods
.method public getDefaultDisplayOrder()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDelete()Z
    .locals 4

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 234
    .local v1, "mPrefs":Landroid/content/SharedPreferences;
    const-string v2, "toggle"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 235
    .local v0, "flag":Z
    return v0
.end method

.method public getDisplayOrder()I
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 163
    :cond_0
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_1
.end method

.method public getNamecardDefaultSortOrder()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getNamecardSortOrder()I
    .locals 3

    .prologue
    .line 129
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mNamecardSortOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "namecard_sort_order"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mNamecardSortOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mNamecardSortOrder:I

    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getNamecardDefaultSortOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mNamecardSortOrder:I

    goto :goto_0
.end method

.method public getOnlineSearch()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 207
    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, "mPrefs":Landroid/content/SharedPreferences;
    const-string v2, "online_search"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, "isEnalbed":I
    if-ne v0, v3, :cond_0

    .line 210
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "online_search"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    const/4 v0, 0x1

    .line 214
    :cond_0
    return v0
.end method

.method public getOnlyPhones()Z
    .locals 4

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string v2, "only_phones"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 185
    .local v1, "onlyPhones":Z
    return v1
.end method

.method public getRecipientLimit()I
    .locals 6

    .prologue
    .line 245
    iget-object v4, p0, Lcom/android/contacts/preference/ContactsPreferences;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    if-nez v4, :cond_0

    .line 246
    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getInstance()Lcom/sec/android/app/dialertab/widget/CscParser;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/preference/ContactsPreferences;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, "mPrefs":Landroid/content/SharedPreferences;
    const-string v4, "20"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 251
    .local v3, "recipientLimitFeature":I
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/preference/ContactsPreferences;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v5, "Settings.Messages.SMS.MaxRecipient"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 256
    :goto_0
    const-string v4, "csc_pref_key_max_recipient"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, "recipientLimit":I
    return v2

    .line 253
    .end local v2    # "recipientLimit":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getSendContactType()I
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string v2, "send_contact_type"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 197
    .local v1, "sendType":I
    return v1
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 107
    :cond_0
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_1
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/preference/ContactsPreferences;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method public registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 266
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 274
    iput v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 275
    iput v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 277
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    return-void
.end method

.method public setDelete(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "toggle"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 2
    .param p1, "displayOrder"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 176
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    return-void
.end method

.method public setNamecardSortOrder(I)V
    .locals 2
    .param p1, "sortOrder"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mNamecardSortOrder:I

    .line 142
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "namecard_sort_order"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    return-void
.end method

.method public setOnlineSearch(I)V
    .locals 3
    .param p1, "isEnable"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "online_search"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    return-void
.end method

.method public setOnlyPhones(Z)V
    .locals 3
    .param p1, "onlyPhones"    # Z

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "only_phones"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    return-void
.end method

.method public setRecipientLimit(I)V
    .locals 3
    .param p1, "recipientLimit"    # I

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "csc_pref_key_max_recipient"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    return-void
.end method

.method public setSendContactType(I)V
    .locals 3
    .param p1, "sendType"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "send_contact_type"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .param p1, "sortOrder"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 120
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    return-void
.end method

.method public setVideoCallingSwitch(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "video_switch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    return-void
.end method

.method public unregisterChangeListener()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 289
    :cond_0
    return-void
.end method
