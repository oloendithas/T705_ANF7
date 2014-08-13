.class final Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;
.super Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberLoadingAsyncTask"
.end annotation


# instance fields
.field private dataId:Ljava/lang/String;

.field private mPhoneLabel:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private final mShortcutAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    .line 248
    iput-object p3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    .line 249
    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 253
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$500()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 257
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$300(Lcom/android/contacts/list/ShortcutIntentBuilder;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 259
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    .line 263
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    .line 264
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    .line 265
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I

    .line 266
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneLabel:Ljava/lang/String;

    .line 267
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mContactId:J

    .line 268
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->dataId:Ljava/lang/String;

    .line 269
    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mIsPrivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_1
    return-void

    .line 261
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    move v1, v8

    .line 269
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mBitmapData:[B

    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    iget v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I

    iget-object v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneLabel:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mContactId:J

    iget-object v10, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->dataId:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mIsPrivate:Z

    # invokes: Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v12}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$600(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Z)V

    .line 281
    return-void
.end method
