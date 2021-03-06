.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$SearchColumns;,
        Landroid/provider/Browser$BookmarkColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri;

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_CREATE_NEW_TAB:Ljava/lang/String; = "create_new_tab"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri;

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "user_entered"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 125
    const-string v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 131
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 260
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    sget-object v1, Landroid/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 542
    return-void
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .registers 12
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 431
    const/4 v6, 0x0

    .line 432
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 434
    .local v8, "ret":Z
    :try_start_4
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "visits"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_1f} :catch_2b
    .catchall {:try_start_4 .. :try_end_1f} :catchall_36

    move-result v0

    if-lez v0, :cond_29

    move v8, v9

    .line 441
    :goto_23
    if-eqz v6, :cond_28

    :goto_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_28
    return v8

    :cond_29
    move v8, v10

    .line 437
    goto :goto_23

    .line 438
    :catch_2b
    move-exception v7

    .line 439
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_2c
    const-string v0, "browser"

    const-string v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_36

    .line 441
    if-eqz v6, :cond_28

    goto :goto_25

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_36
    move-exception v0

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 553
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 557
    :goto_7
    return-void

    .line 554
    :catch_8
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "browser"

    const-string v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 526
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 527
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "begin"    # J
    .param p3, "end"    # J

    .prologue
    const-wide/16 v3, -0x1

    .line 502
    const-string v0, "date"

    .line 503
    .local v0, "date":Ljava/lang/String;
    cmp-long v2, v3, p1

    if-nez v2, :cond_2f

    .line 504
    cmp-long v2, v3, p3

    if-nez v2, :cond_10

    .line 505
    invoke-static {p0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 516
    :goto_f
    return-void

    .line 508
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "whereClause":Ljava/lang/String;
    :goto_2b
    invoke-static {p0, v1}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_f

    .line 509
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_2f
    cmp-long v2, v3, p3

    if-nez v2, :cond_4f

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "whereClause":Ljava/lang/String;
    goto :goto_2b

    .line 512
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "whereClause":Ljava/lang/String;
    goto :goto_2b
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 468
    const/4 v6, 0x0

    .line 470
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 473
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v8

    .line 477
    .local v8, "iconDb":Landroid/webkit/WebIconDatabase;
    :cond_1e
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 478
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 480
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_32} :catch_38
    .catchall {:try_start_1 .. :try_end_32} :catchall_43

    .line 486
    .end local v8    # "iconDb":Landroid/webkit/WebIconDatabase;
    :cond_32
    if-eqz v6, :cond_37

    :goto_34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_37
    return-void

    .line 482
    :catch_38
    move-exception v7

    .line 483
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_39
    const-string v0, "browser"

    const-string v1, "deleteHistoryWhere"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_43

    .line 486
    if-eqz v6, :cond_37

    goto :goto_34

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_43
    move-exception v0

    if-eqz v6, :cond_49

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v0
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 239
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const-string v3, "folder = 0"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 254
    sget-object v1, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v0

    const-string v5, "created ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 363
    const/4 v6, 0x0

    .line 364
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 366
    .local v9, "str":[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "url"

    aput-object v1, v2, v0

    .line 369
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 370
    if-nez v6, :cond_22

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_1c} :catch_39
    .catchall {:try_start_3 .. :try_end_1c} :catchall_4b

    .line 381
    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v0

    .line 371
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_22
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 372
    const/4 v8, 0x0

    .line 373
    .local v8, "i":I
    :goto_29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 374
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_36} :catch_39
    .catchall {:try_start_22 .. :try_end_36} :catchall_4b

    .line 375
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 377
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v8    # "i":I
    :catch_39
    move-exception v7

    .line 378
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_3a
    const-string v0, "browser"

    const-string v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_4b

    .line 381
    if-eqz v6, :cond_49

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :goto_46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    move-object v0, v9

    .line 383
    goto :goto_21

    .line 381
    :catchall_4b
    move-exception v0

    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0

    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_52
    if-eqz v6, :cond_49

    goto :goto_46
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 264
    const/4 v7, 0x0

    .line 265
    .local v7, "secure":Z
    move-object v6, p1

    .line 266
    .local v6, "compareString":Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 267
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    :cond_10
    :goto_10
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 273
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 275
    :cond_1e
    const/4 v8, 0x0

    .line 276
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_83

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 280
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 298
    :goto_58
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "visits"

    aput-object v3, v2, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 268
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_73
    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 269
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 270
    const/4 v7, 0x1

    goto :goto_10

    .line 284
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_83
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 287
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "wwwString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 291
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 294
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_58
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .prologue
    .line 572
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/webkit/WebIconDatabase;->bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 573
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 198
    const v0, 0x1040877

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringToSend"    # Ljava/lang/String;
    .param p2, "chooserDialogTitle"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "send":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :try_start_12
    invoke-static {v1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 227
    .end local v0    # "i":Landroid/content/Intent;
    :goto_19
    return-void

    .line 224
    :catch_1a
    move-exception v2

    goto :goto_19
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 399
    const/4 v6, 0x0

    .line 403
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_53

    .line 408
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v9

    .line 410
    .local v9, "iconDb":Landroid/webkit/WebIconDatabase;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_32
    const/4 v0, 0x5

    if-ge v8, v0, :cond_53

    .line 411
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_50} :catch_5c
    .catchall {:try_start_1 .. :try_end_50} :catchall_68

    move-result v0

    if-nez v0, :cond_59

    .line 420
    .end local v8    # "i":I
    .end local v9    # "iconDb":Landroid/webkit/WebIconDatabase;
    :cond_53
    if-eqz v6, :cond_58

    :goto_55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_58
    return-void

    .line 410
    .restart local v8    # "i":I
    .restart local v9    # "iconDb":Landroid/webkit/WebIconDatabase;
    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 417
    .end local v8    # "i":I
    .end local v9    # "iconDb":Landroid/webkit/WebIconDatabase;
    :catch_5c
    move-exception v7

    .line 418
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_5d
    const-string v0, "browser"

    const-string/jumbo v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_68

    .line 420
    if-eqz v6, :cond_58

    goto :goto_55

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_68
    move-exception v0

    if-eqz v6, :cond_6e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "real"    # Z

    .prologue
    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 315
    .local v2, "now":J
    const/4 v0, 0x0

    .line 317
    .local v0, "c":Landroid/database/Cursor;
    :try_start_5
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 320
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .local v5, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_46

    .line 322
    const-string/jumbo v7, "visits"

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    :goto_27
    const-string v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    sget-object v7, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_40} :catch_52
    .catchall {:try_start_5 .. :try_end_40} :catchall_a3

    .line 352
    :goto_40
    if-eqz v0, :cond_45

    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_45
    return-void

    .line 324
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_46
    :try_start_46
    const-string/jumbo v7, "user_entered"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_51
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_51} :catch_52
    .catchall {:try_start_46 .. :try_end_51} :catchall_a3

    goto :goto_27

    .line 349
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_52
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_53
    const-string v7, "browser"

    const-string/jumbo v8, "updateVisitedHistory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_a3

    .line 352
    if-eqz v0, :cond_45

    goto :goto_42

    .line 330
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_5e
    :try_start_5e
    invoke-static {p0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 331
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .restart local v5    # "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_aa

    .line 335
    const/4 v6, 0x1

    .line 336
    .local v6, "visits":I
    const/4 v4, 0x0

    .line 341
    .local v4, "user_entered":I
    :goto_6a
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v7, "visits"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-string/jumbo v7, "title"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v7, "created"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string/jumbo v7, "user_entered"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    sget-object v7, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_a2
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_a2} :catch_52
    .catchall {:try_start_5e .. :try_end_a2} :catchall_a3

    goto :goto_40

    .line 352
    .end local v4    # "user_entered":I
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "visits":I
    :catchall_a3
    move-exception v7

    if-eqz v0, :cond_a9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a9
    throw v7

    .line 338
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_aa
    const/4 v6, 0x0

    .line 339
    .restart local v6    # "visits":I
    const/4 v4, 0x1

    .restart local v4    # "user_entered":I
    goto :goto_6a
.end method
