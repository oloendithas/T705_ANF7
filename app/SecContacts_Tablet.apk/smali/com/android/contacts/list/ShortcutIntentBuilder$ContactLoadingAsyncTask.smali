.class final Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;
.super Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLoadingAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    .line 210
    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 214
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$200()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 218
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$300(Lcom/android/contacts/list/ShortcutIntentBuilder;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 220
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    .line 224
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    .line 225
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mContactId:J

    .line 226
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mIsPrivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_1
    return-void

    .line 222
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    move v1, v8

    .line 226
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 207
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mBitmapData:[B

    iget-wide v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mContactId:J

    iget-object v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoUri:Landroid/net/Uri;

    iget-boolean v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mIsPrivate:Z

    # invokes: Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BJLandroid/net/Uri;Z)V
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$400(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BJLandroid/net/Uri;Z)V

    .line 236
    return-void
.end method
