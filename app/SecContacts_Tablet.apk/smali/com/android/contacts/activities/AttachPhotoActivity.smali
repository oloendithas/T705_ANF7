.class public Lcom/android/contacts/activities/AttachPhotoActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AttachPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/AttachPhotoActivity$Listener;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contact_uri"

.field private static final KEY_TEMP_PHOTO_URI:Ljava/lang/String; = "temp_photo_uri"

.field private static final PHOTO_FOR_INTENT:Ljava/lang/String; = "photo_uri"

.field private static final REQUEST_CROP_PHOTO:I = 0x2

.field private static final REQUEST_PICK_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mPhotoDim:I


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mTempPhotoFile:Ljava/io/File;

.field private mTempPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/contacts/activities/AttachPhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/AttachPhotoActivity;
    .param p1, "x1"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/AttachPhotoActivity;->saveContact(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/android/contacts/activities/AttachPhotoActivity$Listener;

    .prologue
    .line 213
    new-instance v0, Lcom/android/contacts/ContactLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 214
    .local v0, "loader":Lcom/android/contacts/ContactLoader;
    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/activities/AttachPhotoActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$2;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 226
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 227
    return-void
.end method

.method private saveContact(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 24
    .param p1, "contact"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->createEntityDeltaList()Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v4

    .line 242
    .local v4, "deltaList":Lcom/android/contacts/model/EntityDeltaList;
    if-nez v4, :cond_0

    .line 243
    sget-object v3, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v5, "no entity delta list  found"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 290
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/contacts/model/EntityDeltaList;->getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v20

    .line 248
    .local v20, "raw":Lcom/android/contacts/model/EntityDelta;
    if-nez v20, :cond_1

    .line 249
    sget-object v3, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v5, "no writable raw-contact found"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v22

    .line 255
    .local v22, "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 256
    .local v17, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 257
    .local v21, "scaled":Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v18

    .line 258
    .local v18, "compressed":[B
    if-nez v18, :cond_2

    .line 259
    sget-object v3, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v5, "could not create scaled and compressed Bitmap"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/AccountType;

    move-result-object v16

    .line 268
    .local v16, "account":Lcom/android/contacts/model/AccountType;
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v23

    .line 270
    .local v23, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v23, :cond_3

    .line 271
    sget-object v3, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v5, "cannot attach photo to this account type"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_3
    const-string v3, "data15"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 275
    const-string v3, "data11"

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 277
    sget-object v3, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v5, "all prerequisites met, about to save photo to contact"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getCustomAlerttone()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v15}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 288
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 165
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    if-ne p1, v6, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->tempCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 178
    .local v2, "tempCropFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/String;

    aput-object v9, v5, v7

    invoke-static {v3, v4, v5, v9}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 185
    .local v1, "myIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mimeType"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "mimeType"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    sget v4, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I

    invoke-static {v0, v3, v4}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 191
    invoke-virtual {p0, v0, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    goto :goto_0

    .line 195
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "myIntent":Landroid/content/Intent;
    .end local v2    # "tempCropFile":Ljava/io/File;
    :cond_3
    if-ne p1, v8, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    new-instance v4, Lcom/android/contacts/activities/AttachPhotoActivity$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/AttachPhotoActivity$1;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;)V

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 88
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->setLayoutAttribute()V

    .line 93
    :cond_0
    if-eqz p1, :cond_2

    .line 94
    const-string v0, "contact_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "uri":Ljava/lang/String;
    if-nez v8, :cond_1

    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    .line 97
    const-string v0, "temp_photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    .line 110
    .end local v8    # "uri":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 130
    :goto_2
    return-void

    .line 95
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 100
    .end local v8    # "uri":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    .line 101
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 103
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v0, "photo_uri"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v7, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 119
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 129
    invoke-virtual {p0, v9}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    goto :goto_2

    .line 122
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "contact_uri"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    const-string v0, "temp_photo_uri"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method protected setLayoutAttribute()V
    .locals 8

    .prologue
    const v7, 0x7f0c01d2

    const/16 v6, 0x35

    const/4 v5, 0x1

    .line 133
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 134
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 135
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 136
    .local v0, "dimAmount":F
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 139
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 140
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 153
    :goto_0
    return-void

    .line 146
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 148
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method
