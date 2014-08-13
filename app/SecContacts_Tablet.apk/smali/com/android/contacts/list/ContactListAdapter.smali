.class public abstract Lcom/android/contacts/list/ContactListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# static fields
.field protected static final CONTACT_CONTACT_STATUS_COLUMN_INDEX:I = 0x6

.field protected static final CONTACT_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x2

.field protected static final CONTACT_DISPLAY_NAME_PRIMARY_COLUMN_INDEX:I = 0x1

.field protected static final CONTACT_HAS_EMAIL_COLUMN_INDEX:I = 0x10

.field protected static final CONTACT_HAS_PHONE_COLUMN_INDEX:I = 0xb

.field protected static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_IS_USER_PROFILE:I = 0xe

.field protected static final CONTACT_LINK_COLUMN_INDEX:I = 0xd

.field protected static final CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x9

.field protected static final CONTACT_PHONETIC_NAME_COLUMN_INDEX:I = 0xa

.field protected static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x7

.field protected static final CONTACT_PHOTO_URI_COLUMN_INDEX:I = 0x8

.field protected static final CONTACT_PRESENCE_STATUS_COLUMN_INDEX:I = 0x5

.field protected static final CONTACT_PRIVATE_COLUMN_INDEX:I = 0xf

.field protected static final CONTACT_SNIPPET_COLUMN_INDEX:I = 0xf

.field protected static final CONTACT_SORT_KEY_ALTERNATIVE_COLUMN_INDEX:I = 0xc

.field protected static final CONTACT_SORT_KEY_PRIMARY_COLUMN_INDEX:I = 0x3

.field protected static final CONTACT_STARRED_COLUMN_INDEX:I = 0x4

.field protected static final FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

