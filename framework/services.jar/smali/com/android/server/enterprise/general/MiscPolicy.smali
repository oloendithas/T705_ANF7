.class public Lcom/android/server/enterprise/general/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$1;,
        Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;,
        Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
    }
.end annotation


# static fields
.field private static final CHROME_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final FONT_NOTSUPPORT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font.droidserifitalic"

.field private static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final SBROWSER_PROJECTION:[Ljava/lang/String;

.field private static final SBROWSER_PROJECTION_ID_INDEX:I = 0x0

.field private static final SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFontSizes:[F

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

.field private mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "content://com.sec.android.app.sbrowser.operatorbookmarks/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    .line 161
    const-string v0, "content://com.android.chrome.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    .line 163
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "editable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    .line 149
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 154
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 175
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 176
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 177
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 178
    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_0

    .line 1152
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBookmark(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 828
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 829
    .local v4, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android"

    invoke-static {v7, v8, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 831
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 832
    const-string v6, "MiscPolicy"

    const-string v7, "addBookmark() - Could not create context for current user!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_0
    :goto_0
    return v5

    .line 836
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 837
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 838
    .local v0, "bookmarkAddedtoChrome":Z
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 841
    .local v1, "bookmarkAddedtoSBrowser":Z
    if-nez v1, :cond_3

    .line 843
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v6

    .line 846
    goto :goto_0
.end method

.method private addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 18
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 747
    const/4 v10, 0x0

    .line 748
    .local v10, "result":Z
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 749
    .local v2, "browserUri":Landroid/net/Uri;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 750
    .local v4, "creationTime":J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 751
    .local v7, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 752
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 756
    .local v11, "token":J
    :try_start_0
    sget-object v15, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/enterprise/general/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 757
    if-nez v6, :cond_1

    .line 758
    const-string v15, "MiscPolicy"

    const-string v16, "addBookmarkToAndroidBrowser() - No provider found!!!"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    const/4 v15, 0x0

    .line 815
    if-eqz v6, :cond_0

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    :goto_0
    return v15

    .line 761
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 763
    .local v3, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_2

    .line 766
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 767
    const/4 v15, 0x5

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 776
    :cond_2
    const-string/jumbo v15, "title"

    move-object/from16 v0, p3

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string/jumbo v15, "url"

    move-object/from16 v0, p2

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v15, "created"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    const-string v15, "bookmark"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string v15, "date"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    sget-object v15, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 782
    const-string/jumbo v15, "thumbnail"

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 784
    :cond_3
    const/4 v14, 0x0

    .line 785
    .local v14, "visits":I
    if-lez v3, :cond_4

    .line 791
    const/4 v15, 0x2

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 797
    :cond_4
    if-nez v3, :cond_7

    .line 798
    const-string/jumbo v15, "visits"

    add-int/lit8 v16, v14, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    :goto_2
    const-string v15, "MiscPolicy"

    const-string v16, "addBookmarkToAndroidBrowser() - Inserting bookmark into database"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 804
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_8

    .line 805
    const-string v15, "MiscPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addBookmarkToAndroidBrowser() - uri: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    const/4 v10, 0x1

    .line 815
    :goto_3
    if-eqz v6, :cond_5

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 817
    .end local v3    # "count":I
    .end local v9    # "i":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "visits":I
    :cond_5
    :goto_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v10

    .line 820
    goto/16 :goto_0

    .line 763
    .restart local v3    # "count":I
    .restart local v9    # "i":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 800
    .restart local v14    # "visits":I
    :cond_7
    :try_start_2
    const-string/jumbo v15, "visits"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 810
    .end local v3    # "count":I
    .end local v9    # "i":I
    .end local v14    # "visits":I
    :catch_0
    move-exception v8

    .line 811
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v15, "MiscPolicy"

    const-string v16, "Android provider error - unknown uri"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 815
    if-eqz v6, :cond_5

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 808
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "count":I
    .restart local v9    # "i":I
    .restart local v13    # "uri":Landroid/net/Uri;
    .restart local v14    # "visits":I
    :cond_8
    :try_start_4
    const-string v15, "MiscPolicy"

    const-string v16, "addBookmarkToAndroidBrowser() - uri is null!"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 812
    .end local v3    # "count":I
    .end local v9    # "i":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "visits":I
    :catch_1
    move-exception v8

    .line 813
    .local v8, "ex":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v15, "MiscPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Android provider error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 815
    if-eqz v6, :cond_5

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 815
    .end local v8    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v15

    if-eqz v6, :cond_9

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_9
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    throw v15
.end method

.method private addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 722
    const/4 v2, 0x0

    .line 723
    .local v2, "result":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 725
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 727
    .local v3, "token":J
    :try_start_0
    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string/jumbo v6, "url"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v6, "bookmark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    sget-object v6, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 731
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 732
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBookmarkToChrome() - uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    const/4 v2, 0x1

    .line 740
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    return v2

    .line 735
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :try_start_1
    const-string v6, "MiscPolicy"

    const-string v7, "addBookmarkToChrome() - uri is null!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 737
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 738
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v6, "MiscPolicy"

    const-string v7, "Chrome provider error - unknown uri"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 740
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "result":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 700
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 702
    .local v3, "token":J
    :try_start_0
    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string/jumbo v6, "url"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v6, "editable"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    sget-object v6, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 706
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 707
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBookmarkToSBrowser() - uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    const/4 v2, 0x1

    .line 715
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    return v2

    .line 710
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :try_start_1
    const-string v6, "MiscPolicy"

    const-string v7, "addBookmarkToSBrowser() - uri is null!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 712
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 713
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v6, "MiscPolicy"

    const-string v7, "Sbrowser provider error - unknown uri"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 715
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 651
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 854
    if-nez p0, :cond_0

    .line 855
    const/4 v1, 0x0

    .line 860
    :goto_0
    return-object v1

    .line 858
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 859
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 860
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndWriteSettingsPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private floatToIndex(F)I
    .locals 7
    .param p1, "val"    # F

    .prologue
    .line 1769
    const/4 v2, -0x1

    .line 1770
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1771
    .local v3, "thisVal":F
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1773
    .local v1, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1774
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v3, v4, v0

    .line 1775
    sub-float v4, v3, v1

    const/high16 v5, 0x3f000000

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 1776
    add-int/lit8 v4, v0, -0x1

    .line 1782
    :goto_1
    return v4

    .line 1778
    :cond_0
    move v1, v3

    .line 1773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1780
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 1781
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 1782
    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 992
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 664
    const/4 v7, 0x0

    .line 665
    .local v7, "secure":Z
    move-object v6, p1

    .line 666
    .local v6, "compareString":Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 672
    :cond_0
    :goto_0
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 675
    :cond_1
    const/4 v8, 0x0

    .line 676
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    .line 677
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
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

    .line 679
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 680
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

    .line 692
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 668
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_2
    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 670
    const/4 v7, 0x1

    goto :goto_0

    .line 682
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 684
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 686
    .local v9, "wwwString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 687
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 688
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

    .line 689
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 690
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

    goto :goto_1
.end method

.method private isAdminLockScreenStringSet(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    .line 1044
    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "lockscreenstring"

    aput-object v5, v0, v4

    .line 1048
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    invoke-virtual {v4, v5, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1051
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1052
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "lockscreenstring"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1053
    const-string v4, "adminUid"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1058
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    return v4

    .line 1057
    :catch_0
    move-exception v4

    .line 1058
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private isRingToneEntryExist(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aRingToneAbsolutePath"    # Ljava/lang/String;
    .param p3, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 319
    const-wide/16 v8, -0x1

    .line 321
    .local v8, "lRingToneEntryId":J
    const/4 v7, 0x0

    .line 323
    .local v7, "lCursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 325
    .local v10, "token":J
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "lWhereClause":Ljava/lang/String;
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 332
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 333
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 334
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 340
    :cond_0
    if-eqz v7, :cond_1

    .line 341
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    const/4 v7, 0x0

    .line 344
    .end local v3    # "lWhereClause":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-wide v8

    .line 337
    :catch_0
    move-exception v6

    .line 338
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    if-eqz v7, :cond_1

    .line 341
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    const/4 v7, 0x0

    goto :goto_0

    .line 340
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 341
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    const/4 v7, 0x0

    .line 344
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    throw v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 354
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 356
    .local v0, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 359
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    if-eqz v5, :cond_4

    .line 361
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 362
    .local v6, "length":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 363
    new-instance v10, Ljava/io/IOException;

    const-string v11, "The file is too big"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    .end local v6    # "length":J
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 382
    .end local v3    # "file":Ljava/io/File;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 387
    if-eqz v4, :cond_0

    .line 388
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 389
    const/4 v4, 0x0

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readFile returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-object v0

    .line 367
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "length":J
    :cond_1
    long-to-int v10, v6

    :try_start_5
    new-array v0, v10, [B

    .line 369
    const/4 v9, 0x0

    .line 370
    .local v9, "offset":I
    const/4 v8, 0x0

    .line 372
    .local v8, "numRead":I
    :goto_2
    array-length v10, v0

    if-ge v9, v10, :cond_2

    array-length v10, v0

    sub-int/2addr v10, v9

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_2

    .line 373
    add-int/2addr v9, v8

    goto :goto_2

    .line 376
    :cond_2
    array-length v10, v0

    if-ge v9, v10, :cond_4

    .line 377
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The file was not completely read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 386
    .end local v6    # "length":J
    .end local v8    # "numRead":I
    .end local v9    # "offset":I
    :catchall_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 387
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :goto_3
    if-eqz v4, :cond_3

    .line 388
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 389
    const/4 v4, 0x0

    .line 386
    :cond_3
    :goto_4
    throw v10

    .line 387
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_4
    if-eqz v5, :cond_5

    .line 388
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 389
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :goto_5
    move-object v2, v3

    .line 394
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1

    .line 391
    :catch_1
    move-exception v1

    .line 392
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 391
    :catch_2
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 392
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 386
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v10

    goto :goto_3

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_3

    .line 381
    :catch_4
    move-exception v1

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method private removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 912
    const/4 v9, 0x0

    .line 913
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 914
    .local v14, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 916
    .local v15, "token":J
    :try_start_0
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "url = ? AND title = ?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object p3, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 921
    if-nez v9, :cond_1

    .line 922
    const-string v3, "MiscPolicy"

    const-string v4, "removeBookmarkFromAndroidBrowser() - No provider found!!!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    const/4 v3, 0x0

    .line 956
    if-eqz v9, :cond_0

    .line 957
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_0
    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 961
    :goto_1
    return v3

    .line 925
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    .line 927
    .local v12, "first":Z
    if-nez v12, :cond_2

    .line 928
    const-string v3, "MiscPolicy"

    const-string v4, "removeBookmarkFromAndroidBrowser() - Empty cursor!!!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    const/4 v3, 0x0

    .line 956
    if-eqz v9, :cond_0

    .line 957
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 932
    :cond_2
    :try_start_2
    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 934
    .local v17, "uri":Landroid/net/Uri;
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 935
    .local v13, "numVisits":I
    if-nez v13, :cond_4

    if-eqz v17, :cond_4

    .line 936
    const-string v3, "MiscPolicy"

    const-string v4, "removeBookmarkFromAndroidBrowser() - Deleting bookmark"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 950
    :goto_2
    const/4 v14, 0x1

    .line 956
    if-eqz v9, :cond_3

    .line 957
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 958
    .end local v12    # "first":Z
    .end local v13    # "numVisits":I
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_3
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v14

    .line 961
    goto :goto_1

    .line 941
    .restart local v12    # "first":Z
    .restart local v13    # "numVisits":I
    .restart local v17    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_3
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 942
    .local v18, "values":Landroid/content/ContentValues;
    const-string v3, "bookmark"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 944
    :try_start_4
    const-string v3, "MiscPolicy"

    const-string v4, "removeBookmarkFromAndroidBrowser() - Updating database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 946
    :catch_0
    move-exception v10

    .line 947
    .local v10, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v3, "removeFromBookmarks"

    const-string v4, "no database!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 951
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    .end local v12    # "first":Z
    .end local v13    # "numVisits":I
    .end local v17    # "uri":Landroid/net/Uri;
    .end local v18    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 952
    .local v11, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v3, "MiscPolicy"

    const-string v4, "Android provider error - unknown uri"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 956
    if-eqz v9, :cond_3

    .line 957
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 953
    .end local v11    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v11

    .line 954
    .local v11, "ex":Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android provider error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 956
    if-eqz v9, :cond_3

    .line 957
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 956
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_5

    .line 957
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    throw v3
.end method

.method private removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 882
    const/4 v1, 0x0

    .line 883
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 885
    .local v3, "token":J
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v8, "url = ? AND title = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 888
    .local v2, "rows":I
    const-string v7, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeBookmarkFromChrome() - rows: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    if-nez v2, :cond_0

    .line 897
    sget-object v7, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v8, "url = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 901
    :cond_0
    if-lez v2, :cond_1

    move v1, v5

    .line 905
    .end local v2    # "rows":I
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    return v1

    .restart local v2    # "rows":I
    :cond_1
    move v1, v6

    .line 901
    goto :goto_0

    .line 902
    .end local v2    # "rows":I
    :catch_0
    move-exception v0

    .line 903
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Chrome provider error - unknown uri"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 905
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 864
    const/4 v1, 0x0

    .line 865
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 867
    .local v3, "token":J
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v8, "url = ? AND title = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 870
    .local v2, "rows":I
    const-string v7, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeBookmarkFromSBrowser() - rows: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    if-lez v2, :cond_0

    move v1, v5

    .line 875
    .end local v2    # "rows":I
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 878
    return v1

    .restart local v2    # "rows":I
    :cond_0
    move v1, v6

    .line 871
    goto :goto_0

    .line 872
    .end local v2    # "rows":I
    :catch_0
    move-exception v0

    .line 873
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Sbrowser provider error - unknown uri"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 875
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private removeFromBookmarks(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 969
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 970
    .local v4, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android"

    invoke-static {v7, v8, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 972
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 973
    const-string v6, "MiscPolicy"

    const-string v7, "removeFromBookmarks() - Could not create context for current user!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_0
    :goto_0
    return v5

    .line 977
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 978
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 979
    .local v0, "bookmarkRemovedFromChrome":Z
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 981
    .local v1, "bookmarkRemovedFromSBrowser":Z
    if-nez v1, :cond_3

    .line 984
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v6

    .line 987
    goto :goto_0
.end method

.method private retrieveSystemFontSizes()V
    .locals 9

    .prologue
    .line 1786
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v6, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1790
    :cond_1
    const/4 v5, 0x0

    .line 1791
    .local v5, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v7, "com.android.settings"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1792
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 1793
    const-string v6, "MiscPolicy"

    const-string v7, "retrieveSystemFontSizes(): Setting Context is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1813
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1814
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MiscPolicy"

    const-string v7, "retrieveSystemFontSizes() fail: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1796
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1797
    const/4 v4, 0x0

    .line 1799
    .local v4, "resId":I
    const-string v6, "entryvalues_7_step_font_size"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1803
    if-nez v4, :cond_3

    .line 1804
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveSystemFontSizes() resourceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    :cond_3
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1809
    .local v2, "fontSizeNames":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 1810
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 1811
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1810
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateDatabase(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ringtonefilePath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v7, "ringtoneFile":Ljava/io/File;
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 273
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 275
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 277
    .local v8, "token":J
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11, v10}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v5

    .line 278
    .local v5, "lRingToneId":J
    const-string v11, "MiscPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ringtone id :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-wide/16 v11, -0x1

    cmp-long v11, v11, v5

    if-eqz v11, :cond_0

    .line 281
    const-string v11, "MiscPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ringtone entry exist deleting it :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v11, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    :cond_0
    const-string v11, "MiscPolicy"

    const-string v12, "Ringtone creating new one"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v1, "content":Landroid/content/ContentValues;
    const-string v11, "_data"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v11, "title"

    const-string v12, "IT Admin tone"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v11, "_size"

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v11, "mime_type"

    const-string v12, "audio/*"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v11, "artist"

    const-string v12, "artist"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v11, "is_ringtone"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 294
    const-string v11, "is_notification"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 295
    const-string v11, "is_alarm"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    const-string v11, "is_music"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 299
    iget-object v11, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v10, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 304
    .end local v1    # "content":Landroid/content/ContentValues;
    .end local v5    # "lRingToneId":J
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    if-eqz v10, :cond_1

    .line 308
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 309
    .local v3, "ident":J
    iget-object v11, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12, v10}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 311
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    .end local v3    # "ident":J
    :cond_1
    return-void

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method


# virtual methods
.method public addClipboardData(Landroid/content/ClipData;)Z
    .locals 1
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 1551
    const/4 v0, 0x1

    return v0
.end method

.method public addClipboardTextData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "clip"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1627
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1629
    const/4 v4, 0x0

    .line 1630
    .local v4, "sService":Landroid/content/IClipboard;
    const/4 v5, 0x0

    .line 1631
    .local v5, "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    :try_start_0
    const-string/jumbo v10, "simple text"

    invoke-static {v10, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 1633
    .local v3, "mClip":Landroid/content/ClipData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1634
    .local v6, "token":J
    const-string v10, "clipboard"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1635
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v4

    .line 1636
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v3, v10}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1638
    const-string v10, "clipboardEx"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1639
    .local v1, "bEx":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    .line 1640
    new-instance v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 1642
    .local v8, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    .line 1643
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 1644
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetFomat()I

    move-result v10

    invoke-interface {v5, v10, v8}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1649
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1650
    const/4 v9, 0x1

    .line 1655
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "bEx":Landroid/os/IBinder;
    .end local v3    # "mClip":Landroid/content/ClipData;
    .end local v6    # "token":J
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :goto_1
    return v9

    .line 1646
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "bEx":Landroid/os/IBinder;
    .restart local v3    # "mClip":Landroid/content/ClipData;
    .restart local v6    # "token":J
    .restart local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_0
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", txt :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1653
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "bEx":Landroid/os/IBinder;
    .end local v3    # "mClip":Landroid/content/ClipData;
    .end local v6    # "token":J
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_0
    move-exception v2

    .line 1654
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addClipboardData Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addWebBookmarkBitmap(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 634
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 635
    :cond_0
    const/4 v0, 0x0

    .line 637
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public addWebBookmarkByteBuffer(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconBuffer"    # [B

    .prologue
    const/4 v1, 0x0

    .line 616
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_0

    array-length v2, p4

    if-lez v2, :cond_0

    .line 619
    array-length v2, p4

    invoke-static {p4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 625
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_0
.end method

.method public allowNFCStateChange(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1821
    const-string v1, "MiscPolicy"

    const-string v2, "allowNFCStateChange() Begin"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    .line 1824
    .local v0, "contextInfo":Landroid/app/enterprise/ContextInfo;
    const-string v1, "MiscPolicy"

    const-string v2, "allowNFCStateChange() End"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "MISC"

    const-string v4, "nfcStateChangeAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public changeLockScreenString(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "statement"    # Ljava/lang/String;

    .prologue
    .line 1069
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1070
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 1071
    .local v9, "userId":I
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10, v11, v12, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 1073
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 1074
    const-string v10, "MiscPolicy"

    const-string v11, "Could not create context for current user!"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const/4 v5, 0x0

    .line 1146
    :goto_0
    return v5

    .line 1078
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1079
    .local v7, "token":J
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1080
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v3

    .line 1082
    .local v3, "currentSetAdminId":I
    const/4 v5, 0x0

    .line 1083
    .local v5, "ret":Z
    const/4 v6, 0x0

    .line 1085
    .local v6, "revoked":Z
    const/4 v10, -0x1

    if-eq v3, v10, :cond_1

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v3, v10, :cond_1

    .line 1086
    const-string v10, "MiscPolicy"

    const-string v11, "changeLockScreenString():get AdminId failed!! "

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v5, 0x0

    goto :goto_0

    .line 1092
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    if-gez v10, :cond_3

    .line 1093
    :cond_2
    const/4 v6, 0x1

    .line 1094
    const-string p2, ""

    .line 1098
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x100

    if-le v10, v11, :cond_4

    .line 1099
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/16 v12, 0x100

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1100
    const-string v10, "MiscPolicy"

    const-string v11, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_4
    if-nez v6, :cond_6

    .line 1106
    const-string v10, "MiscPolicy"

    const-string v11, "changeLockScreenString(): apply restriction"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v12, "MISC"

    const-string v13, "lockscreenstring"

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1111
    if-eqz v5, :cond_5

    .line 1112
    const-string v10, "MiscPolicy"

    const-string v11, "changeLockScreenString(): ret is true set value"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v10

    const-string v11, "lock_screen_owner_info_enabled"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12, v9}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 1118
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v10

    const-string v11, "lock_screen_owner_info"

    move-object/from16 v0, p2

    invoke-interface {v10, v11, v0, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_1
    const-string v10, "my_profile_enabled"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1142
    :cond_5
    :goto_2
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeLockScreenString():ret:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1119
    :catch_0
    move-exception v4

    .line 1120
    .local v4, "re":Landroid/os/RemoteException;
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t write string "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1129
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_6
    const-string v10, "MiscPolicy"

    const-string v11, "changeLockScreenString(): revoke restriction"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v12, "MISC"

    const-string v13, "lockscreenstring"

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1136
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v10

    const-string v11, "lock_screen_owner_info"

    move-object/from16 v0, p2

    invoke-interface {v10, v11, v0, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1137
    :catch_1
    move-exception v4

    .line 1138
    .restart local v4    # "re":Landroid/os/RemoteException;
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t write string "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public clearClipboardData(Landroid/app/enterprise/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1559
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1561
    :try_start_0
    const-string v8, "MiscPolicy"

    const-string v9, "clearClipboard"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v8, "clipboardEx"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1563
    .local v1, "bEx":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    .line 1564
    .local v5, "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    new-instance v8, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    invoke-interface {v5, v8}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 1566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1567
    .local v6, "token":J
    const-string/jumbo v8, "simple text"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 1568
    .local v3, "mClip":Landroid/content/ClipData;
    const-string v8, "clipboard"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1569
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v4

    .line 1570
    .local v4, "sService":Landroid/content/IClipboard;
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v3, v8}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1571
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    const/4 v8, 0x1

    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "bEx":Landroid/os/IBinder;
    .end local v3    # "mClip":Landroid/content/ClipData;
    .end local v4    # "sService":Landroid/content/IClipboard;
    .end local v5    # "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    .end local v6    # "token":J
    :goto_0
    return v8

    .line 1572
    :catch_0
    move-exception v2

    .line 1573
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1574
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public deleteWebBookmark(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 644
    if-nez p2, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeFromBookmarks(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getClipboardData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipboardTextData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1661
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1662
    const/4 v3, 0x0

    .line 1664
    .local v3, "returnText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1665
    .local v4, "sService":Landroid/content/IClipboard;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1666
    .local v5, "token":J
    const-string v7, "clipboard"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1667
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v4

    .line 1668
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 1669
    .local v1, "clipItem":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1670
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "clipItem":Landroid/content/ClipData$Item;
    .end local v5    # "token":J
    :goto_0
    return-object v3

    .line 1672
    :catch_0
    move-exception v2

    .line 1673
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getClipboardTextData Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentLockScreenString(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 1008
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1010
    :cond_0
    const/4 v1, 0x0

    .line 1012
    .local v1, "lScreenTxt":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1013
    .local v5, "userId":I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v0

    .line 1014
    .local v0, "currentSetAdminId":I
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentLockScreenString : currentSetAdminId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 1022
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1024
    .local v3, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v5}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1028
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1031
    .end local v3    # "token":J
    :cond_1
    return-object v1

    .line 1025
    .restart local v3    # "token":J
    :catch_0
    move-exception v2

    .line 1026
    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t get string lock_screen_owner_info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastSimChangeInfo(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/SimChangeInfo;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 408
    :try_start_0
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    .line 409
    .local v1, "sci":Landroid/app/enterprise/SimChangeInfo;
    const-string v3, "SimChangeTime"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "tmp":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 412
    const-string v2, "-1"

    .line 413
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    .line 414
    new-instance v3, Landroid/app/enterprise/SimInfo;

    invoke-direct {v3}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    .line 415
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimCountryIso"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 418
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimOperatorName"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 421
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimOperator"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 423
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimPhoneNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 426
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimSerialNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;

    .line 430
    const-string v3, "SimChangeOperation"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    if-nez v2, :cond_1

    .line 433
    const-string v2, "-1"

    .line 434
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    .line 437
    new-instance v3, Landroid/app/enterprise/SimInfo;

    invoke-direct {v3}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    .line 438
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimCountryIso"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 441
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimOperatorName"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 444
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimOperator"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 446
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimPhoneNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 449
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimSerialNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1    # "sci":Landroid/app/enterprise/SimChangeInfo;
    .end local v2    # "tmp":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    goto :goto_0
.end method

.method public getSystemActiveFont(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemActiveFontSize(Landroid/app/enterprise/ContextInfo;)F
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1739
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1740
    .local v0, "curConfig":Landroid/content/res/Configuration;
    const/4 v4, 0x0

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1743
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1744
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1745
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v3

    .line 1746
    .local v3, "index":I
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1748
    .local v2, "fontIndex":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 1749
    const/4 v3, 0x4

    .line 1750
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v4, v4, v3

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1752
    :cond_0
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemActiveFontSize(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    .end local v2    # "fontIndex":I
    .end local v3    # "index":I
    :goto_0
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    return v4

    .line 1753
    :catch_0
    move-exception v1

    .line 1754
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MiscPolicy"

    const-string v5, "getSystemActiveFontSize(): Unable to read font size"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSystemFontSizes(Landroid/app/enterprise/ContextInfo;)[F
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1765
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    return-object v0
.end method

.method public getSystemFonts(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNFCStarted()Z
    .locals 7

    .prologue
    .line 1870
    const-string v5, "MiscPolicy"

    const-string v6, "isNFCStarted - Begin"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const/4 v4, 0x0

    .line 1872
    .local v4, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1874
    .local v1, "ident":J
    :try_start_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1875
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1876
    const/4 v4, 0x1

    .line 1883
    .end local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1885
    return v4

    .line 1878
    .restart local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1880
    .end local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Error on isNFCStarted"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1883
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isNFCStateChangeAllowed()Z
    .locals 7

    .prologue
    .line 1830
    const-string v4, "MiscPolicy"

    const-string v5, "isNFCStateChangeAllowed() Begin"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const/4 v1, 0x1

    .line 1832
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "nfcStateChangeAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1834
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1835
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 1836
    move v1, v2

    .line 1837
    const-string v4, "MiscPolicy"

    const-string v5, "NFC State Changed is not Allowed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    .end local v2    # "value":Z
    :cond_1
    const-string v4, "MiscPolicy"

    const-string v5, "isNFCStateChangeAllowed() - END"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1523
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1528
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1538
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1541
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lock_screen_owner_info"

    const-string v3, ""

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "MiscPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRingerBytes(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "buffer"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndWriteSettingsPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 235
    const/4 v2, 0x0

    .line 238
    .local v2, "outStream":Ljava/io/OutputStream;
    if-eqz p2, :cond_0

    :try_start_0
    array-length v5, p2

    if-lez v5, :cond_0

    if-nez p3, :cond_2

    .line 239
    :cond_0
    const-string v5, "MiscPolicy"

    const-string/jumbo v6, "setRingerBytes: Invalid parameter(s)"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz v2, :cond_1

    .line 261
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    :try_start_2
    const-string v4, "/data/system/custom.ogg"

    .line 245
    .local v4, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 250
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .local v3, "outStream":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 252
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->updateDatabase(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    if-eqz v3, :cond_4

    .line 261
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_1
    move-object v2, v3

    .line 267
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 256
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    if-eqz v2, :cond_1

    .line 261
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 263
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 260
    :goto_4
    if-eqz v2, :cond_5

    .line 261
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 259
    :cond_5
    :goto_5
    throw v5

    .line 263
    :catch_2
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRingerBytes EX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 256
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public setRingerFilePath(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aRingtonefilePath"    # Ljava/lang/String;
    .param p3, "aMmimeType"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 212
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 213
    :cond_0
    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "setRingerFilePath param null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 219
    .local v0, "lRingToneData":[B
    if-eqz v0, :cond_2

    .line 220
    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "setRingerFilePath file read successfully: "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->setRingerBytes(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;)V

    .line 226
    :goto_1
    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "setRingerFilePath : ringtone return "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "setRingerFilePath file reading failed "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSystemActiveFont(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1165
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1166
    if-eqz p3, :cond_0

    .line 1168
    const/4 v0, 0x0

    .line 1170
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setSystemActiveFontSize(Landroid/app/enterprise/ContextInfo;F)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fontSize"    # F

    .prologue
    const/4 v9, 0x0

    .line 1684
    const/4 v6, 0x1

    .line 1686
    .local v6, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1687
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1689
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-nez v10, :cond_0

    .line 1732
    :goto_0
    return v9

    .line 1692
    :cond_0
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1693
    .local v1, "currIndex":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v5

    .line 1694
    .local v5, "newIndex":I
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v10, v10

    add-int/lit8 v4, v10, -0x1

    .line 1696
    .local v4, "indexLength":I
    if-ne v1, v5, :cond_1

    .line 1697
    const-string v9, "MiscPolicy"

    const-string/jumbo v10, "setSystemActiveFontSize(): same font size"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v6

    .line 1698
    goto :goto_0

    .line 1703
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1706
    .local v7, "token":J
    if-ge v1, v4, :cond_3

    if-ne v5, v4, :cond_3

    .line 1707
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1708
    .local v3, "i":Landroid/content/Intent;
    const-string v9, "large_font"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1709
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1715
    .end local v3    # "i":Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1719
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1720
    .local v0, "curConfig":Landroid/content/res/Configuration;
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v9, v9, v5

    iput v9, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1723
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1724
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1725
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1726
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v9, v6

    .line 1732
    goto :goto_0

    .line 1710
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    :cond_3
    if-ne v1, v4, :cond_2

    if-ge v5, v4, :cond_2

    .line 1711
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1712
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v10, "large_font"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1713
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1727
    .end local v3    # "i":Landroid/content/Intent;
    .restart local v0    # "curConfig":Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 1728
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "MiscPolicy"

    const-string/jumbo v10, "setSystemActiveFontSize(): Unable to set font size"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public startNFC(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "start"    # Z

    .prologue
    .line 1846
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1847
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startNFC - Begin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const/4 v4, 0x0

    .line 1850
    .local v4, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1852
    .local v1, "ident":J
    :try_start_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1853
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz p2, :cond_0

    .line 1854
    const-string v5, "MiscPolicy"

    const-string v6, "Enable"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1863
    .end local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1865
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startNFC - End "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return v4

    .line 1857
    .restart local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_0
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Enable"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 1860
    .end local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v0

    .line 1861
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MiscPolicy"

    const-string v6, "Error on Start/Stop NFC"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1863
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1534
    return-void
.end method
