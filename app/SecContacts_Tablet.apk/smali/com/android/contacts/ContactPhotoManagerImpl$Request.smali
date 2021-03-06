.class final Lcom/android/contacts/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mDefaultProvider:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field private final mId:J

.field private final mRequestedExtent:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "requestedExtent"    # I
    .param p5, "darkTheme"    # Z
    .param p6, "defaultProvider"    # Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput-wide p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    .line 1322
    iput-object p3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 1323
    iput-boolean p5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    .line 1324
    iput p4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    .line 1325
    iput-object p6, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 1326
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .prologue
    .line 1312
    iget-wide v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public static createFromThumbnailId(JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .locals 7
    .param p0, "id"    # J
    .param p2, "darkTheme"    # Z
    .param p3, "defaultProvider"    # Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 1330
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-wide v1, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    return-object v0
.end method

.method public static createFromUri(Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "requestedExtent"    # I
    .param p2, "darkTheme"    # Z
    .param p3, "defaultProvider"    # Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 1335
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    const-wide/16 v1, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    return-object v0
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    iget v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget-boolean v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZJ)V

    .line 1386
    return-void
.end method

.method public applyDefaultImage(Landroid/widget/ImageView;J)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "contactId"    # J

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    iget v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget-boolean v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZJ)V

    .line 1391
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1366
    if-ne p0, p1, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return v1

    .line 1367
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 1368
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1369
    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 1370
    .local v0, "that":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    iget-wide v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v5, v0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1371
    :cond_4
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget v4, v0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 1372
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1347
    iget-wide v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getRequestedExtent()I
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1356
    const/16 v0, 0x1f

    .line 1357
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1358
    .local v1, "result":I
    iget-wide v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 1359
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    add-int v1, v2, v3

    .line 1360
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 1361
    return v1

    .line 1360
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isUriRequest()Z
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