.field protected static final FILTER_PROJECTION:[Ljava/lang/String;

.field protected static final FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

.field protected static final GOOGLE_PLUS_DATA_SET:Ljava/lang/String; = "plus"

.field protected static final PROJECTION_CONTACT:[Ljava/lang/String;

.field protected static final PROJECTION_DATA:[Ljava/lang/String;


# instance fields
.field private checkBoxAnimationStartTimeMilis:J

.field protected mAlternativeDisplayNameColumnIndex:I

.field protected mDisplayNameColumnIndex:I

.field public mIsItemViewLayerTypeSoftware:Z

.field private mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field protected mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    .line 94
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->FILTER_PROJECTION:[Ljava/lang/String;

    .line 135
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    .line 158
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pictureData"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "workPhone"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "homePhone"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mobilePhone"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "has_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    .line 233
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    .line 236
    :cond_0
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 237
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activateRcsPinner(Z)V
    .locals 1
    .param p1, "activate"    # Z

    .prologue
    .line 895
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iput-boolean p1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    .line 898
    :cond_0
    return-void
.end method

.method protected bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 759
    return-void
.end method

.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "isChecked"    # Z

    .prologue
    .line 715
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->showCheckBox(Z)V

    .line 716
    return-void
.end method

.method protected bindCheckBoxWithAnimation(Lcom/android/contacts/list/ContactListItemView;Z)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "isChecked"    # Z

    .prologue
    .line 721
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->checkBoxAnimationStartTimeMilis:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showCheckBoxWithAnimation(ZJ)V

    .line 722
    return-void
.end method

.method protected bindGalPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 607
    invoke-virtual {p1, v11}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 608
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 612
    const-string v9, "pictureData"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .local v8, "pictureIndex":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 613
    const/4 v7, 0x0

    .line 614
    .local v7, "pictureDataByte":[B
    const/4 v0, 0x0

    .line 616
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, "pictureData":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 618
    const-string v9, "gal_search_show_more"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 644
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "pictureData":Ljava/lang/String;
    .end local v7    # "pictureDataByte":[B
    :goto_0
    return-void

    .line 622
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v6    # "pictureData":Ljava/lang/String;
    .restart local v7    # "pictureDataByte":[B
    :cond_0
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v6, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 623
    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    const/4 v7, 0x0

    .line 629
    const/4 v6, 0x0

    .line 630
    const/4 v0, 0x0

    .line 631
    goto :goto_0

    .line 625
    :catch_0
    move-exception v3

    .line 626
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    const/4 v7, 0x0

    .line 629
    const/4 v6, 0x0

    .line 630
    const/4 v0, 0x0

    .line 631
    goto :goto_0

    .line 628
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    const/4 v7, 0x0

    .line 629
    const/4 v6, 0x0

    .line 630
    const/4 v0, 0x0

    throw v9

    .line 634
    :cond_1
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 635
    .local v1, "contactId":J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/contacts/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 639
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "contactId":J
    .end local v6    # "pictureData":Ljava/lang/String;
    .end local v7    # "pictureDataByte":[B
    :cond_2
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 640
    .restart local v1    # "contactId":J
    const/16 v9, 0x8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "photoUriString":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 642
    .local v4, "photoUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/contacts/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 641
    .end local v4    # "photoUri":Landroid/net/Uri;
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1
.end method

.method protected bindGalTitleAndCompany(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, -0x1

    .line 650
    const/4 v4, 0x0

    .line 651
    .local v4, "titleData":Ljava/lang/String;
    const/4 v2, 0x0

    .line 653
    .local v2, "companyData":Ljava/lang/String;
    const-string v5, "title"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "TitleIndex":I
    if-eq v1, v6, :cond_0

    .line 654
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 656
    :cond_0
    const-string v5, "company"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "CompanyIndex":I
    if-eq v0, v6, :cond_1

    .line 657
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 660
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v3, "titleAndCompanyName":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 672
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/contacts/list/ContactListItemView;->showGalTitleAndCompany(Ljava/lang/String;)V

    .line 673
    return-void

    .line 664
    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    .line 666
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    .line 667
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 669
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    .line 683
    :goto_0
    iget v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    .line 685
    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 686
    return-void

    .line 680
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    .line 697
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayNameAsGalSearchShowMore()V

    .line 698
    return-void

    .line 694
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 572
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    goto :goto_0

    .line 584
    :cond_3
    if-eqz p3, :cond_0

    .line 590
    const-wide/16 v2, 0x0

    .line 591
    .local v2, "photoId":J
    const/4 v0, 0x7

    :try_start_0
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 592
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 596
    :cond_4
    const-wide/16 v5, 0x0

    .line 597
    .local v5, "contactId":J
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 598
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 600
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    .end local v5    # "contactId":J
    :catch_0
    move-exception v7

    .line 602
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 702
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableSnsInfoInListView"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x5

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    .line 707
    :cond_0
    return-void
.end method

.method protected bindPrivateIcon(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 766
    const/16 v0, 0xf

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPrivateIcon(Landroid/database/Cursor;I)V

    .line 767
    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 710
    const/16 v0, 0xf

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 711
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "position"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 539
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 540
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 542
    .local v0, "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_3

    .line 545
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactsCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 556
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 557
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v2, :cond_5

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 559
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 562
    const v1, 0x7f02060a

    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeaderBackGround(I)V

    .line 569
    .end local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_2
    :goto_2
    return-void

    .line 548
    .restart local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_3
    if-eqz p3, :cond_1

    .line 549
    if-nez p2, :cond_4

    const/16 v2, 0xe

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 550
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactsCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 552
    :cond_4
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 557
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 565
    .end local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_6
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 567
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected bindStarredIcon(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 763
    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showStarredIcon(Landroid/database/Cursor;I)V

    .line 764
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 852
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 855
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_1

    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->setProfileExists(Z)V

    .line 872
    :goto_0
    return-void

    .line 861
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 862
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 863
    const/16 v2, 0xe

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->setProfileExists(Z)V

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 863
    goto :goto_1

    .line 866
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->setProfileExists(Z)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 888
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinOnDestroy()V

    .line 892
    :cond_0
    return-void
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "displayName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 285
    .local v2, "item":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 286
    iget v4, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    :cond_0
    iget v4, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 300
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "item":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v0

    .line 292
    .restart local v0    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/database/StaleDataException;
    move-object v0, v3

    .line 293
    goto :goto_0

    .line 294
    .end local v1    # "e":Landroid/database/StaleDataException;
    :catch_1
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v3

    .line 296
    goto :goto_0

    .line 298
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 299
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    move-object v0, v3

    .line 300
    goto :goto_0
.end method

.method public getContactItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 908
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContactLookupKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 350
    .local v1, "partitionIndex":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 351
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactLookupKey(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactLookupKey(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 356
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 323
    .local v2, "partitionIndex":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 324
    .local v1, "item":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 325
    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 332
    .end local v1    # "item":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v3

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/database/StaleDataException;
    invoke-virtual {v0}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 336
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 337
    .local v0, "contactId":J
    const/16 v6, 0x9

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 339
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 340
    .local v2, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 341
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 344
    :cond_0
    return-object v5
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v3

    .line 829
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 830
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .line 831
    .local v2, "partition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 829
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 836
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 840
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    .line 847
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getHasPhoneNumber(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    .prologue
    .line 770
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 771
    const/4 v9, -0x1

    .line 820
    :cond_0
    :goto_0
    return v9

    .line 774
    :cond_1
    const/4 v2, 0x0

    .line 775
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 776
    .local v8, "partitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    .line 777
    .local v7, "partitionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 778
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    .line 779
    .local v6, "partition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 780
    move v8, v3

    .line 784
    .end local v6    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    .line 785
    const/4 v9, -0x1

    goto :goto_0

    .line 777
    .restart local v6    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 788
    .end local v6    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 789
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 790
    :cond_5
    const/4 v9, -0x1

    goto :goto_0

    .line 793
    :cond_6
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 794
    const/4 v5, -0x1

    .line 795
    .local v5, "offset":I
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 796
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 797
    const/16 v10, 0x9

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "lookupKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 799
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 812
    .end local v4    # "lookupKey":Ljava/lang/String;
    :cond_8
    :goto_2
    const/4 v10, -0x1

    if-ne v5, v10, :cond_b

    .line 813
    const/4 v9, -0x1

    goto :goto_0

    .line 803
    :cond_9
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 805
    :cond_a
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 806
    .local v0, "contactId":J
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_7

    .line 807
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 808
    goto :goto_2

    .line 816
    .end local v0    # "contactId":J
    :cond_b
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    .line 817
    .local v9, "position":I
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 818
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 529
    if-eqz p4, :cond_0

    move-object v0, p4

    .line 530
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 531
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isVoLTEEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setVoLTEEnabled(Z)V

    .line 534
    .end local v0    # "view":Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public hasValidSelection()Z
    .locals 2

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 730
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideCheckBox()V

    .line 731
    return-void
.end method

.method protected hideCheckBoxWithAnimation(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 735
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->checkBoxAnimationStartTimeMilis:J

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->hideCheckBoxWithAnimation(J)V

    .line 736
    return-void
.end method

.method public isBridgedContact(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 418
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 419
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "link":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vnd.sec.contact.phone_knox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.sec.contact.phone_personal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    :cond_0
    const/4 v2, 0x1

    .line 427
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "link":Ljava/lang/String;
    :goto_0
    return v2

    .line 425
    :catch_0
    move-exception v2

    .line 427
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isContactStarred(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactWritable(I)Z
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 382
    iget-object v9, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 383
    .local v1, "accountTypeManager":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "linkColumnString":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v2, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v4, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v2, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 388
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 389
    .local v7, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 390
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    .local v0, "accountType":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    .local v3, "dataSet":Ljava/lang/String;
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v8

    .line 393
    .local v8, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v8}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 394
    const/4 v9, 0x1

    .line 397
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v8    # "type":Lcom/android/contacts/model/AccountType;
    :goto_1
    return v9

    .line 389
    .restart local v0    # "accountType":Ljava/lang/String;
    .restart local v3    # "dataSet":Ljava/lang/String;
    .restart local v8    # "type":Lcom/android/contacts/model/AccountType;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v8    # "type":Lcom/android/contacts/model/AccountType;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z
    .locals 7
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 494
    :try_start_0
    iget v3, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    :cond_0
    iget v3, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    :cond_1
    int-to-long v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const-string v3, "gal_search_show_more"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    const/4 v2, 0x1

    .line 507
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isGooglePlusAccount(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    const/16 v7, 0xd

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "linkColumnString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4, v0, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 406
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 407
    .local v5, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 408
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, "dataSet":Ljava/lang/String;
    const-string v6, "plus"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    const/4 v6, 0x1

    .line 412
    .end local v1    # "dataSet":Ljava/lang/String;
    :goto_1
    return v6

    .line 407
    .restart local v1    # "dataSet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public isPhonePersonalcontact(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 433
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 434
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "link":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.sec.contact.phone_personal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    const/4 v2, 0x1

    .line 442
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "link":Ljava/lang/String;
    :goto_0
    return v2

    .line 440
    :catch_0
    move-exception v2

    .line 442
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPreLoadContact(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 482
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 483
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "link":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.sec.contact.phone/preload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    const/4 v2, 0x1

    .line 488
    .end local v1    # "link":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPrivateContact(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 10
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 367
    .local v0, "directoryId":J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_0

    .line 376
    :goto_0
    return v5

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "lookupKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v4

    .line 373
    goto :goto_0

    .line 376
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method public isSharableContact(I)Z
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x1

    .line 913
    iget-object v11, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 914
    .local v1, "accountTypeManager":Lcom/android/contacts/model/AccountTypeManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v2, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v4, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 917
    .local v6, "item":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 918
    .local v7, "linkColumnString":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 919
    const/16 v11, 0xd

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 920
    :cond_0
    invoke-static {v7, v2, v4}, Lcom/android/contacts/ContactsUtils;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 922
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 923
    .local v8, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_3

    .line 924
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 925
    .local v0, "accountType":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 926
    .local v3, "dataSet":Ljava/lang/String;
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v9

    .line 927
    .local v9, "type":Lcom/android/contacts/model/AccountType;
    iget-object v11, p0, Lcom/android/contacts/list/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "vnd.sec.contact.phone_personal"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 935
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v9    # "type":Lcom/android/contacts/model/AccountType;
    :cond_1
    :goto_1
    return v10

    .line 931
    .restart local v0    # "accountType":Ljava/lang/String;
    .restart local v3    # "dataSet":Ljava/lang/String;
    .restart local v9    # "type":Lcom/android/contacts/model/AccountType;
    :cond_2
    invoke-virtual {v9}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "preload"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 923
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 935
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v9    # "type":Lcom/android/contacts/model/AccountType;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public isSim2Contact(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 464
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 465
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 466
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "link":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    const/4 v2, 0x1

    .line 473
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "link":Ljava/lang/String;
    :goto_0
    return v2

    .line 471
    :catch_0
    move-exception v2

    .line 473
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSimContact(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 450
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "link":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    const/4 v2, 0x1

    .line 458
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "link":Ljava/lang/String;
    :goto_0
    return v2

    .line 456
    :catch_0
    move-exception v2

    .line 458
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 513
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    invoke-direct {v0, p1, v2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 514
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isVoLTEEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setVoLTEEnabled(Z)V

    .line 518
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getCheckBoxDirection()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setCheckBoxPosition(Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;)V

    .line 520
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    if-eqz v1, :cond_0

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 523
    :cond_0
    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 876
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinOnPause()V

    .line 880
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 882
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->pinOnResume()V

    .line 886
    :cond_0
    return-void
.end method

.method public setCheckBoxAnimationStartTimeMilis(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 725
    iput-wide p1, p0, Lcom/android/contacts/list/ContactListAdapter;->checkBoxAnimationStartTimeMilis:J

    .line 726
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 3
    .param p1, "displayOrder"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 306
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 308
    iput v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    .line 309
    iput v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    iput v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    .line 312
    iput v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method

.method public setItemViewLayerTypeSoftware(Z)V
    .locals 0
    .param p1, "isTwoPaneMode"    # Z

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    .line 903
    return-void
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .param p1, "selectedDirectoryId"    # J
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "contactId"    # J

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    .line 257
    iput-object p3, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 258
    iput-wide p4, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    .line 259
    return-void
.end method
