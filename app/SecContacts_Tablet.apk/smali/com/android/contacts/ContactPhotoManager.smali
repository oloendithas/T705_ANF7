.class public abstract Lcom/android/contacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManager$1;,
        Lcom/android/contacts/ContactPhotoManager$AvatarDefaultFavoriteImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$AvatarNamecardDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field public static final DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_CALLLOG_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_FAVORITE_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGES:[I

.field private static final DEFAULT_IMAGES_CALLLOG_DETAIL:[I

.field private static final DEFAULT_IMAGES_FOR_FAVORITE:[I

.field private static final DEFAULT_IMAGES_FOR_SHORTCUT:[I

.field private static final DEFAULT_IMAGES_HIGH_RESOLUTION:[I

.field public static final DEFAULT_TRANSPARENT:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"

.field private static s180DipInPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 79
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_CALLLOG_DETAIL:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_SHORTCUT:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_FAVORITE:[I

    .line 259
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 261
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 263
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_CALLLOG_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 265
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarNamecardDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$AvatarNamecardDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_TRANSPARENT:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 268
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultFavoriteImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultFavoriteImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_FAVORITE_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    return-void

    .line 84
    :array_0
    .array-data 4
        0x7f0203ab
        0x7f0203a7
        0x7f0203a8
        0x7f0203a9
        0x7f0203aa
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x7f0203b7
        0x7f0203b3
        0x7f0203b4
        0x7f0203b5
        0x7f0203b6
    .end array-data

    .line 101
    :array_2
    .array-data 4
        0x7f0203ad
        0x7f0203ae
        0x7f0203af
        0x7f0203b0
        0x7f0203b1
    .end array-data

    .line 110
    :array_3
    .array-data 4
        0x7f0203fe
        0x7f0203fa
        0x7f0203fb
        0x7f0203fc
        0x7f0203fd
    .end array-data

    .line 119
    :array_4
    .array-data 4
        0x7f0205fb
        0x7f0205fc
        0x7f0205fd
        0x7f0205fe
        0x7f0205ff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    const-class v1, Lcom/android/contacts/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZ)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extent"    # I
    .param p2, "darkTheme"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 134
    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-ne v2, v4, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    .local v1, "r":Landroid/content/res/Resources;
    const/high16 v2, 0x43340000

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 140
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    if-eq p1, v4, :cond_1

    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-le p1, v2, :cond_1

    .line 141
    .local v0, "hires":Z
    :goto_0
    const-wide/16 v2, -0x1

    invoke-static {v0, p2, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v2

    return v2

    .line 140
    .end local v0    # "hires":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZJ)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extent"    # I
    .param p2, "darkTheme"    # Z
    .param p3, "contactId"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 148
    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-ne v2, v4, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    .local v1, "r":Landroid/content/res/Resources;
    const/high16 v2, 0x43340000

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 154
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    if-eq p1, v4, :cond_1

    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-gt p1, v2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    .line 155
    .local v0, "hires":Z
    :cond_2
    :goto_0
    invoke-static {v0, p2, p3, p4}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v2

    return v2

    .line 154
    .end local v0    # "hires":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAvatarResId(ZZJ)I
    .locals 3
    .param p0, "hires"    # Z
    .param p1, "darkTheme"    # Z
    .param p2, "contactId"    # J

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 161
    const-wide/16 p2, 0x0

    .line 164
    :cond_0
    if-eqz p0, :cond_1

    .line 165
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    .line 168
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getDefaultCallDetailAvatarResId(ZZJ)I
    .locals 3
    .param p0, "hires"    # Z
    .param p1, "darkTheme"    # Z
    .param p2, "contactId"    # J

    .prologue
    .line 173
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 174
    const-wide/16 p2, 0x0

    .line 177
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_CALLLOG_DETAIL:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_CALLLOG_DETAIL:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public static getDefaultFavoriteAvatarResId(Landroid/content/Context;IZJ)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extent"    # I
    .param p2, "darkTheme"    # Z
    .param p3, "contactId"    # J

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 192
    const-wide/16 p3, 0x0

    .line 195
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_FAVORITE:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_FAVORITE:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p3, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public static getDefaultShortCutResId(ZZJ)I
    .locals 3
    .param p0, "hires"    # Z
    .param p1, "darkTheme"    # Z
    .param p2, "contactId"    # J

    .prologue
    .line 182
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 183
    const-wide/16 p2, 0x0

    .line 186
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_SHORTCUT:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_SHORTCUT:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    .local v0, "applicationContext":Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManager;

    .line 278
    .local v1, "service":Lcom/android/contacts/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 279
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    .line 280
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public final loadCallLogDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "hires"    # Z
    .param p4, "darkTheme"    # Z
    .param p5, "contactId"    # J

    .prologue
    .line 355
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_CALLLOG_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 356
    return-void
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "darkTheme"    # Z

    .prologue
    .line 350
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 351
    return-void
.end method

.method public final loadNamecardDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "darkTheme"    # Z

    .prologue
    .line 359
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_TRANSPARENT:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 360
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "contactId"    # J

    .prologue
    .line 332
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 333
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJZ)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "contactId"    # J
    .param p7, "isFavoriteImage"    # Z

    .prologue
    .line 338
    if-eqz p7, :cond_0

    .line 339
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_FAVORITE_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    goto :goto_0
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZJ)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "contactId"    # J

    .prologue
    .line 304
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 305
    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 402
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 412
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method
