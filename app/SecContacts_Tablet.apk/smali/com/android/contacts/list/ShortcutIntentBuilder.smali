.class public Lcom/android/contacts/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final CONTACT_DISPLAY_NAME_ALT_COLUMN_INDEX:I = 0x1

.field private static final CONTACT_DISPLAY_NAME_COLUMN_INDEX:I = 0x0

.field private static final CONTACT_ID_COLUMN_INDEX:I = 0x3

.field private static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x2

.field private static final CONTACT_PRIVATE_COLUMN_INDEX:I = 0x4

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_CONTACT_ID_COLUMN_INDEX:I = 0x6

.field private static final PHONE_DISPLAY_NAME_ALT_COLUMN_INDEX:I = 0x1

.field private static final PHONE_DISPLAY_NAME_COLUMN_INDEX:I = 0x0

.field private static final PHONE_ID:I = 0x7

.field private static final PHONE_LABEL_COLUMN_INDEX:I = 0x5

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field private static final PHONE_PHOTO_ID_COLUMN_INDEX:I = 0x2

.field private static final PHONE_PRIVATE_COLUMN_INDEX:I = 0x8

.field private static final PHONE_TYPE_COLUMN_INDEX:I = 0x4

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_PHOTO_COLUMN_INDEX:I = 0x0

.field private static final PHOTO_PHOTO_URI_COLUMN_INDEX:I = 0x2

.field private static final PHOTO_SELECTION:Ljava/lang/String; = "_id=?"

.field private static final SHORTCUT_CALL:Ljava/lang/String; = "call"

.field private static final SHORTCUT_CONTACT:Ljava/lang/String; = "contact"

.field private static final SHORTCUT_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private final mBorderColor:I

