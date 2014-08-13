.class public Lcom/sec/android/app/dialertab/calllog/PhoneWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhoneWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_SEC_WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field public static final CALL_URI:Landroid/net/Uri;

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field static final TAG:Ljava/lang/String; = "PhoneWidget"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "content://logs/addcall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->CALL_URI:Landroid/net/Uri;

    .line 60
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cityid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fname"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "simnum"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "service_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "call_out_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "remind_me_later_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 301
    return-void
.end method

.method private static DisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0e009c

    .line 325
    if-eqz p2, :cond_0

    .line 326
    const-string v0, "-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 335
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 328
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string v0, "-2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_2
    const-string v0, "-3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static setTitleAndIconAsCSC(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x48

    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, "phoneIcon":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, 0x0

    .line 283
    .local v2, "contactIcon":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    if-eqz v4, :cond_0

    .line 290
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 291
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const v5, 0x7f0903c6

    invoke-static {v1, v7, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 294
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    const v5, 0x7f0903c9

    invoke-static {v1, v7, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 298
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SpanX"    # I
    .param p2, "SpanY"    # I

    .prologue
    .line 173
    const/16 v18, 0x0

    .line 174
    .local v18, "views":Landroid/widget/RemoteViews;
    new-instance v18, Landroid/widget/RemoteViews;

    .end local v18    # "views":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0401a7

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 175
    .restart local v18    # "views":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->setTitleAndIconAsCSC(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 177
    const/4 v8, 0x0

    .line 178
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 179
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 182
    .local v16, "number":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v19, "where":Ljava/lang/StringBuilder;
    const-string v2, "new"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v2, " = 1 "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, "type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v2, " = "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const/4 v14, 0x0

    .line 193
    .local v14, "mGroupCount":I
    const/4 v2, 0x2

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "number"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    .line 194
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 195
    if-eqz v8, :cond_0

    .line 196
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 205
    .end local v4    # "projection":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 208
    .local v9, "displayNameIndex":I
    const-string v2, "number"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 209
    .local v10, "displayNumberIndex":I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 210
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->DisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 214
    packed-switch v14, :pswitch_data_0

    .line 227
    const v2, 0x7f0903c4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e04e7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 229
    const v2, 0x7f0903c5

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v9    # "displayNameIndex":I
    .end local v10    # "displayNumberIndex":I
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_2
    if-eqz v16, :cond_6

    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 240
    .local v13, "locale":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    const v2, 0x7f0903c8

    const-string v3, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    :goto_2
    const v2, 0x7f0903c4

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 248
    const v2, 0x7f0903c5

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 249
    const v2, 0x7f0903c7

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 251
    const v2, 0x7f0903c8

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 253
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/DialtactsActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v12, "launchIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 258
    .local v17, "pi":Landroid/app/PendingIntent;
    const v2, 0x7f0903c3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 274
    .end local v13    # "locale":Ljava/lang/String;
    :goto_3
    return-object v18

    .line 199
    .end local v12    # "launchIntent":Landroid/content/Intent;
    .end local v17    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v11

    .line 200
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWidget"

    const-string v3, "getMissedGroupCount exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "displayNameIndex":I
    .restart local v10    # "displayNumberIndex":I
    :pswitch_0
    const v2, 0x7f0903c4

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e00b3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 219
    if-eqz v15, :cond_4

    .line 220
    const v2, 0x7f0903c5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 234
    .end local v9    # "displayNameIndex":I
    .end local v10    # "displayNumberIndex":I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 222
    .restart local v9    # "displayNameIndex":I
    .restart local v10    # "displayNumberIndex":I
    :cond_4
    const v2, 0x7f0903c5

    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 244
    .end local v9    # "displayNameIndex":I
    .end local v10    # "displayNumberIndex":I
    .restart local v13    # "locale":Ljava/lang/String;
    :cond_5
    const v2, 0x7f0903c8

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 262
    .end local v13    # "locale":Ljava/lang/String;
    :cond_6
    const v2, 0x7f0903c4

    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    const v2, 0x7f0903c5

    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 264
    const v2, 0x7f0903c7

    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 265
    const v2, 0x7f0903c8

    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 266
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/DialtactsActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .restart local v12    # "launchIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 270
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 271
    .restart local v17    # "pi":Landroid/app/PendingIntent;
    const v2, 0x7f0903c3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 137
    .local v5, "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 140
    .local v4, "widgetIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 141
    invoke-virtual {p0, p1, v5, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance v6, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, p1, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneWidget;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->mObserver:Landroid/database/ContentObserver;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 146
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 147
    .local v3, "uri":Landroid/net/Uri;
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "spanX":I
    const/4 v4, 0x0

    .line 92
    .local v4, "spanY":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    const-string v9, "widgetspanx"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 94
    const-string v9, "widgetspany"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 95
    const-string v9, "widgetId"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 97
    .local v5, "targetWidgetId":I
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 98
    .local v8, "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    .line 101
    .local v7, "widgetIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v7

    if-ge v2, v9, :cond_3

    .line 102
    aget v9, v7, v2

    if-ne v9, v5, :cond_0

    .line 103
    invoke-static {p1, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 101
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v5    # "targetWidgetId":I
    .end local v7    # "widgetIds":[I
    .end local v8    # "widgetMgr":Landroid/appwidget/AppWidgetManager;
    :cond_1
    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 112
    :cond_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 113
    .restart local v8    # "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .restart local v0    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v8, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    .line 116
    .restart local v7    # "widgetIds":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v9, v7

    if-ge v2, v9, :cond_3

    .line 117
    invoke-virtual {p0, p1, v8, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v7    # "widgetIds":[I
    .end local v8    # "widgetMgr":Landroid/appwidget/AppWidgetManager;
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->mObserver:Landroid/database/ContentObserver;

    if-nez v9, :cond_4

    .line 122
    new-instance v9, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, p0, p1, v10}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneWidget;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->mObserver:Landroid/database/ContentObserver;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 125
    .local v6, "uri":Landroid/net/Uri;
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/4 v8, 0x1

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 164
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 165
    .local v5, "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v2, "cn":Landroid/content/ComponentName;
    move-object v1, p3

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 167
    .local v0, "appWidgetId":I
    invoke-static {p1, v8, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "appWidgetId":I
    :cond_0
    return-void
.end method
