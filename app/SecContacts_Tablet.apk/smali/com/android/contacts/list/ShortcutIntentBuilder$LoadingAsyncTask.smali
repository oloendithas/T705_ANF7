.class abstract Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;
.super Landroid/os/AsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LoadingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBitmapData:[B

.field protected mContactId:J

.field protected mDisplayName:Ljava/lang/String;

.field protected mIsPrivate:Z

.field protected mPhotoId:J

.field protected mPhotoUri:Landroid/net/Uri;

.field protected mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 1
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mIsPrivate:Z

    .line 174
    iput-object p2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    .line 175
    return-void
.end method

.method private loadPhoto()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 187
    iget-wide v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 196
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mBitmapData:[B

    .line 198
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->loadData()V

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;->loadPhoto()V

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract loadData()V
.end method