.field private final mBorderWidth:I

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "is_private"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data2"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_private"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    .line 96
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v3

    const-string v1, "data14"

    aput-object v1, v0, v4

    const-string v1, "photo_uri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 142
    .local v0, "am":Landroid/app/ActivityManager;
    const v2, 0x7f0c00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    .line 143
    iget v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    if-nez v2, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    .line 147
    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    .line 149
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    .line 150
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ShortcutIntentBuilder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ShortcutIntentBuilder;)Lcom/android/contacts/preference/ContactsPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ShortcutIntentBuilder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BJLandroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ShortcutIntentBuilder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [B
    .param p4, "x4"    # J
    .param p6, "x5"    # Landroid/net/Uri;
    .param p7, "x6"    # Z

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BJLandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ShortcutIntentBuilder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [B
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # J
    .param p10, "x9"    # Landroid/net/Uri;
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Z

    .prologue
    .line 58
    invoke-direct/range {p0 .. p12}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BJLandroid/net/Uri;Z)V
    .locals 8
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "bitmapData"    # [B
    .param p4, "contactId"    # J
    .param p6, "photoUri"    # Landroid/net/Uri;
    .param p7, "isPrivate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 311
    invoke-direct {p0, p3, p4, p5, v5}, Lcom/android/contacts/list/ShortcutIntentBuilder;->getPhotoBitmap([BJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 315
    .local v1, "hasGif":Ljava/lang/Boolean;
    invoke-direct {p0, p6}, Lcom/android/contacts/list/ShortcutIntentBuilder;->hasGifPhoto(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v1

    .line 320
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.jcontacts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 322
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.jcontacts.action.QUICK_CONTACT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v4, "shortcutIntent":Landroid/content/Intent;
    :goto_0
    const/high16 v5, 0x14200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 333
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "skip_display_name_lookup"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 335
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    const-string v5, "mode"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v6, "exclude_mimes"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 345
    iget-object v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 347
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 349
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v5, "shortcut-type"

    const-string v6, "contact"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v5, "secret"

    invoke-virtual {v3, v5, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    const-string v5, "photoUri"

    invoke-virtual {v3, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 357
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v5, p1, v3}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 358
    return-void

    .line 326
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "shortcutIntent":Landroid/content/Intent;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4    # "shortcutIntent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "bitmapData"    # [B
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "phoneType"    # I
    .param p6, "phoneLabel"    # Ljava/lang/String;
    .param p7, "shortcutAction"    # Ljava/lang/String;
    .param p8, "contactId"    # J
    .param p10, "photoUri"    # Landroid/net/Uri;
    .param p11, "dataId"    # Ljava/lang/String;
    .param p12, "isPrivate"    # Z

    .prologue
    .line 364
    const/4 v10, 0x1

    move-wide/from16 v0, p8

    invoke-direct {p0, p3, v0, v1, v10}, Lcom/android/contacts/list/ShortcutIntentBuilder;->getPhotoBitmap([BJZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 366
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 368
    .local v3, "hasGif":Ljava/lang/Boolean;
    const-string v8, "call"

    .line 370
    .local v8, "shortcutType":Ljava/lang/String;
    move-object/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ShortcutIntentBuilder;->hasGifPhoto(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v3

    .line 373
    const-string v10, "android.intent.action.CALL"

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 375
    :cond_0
    const-string v10, "tel"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-static {v10, v0, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 376
    .local v5, "phoneUri":Landroid/net/Uri;
    const v10, 0x7f02002c

    move/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v2, v0, v1, v10}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 378
    const-string v8, "call"

    .line 386
    :goto_0
    iget-object v10, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 387
    .local v6, "r":Landroid/content/res/Resources;
    move/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 389
    .local v9, "typeLabel":Ljava/lang/CharSequence;
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p7

    invoke-direct {v7, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    .local v7, "shortcutIntent":Landroid/content/Intent;
    const/high16 v10, 0x4000000

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 391
    iget-object v10, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "message"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 393
    const-string v10, "com.android.mms"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    :cond_1
    :goto_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 399
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v10, "data_id"

    move-object/from16 v0, p11

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v10, "shortcut-type"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v10, "shortcut-type-label"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 405
    const-string v10, "secret"

    move/from16 v0, p12

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    const-string v10, "contact_id"

    move-wide/from16 v0, p8

    invoke-virtual {v4, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 407
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 408
    const-string v10, "photoUri"

    move-object/from16 v0, p10

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    :cond_2
    iget-object v10, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v10, p1, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 411
    return-void

    .line 380
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "phoneUri":Landroid/net/Uri;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "shortcutIntent":Landroid/content/Intent;
    .end local v9    # "typeLabel":Ljava/lang/CharSequence;
    :cond_3
    const-string v10, "smsto"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-static {v10, v0, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 381
    .restart local v5    # "phoneUri":Landroid/net/Uri;
    const v10, 0x7f02002d

    move/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v2, v0, v1, v10}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 383
    const-string v8, "message"

    goto/16 :goto_0

    .line 394
    .restart local v6    # "r":Landroid/content/res/Resources;
    .restart local v7    # "shortcutIntent":Landroid/content/Intent;
    .restart local v9    # "typeLabel":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "call"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 395
    const-string v10, "call_from_sec"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 445
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 446
    .local v0, "workPaint":Landroid/graphics/Paint;
    iget v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 452
    return-void
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "photo"    # Landroid/graphics/Bitmap;
    .param p2, "phoneType"    # I
    .param p3, "phoneLabel"    # Ljava/lang/String;
    .param p4, "actionResId"    # I

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 496
    .local v17, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v10, v5, Landroid/util/DisplayMetrics;->density:F

    .line 498
    .local v10, "density":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 502
    .local v15, "phoneIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 503
    .local v13, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 506
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 507
    .local v16, "photoPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 508
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 509
    new-instance v19, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 510
    .local v19, "src":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 511
    .local v11, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v3, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 513
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/android/contacts/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 516
    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 518
    .local v4, "overlay":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 519
    new-instance v9, Landroid/text/TextPaint;

    const/16 v5, 0x101

    invoke-direct {v9, v5}, Landroid/text/TextPaint;-><init>(I)V

    .line 521
    .local v9, "textPaint":Landroid/text/TextPaint;
    const v5, 0x7f0c00bd

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 522
    const/high16 v5, 0x7f0b0000

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 524
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 527
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 530
    .local v12, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 531
    .local v24, "workPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 533
    const v5, 0x7f0c00be

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v22

    .line 535
    .local v22, "textPadding":I
    const v5, 0x7f0c00ba

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 536
    .local v20, "textBackGroundHeight":I
    const v5, 0x7f0c00bb

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 539
    .local v21, "textLeftPadding":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    mul-int/lit8 v7, v20, 0x2

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    move/from16 v25, v0

    sub-int v8, v8, v25

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 541
    move-object/from16 v0, v24

    invoke-virtual {v3, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 543
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    int-to-float v0, v5

    move/from16 v18, v0

    .line 544
    .local v18, "sidePadding":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    mul-float v6, v6, v18

    sub-float/2addr v5, v6

    const/high16 v6, 0x41c80000

    mul-float/2addr v6, v10

    float-to-int v6, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 546
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v23

    .line 547
    .local v23, "textWidth":F
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v7, v21, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float v8, v23, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    div-int/lit8 v25, v20, 0x2

    sub-int v8, v8, v25

    int-to-float v8, v8

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 551
    .end local v9    # "textPaint":Landroid/text/TextPaint;
    .end local v12    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v18    # "sidePadding":F
    .end local v20    # "textBackGroundHeight":I
    .end local v21    # "textLeftPadding":I
    .end local v22    # "textPadding":I
    .end local v23    # "textWidth":F
    .end local v24    # "workPaint":Landroid/graphics/Paint;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 552
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 553
    .local v14, "iconWidth":I
    const/high16 v5, 0x41b80000

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v14, v5

    const/high16 v6, 0x41c80000

    mul-float/2addr v6, v10

    float-to-int v6, v6

    sub-int v6, v14, v6

    const/high16 v7, 0x40000000

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sub-int v7, v14, v7

    invoke-virtual {v11, v5, v6, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 555
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    neg-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 556
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v15, v0, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 558
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 560
    return-object v13
.end method

.method private generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 457
    if-nez p1, :cond_0

    move-object v2, v5

    .line 486
    :goto_0
    return-object v2

    .line 459
    :cond_0
    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 460
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 463
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 464
    .local v3, "photoPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 465
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 466
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 467
    .local v4, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v1, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 468
    .local v1, "dst":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 470
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 484
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private getPhotoBitmap([BJZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmapData"    # [B
    .param p2, "contactId"    # J
    .param p4, "phoneNumber"    # Z

    .prologue
    const/4 v3, 0x0

    .line 289
    if-eqz p1, :cond_0

    .line 290
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 292
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v1, "shortcut:"

    const-string v2, "default start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz p4, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3, v3, p2, p3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultShortCutResId(ZZJ)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    const-string v1, "shortcut:"

    const-string v2, "default finish"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3, v3, p2, p3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private hasGifPhoto(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 415
    if-eqz p1, :cond_2

    .line 416
    const/4 v4, 0x0

    .line 419
    .local v4, "inputStreamForHeader":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 420
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    .line 421
    const/4 v5, 0x6

    new-array v3, v5, [B

    .line 422
    .local v3, "headerBuffer":[B
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 423
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 424
    .local v2, "fileHeader":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "GIF89a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 425
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 426
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 429
    if-eqz v4, :cond_0

    .line 430
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 440
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "fileHeader":Ljava/lang/String;
    .end local v3    # "headerBuffer":[B
    .end local v4    # "inputStreamForHeader":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v5

    .line 429
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "fileHeader":Ljava/lang/String;
    .restart local v3    # "headerBuffer":[B
    .restart local v4    # "inputStreamForHeader":Ljava/io/FileInputStream;
    :cond_1
    if-eqz v4, :cond_2

    .line 430
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 440
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "fileHeader":Ljava/lang/String;
    .end local v3    # "headerBuffer":[B
    .end local v4    # "inputStreamForHeader":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 429
    .restart local v4    # "inputStreamForHeader":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 430
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShortcutIntentBuilder"

    const-string v6, "Error getting display photo. Ignoring, as we already have the thumbnail"

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "ShortcutIntentBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write photo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 154
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method
