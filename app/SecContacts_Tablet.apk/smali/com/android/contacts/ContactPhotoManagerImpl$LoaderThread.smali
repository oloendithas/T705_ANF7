.class Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final MAX_PHOTOS_TO_PRELOAD:I = 0x64

.field private static final MESSAGE_LOAD_PHOTOS:I = 0x1

.field private static final MESSAGE_PRELOAD_PHOTOS:I = 0x0

.field private static final PHOTO_PRELOAD_DELAY:I = 0x3e8

.field private static final PRELOAD_BATCH:I = 0x19

.field private static final PRELOAD_STATUS_DONE:I = 0x2

.field private static final PRELOAD_STATUS_IN_PROGRESS:I = 0x1

.field private static final PRELOAD_STATUS_NOT_STARTED:I


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    .line 1040
    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1025
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    .line 1026
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 1027
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 1028
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    .line 1037
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1041
    iput-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 1042
    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 4

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$300(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1182
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    .line 1183
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1184
    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 12
    .param p1, "preloading"    # Z

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1194
    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1196
    .local v10, "id":Ljava/lang/Long;
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1198
    .end local v10    # "id":Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1199
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1203
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1206
    if-eqz v8, :cond_3

    .line 1207
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1205
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1211
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1213
    const/4 v7, 0x0

    .line 1216
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$400()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1222
    if-eqz v7, :cond_6

    .line 1223
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1224
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1225
    .restart local v10    # "id":Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1226
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v6, p1, v1}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1227
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1231
    .end local v6    # "bytes":[B
    .end local v10    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 1232
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1231
    :cond_6
    if-eqz v7, :cond_7

    .line 1232
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1237
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1238
    .restart local v10    # "id":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1239
    const/4 v11, 0x0

    .line 1241
    .local v11, "profileCursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$400()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1244
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1245
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1252
    :goto_5
    if-eqz v11, :cond_8

    .line 1253
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 1249
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v1, p1, v2}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    .line 1252
    :catchall_1
    move-exception v0

    if-eqz v11, :cond_a

    .line 1253
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 1258
    .end local v11    # "profileCursor":Landroid/database/Cursor;
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v1, p1, v2}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_4

    .line 1262
    .end local v10    # "id":Ljava/lang/Long;
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private loadUriBasedPhotos()V
    .locals 12

    .prologue
    .line 1270
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 1271
    .local v7, "uriRequest":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    invoke-virtual {v7}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 1272
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v8, :cond_1

    .line 1273
    const/16 v8, 0x4000

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    .line 1275
    :cond_1
    const/4 v4, 0x0

    .line 1278
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 1279
    if-eqz v4, :cond_3

    .line 1280
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1282
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "size":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 1283
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1292
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "size":I
    :catch_0
    move-exception v2

    .line 1293
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "ContactPhotoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot load photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v11

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v8, v6, v9, v10, v11}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    if-eqz v4, :cond_0

    .line 1298
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1299
    :catch_1
    move-exception v1

    .line 1300
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "ContactPhotoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "size":I
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v11

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v8, v6, v9, v10, v11}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1287
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1296
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "size":I
    :goto_2
    if-eqz v4, :cond_0

    .line 1298
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1299
    :catch_2
    move-exception v1

    .line 1300
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "ContactPhotoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1289
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    const-string v8, "ContactPhotoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot load photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v11

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v8, v6, v9, v10, v11}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1296
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_4

    .line 1298
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1301
    :cond_4
    :goto_3
    throw v8

    .line 1299
    :catch_3
    move-exception v1

    .line 1300
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "ContactPhotoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1305
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "uriRequest":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    :cond_5
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1106
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_2

    .line 1111
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    .line 1112
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1113
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1117
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto :goto_0

    .line 1115
    :cond_1
    iput v6, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_1

    .line 1121
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I
    invoke-static {v4}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1122
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 1126
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1127
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1129
    const/4 v0, 0x0

    .line 1130
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1131
    .local v2, "preloadSize":I
    :goto_2
    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_4

    .line 1132
    add-int/lit8 v2, v2, -0x1

    .line 1133
    add-int/lit8 v0, v0, 0x1

    .line 1134
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1135
    .local v1, "photoId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1136
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1137
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1140
    .end local v1    # "photoId":Ljava/lang/Long;
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1142
    if-nez v2, :cond_5

    .line 1143
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1146
    :cond_5
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " photos.  Cached bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto/16 :goto_0
.end method

.method private queryPhotosForPreload()V
    .locals 7

    .prologue
    .line 1153
    const/4 v6, 0x0

    .line 1155
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1160
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v3

    const-string v3, "photo_id NOT NULL AND photo_id!=0"

    const/4 v4, 0x0

    const-string v5, "starred DESC, last_time_contacted DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1165
    if-eqz v6, :cond_1

    .line 1166
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1173
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 1174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1173
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    if-eqz v6, :cond_2

    .line 1174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1177
    :cond_2
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1048
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1088
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1096
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1090
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    .line 1093
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1078
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1080
    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .prologue
    .line 1058
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1063
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
