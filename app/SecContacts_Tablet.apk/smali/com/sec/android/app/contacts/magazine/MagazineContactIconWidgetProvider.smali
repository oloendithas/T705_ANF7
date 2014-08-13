.class public Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MagazineContactIconWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider$ContactsIconContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_SEC_WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field private static final CONTACTS_DATA_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MagazineContactIconWidgetProvider"

.field private static mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->CONTACTS_DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 267
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 269
    .local v0, "currentDate":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "mDate":Ljava/lang/String;
    return-object v1
.end method

.method public static magazineWidgetRotation(Landroid/content/Context;III)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetId"    # I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 301
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 303
    .local v0, "widgetMgr":Landroid/appwidget/AppWidgetManager;
    invoke-static {p0, p2, p3}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 304
    const/4 v1, 0x1

    return v1
.end method

.method public static queryBirthday(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    .line 249
    sget-object v0, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->getCurrentDate()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "currentDate":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v7, "selection":Ljava/lang/StringBuilder;
    const-string v0, "mimetype = ? AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v0, " LIKE ? AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v0, "data2"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v0, " = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->CONTACTS_DATA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "vnd.android.cursor.item/contact_event"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->mCursor:Landroid/database/Cursor;

    .line 264
    return-void
.end method

.method public static setTitleAndIconAsCSC(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "contactIcon":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v4, 0x0

    .line 236
    .local v4, "phoneIcon":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 244
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const v5, 0x7f09038e

    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 246
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SpanX"    # I
    .param p2, "SpanY"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "views":Landroid/widget/RemoteViews;
    new-instance v2, Landroid/widget/RemoteViews;

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040194

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 161
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p0, v2}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->setTitleAndIconAsCSC(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 214
    const v3, 0x7f09038b

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    const v3, 0x7f09038c

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 219
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v3, 0x7f090388

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    const v3, 0x7f09038e

    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 224
    sget-object v3, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 225
    sget-object v3, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 156
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 125
    sget-object v0, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "spanX":I
    const/4 v3, 0x0

    .line 73
    .local v3, "spanY":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    const-string v7, "widgetspanx"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 75
    const-string v7, "widgetspany"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 76
    const-string v7, "widgetId"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 78
    .local v4, "targetWidgetId":I
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 79
    .local v6, "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 82
    .local v5, "widgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 83
    aget v7, v5, v1

    if-ne v7, v4, :cond_0

    .line 84
    invoke-static {p1, v2, v3}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "i":I
    .end local v4    # "targetWidgetId":I
    .end local v5    # "widgetIds":[I
    .end local v6    # "widgetMgr":Landroid/appwidget/AppWidgetManager;
    :cond_1
    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    :cond_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 93
    .restart local v6    # "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .restart local v0    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 96
    .restart local v5    # "widgetIds":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 97
    aget v7, v5, v1

    invoke-static {p1, v10, v10}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "i":I
    .end local v5    # "widgetIds":[I
    .end local v6    # "widgetMgr":Landroid/appwidget/AppWidgetManager;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/4 v8, 0x1

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 138
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 139
    .local v5, "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
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

    .line 141
    .local v0, "appWidgetId":I
    invoke-static {p1, v8, v8}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "appWidgetId":I
    :cond_0
    return-void
.end method
