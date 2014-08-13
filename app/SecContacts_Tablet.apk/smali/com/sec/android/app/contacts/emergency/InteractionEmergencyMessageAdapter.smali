.class public Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionEmergencyMessageAdapter.java"


# static fields
.field private static CONTACT_DATA1_COLUMN_INDEX:I

.field private static CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

.field protected static final FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

.field protected static final PROJECTION_ICE:[Ljava/lang/String;


# instance fields
.field private mDefaultCountryIso:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/16 v3, 0xf

    .line 44
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "null"

    aput-object v2, v0, v1

    const-string v1, "default_emergency"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    .line 64
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "null"

    aput-object v2, v0, v1

    const-string v1, "default_emergency"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

    .line 84
    sput v3, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    .line 85
    sput v4, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->CONTACT_DATA1_COLUMN_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->mDefaultCountryIso:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    .line 140
    :goto_0
    iget v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    .line 142
    return-void

    .line 137
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 145
    sget v3, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->CONTACT_DATA1_COLUMN_INDEX:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "numberE164":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "currentLang":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    .line 162
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "iw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 119
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 120
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->getUpperCaseQueryString()[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->isSelectionVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 125
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 126
    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 127
    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 129
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 130
    return-void

    :cond_1
    move-object v1, v2

    .line 120
    goto :goto_0
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 1
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->configureUri(Landroid/content/CursorLoader;J)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    .line 98
    const-string v0, "display_name"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected configureProjection(Landroid/content/CursorLoader;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/CursorLoader;

    .prologue
    .line 114
    sget-object v0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;J)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 104
    const-string v2, "ICE"

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "defaultId"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 111
    return-void
.end method
