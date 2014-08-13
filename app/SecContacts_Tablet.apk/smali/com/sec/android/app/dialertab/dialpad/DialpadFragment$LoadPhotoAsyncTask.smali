.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;
.super Landroid/os/AsyncTask;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPhotoAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private lv:Landroid/view/View;

.field private mListPhoto:Landroid/widget/ImageView;

.field private photoID:J

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/view/View;)V
    .locals 2
    .param p2, "pId"    # J
    .param p4, "mV"    # Landroid/view/View;

    .prologue
    .line 7152
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7153
    iput-wide p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->photoID:J

    .line 7154
    move-object v0, p4

    .line 7155
    .local v0, "lv":Landroid/view/View;
    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->mListPhoto:Landroid/widget/ImageView;

    .line 7156
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 7162
    const/4 v9, 0x0

    .line 7163
    .local v9, "photoCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 7164
    .local v7, "loadBm":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7167
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->photoID:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 7170
    .local v0, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->photoID:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 7175
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7176
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 7177
    .local v10, "photoData":[B
    const/4 v1, 0x0

    array-length v2, v10

    invoke-static {v10, v1, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 7179
    .end local v10    # "photoData":[B
    :cond_0
    if-eqz v9, :cond_1

    .line 7180
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7185
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 7187
    return-object v7

    .line 7182
    :catch_0
    move-exception v6

    .line 7183
    .local v6, "e":Landroid/os/RemoteException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPhoto providerClient has exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 7146
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 7193
    if-eqz p1, :cond_0

    .line 7195
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->mListPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7201
    :goto_0
    return-void

    .line 7198
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->mListPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0203a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7146
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$LoadPhotoAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
