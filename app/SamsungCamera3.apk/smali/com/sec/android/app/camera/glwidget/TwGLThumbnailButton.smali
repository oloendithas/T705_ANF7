.class public Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLThumbnailButton"

.field private static final THUMBNAIL_FRAME_HEIGHT:I

.field private static final THUMBNAIL_FRAME_WIDTH:I

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_POS_X:I

.field private static final THUMBNAIL_IMAGE_POS_Y:I

.field private static final THUMBNAIL_IMAGE_WIDTH:I

.field private static final THUMBNAIL_POS_X:I

.field private static final THUMBNAIL_POS_Y:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButtonLocked:Z

.field private mFrameButton:Lcom/sec/android/glview/TwGLButton;

.field private mIdxNewThumbnail:I

.field private mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

.field private mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

.field private mUpdateCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f09011a

    .line 46
    const v0, 0x7f090111

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_X:I

    .line 47
    const v0, 0x7f090112

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_Y:I

    .line 48
    const v0, 0x7f090113

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    .line 49
    const v0, 0x7f090114

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    .line 50
    const v0, 0x7f090115

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    .line 51
    const v0, 0x7f090116

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    .line 52
    const v0, 0x7f090117

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 53
    const v0, 0x7f090118

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 54
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    .line 55
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFZZ)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "camera"    # Z
    .param p5, "attachMode"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    .line 65
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 66
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    .line 68
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmpty()V

    .line 79
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 83
    return-void
.end method

.method private getSecureUriList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 269
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v8, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 271
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 273
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 281
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    return-object v8
.end method

.method private update(Landroid/graphics/Bitmap;IZ)V
    .locals 12
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "bSetOrientation"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 302
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 303
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 304
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v8, v9

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 332
    :goto_0
    return-void

    .line 309
    :cond_3
    if-ne p3, v10, :cond_4

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setDefaultOrientation(I)V

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 318
    :cond_5
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {v7, v0, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 319
    .local v7, "transNewAnimation":Landroid/view/animation/TranslateAnimation;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 320
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 321
    invoke-virtual {v7, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_6

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 328
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020097

    const v2, 0x7f020096

    invoke-virtual {v0, v1, v11, v2, v11}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 89
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 97
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 101
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 104
    :cond_3
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 105
    return-void
.end method

.method public lockButton(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 110
    return-void
.end method

.method public noImage()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeUptateMessage()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    :cond_0
    return-void
.end method

.method public setRotatableForCoverMode(Z)V
    .locals 1
    .param p1, "rotatable"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    .line 155
    return-void
.end method

.method public update(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 286
    div-int/lit8 v1, p2, 0xa

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v1, 0x5a

    .line 287
    .local v0, "defaultOrientation":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 288
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 291
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "data":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v3, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 293
    return-void
.end method

.method public declared-synchronized update(Z)V
    .locals 14
    .param p1, "bIsSNS"    # Z

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x1

    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    const/4 v10, 0x1

    .line 163
    .local v10, "noThumbnail":Z
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 175
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 177
    const/4 v7, 0x0

    .line 179
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(ZZ)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 190
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v7, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 196
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 197
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v11, v12

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-eq v0, v13, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v8, v0, 0x5a

    .line 201
    .local v8, "defaultOrientation":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setDefaultOrientation(I)V

    .line 243
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "defaultOrientation":I
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 254
    :cond_6
    const/4 v10, 0x0

    .line 255
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 258
    :cond_7
    if-eqz v10, :cond_f

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020098

    const/4 v2, 0x0

    const v3, 0x7f020096

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 264
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 158
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "noThumbnail":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "noThumbnail":Z
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 193
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v7, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 207
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 210
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v7, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 218
    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_4
    if-eqz p1, :cond_a

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    if-eqz v0, :cond_a

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "mimeType":Ljava/lang/String;
    const-string v0, "video/mp4"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 227
    :goto_5
    const-string v0, "TwGLThumbnailButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " share shot path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    .line 229
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v7, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 233
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_b

    .line 234
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v11, v12

    .line 236
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-eq v0, v13, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v8, v0, 0x5a

    .line 238
    .restart local v8    # "defaultOrientation":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setDefaultOrientation(I)V

    goto/16 :goto_2

    .line 211
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "defaultOrientation":I
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 212
    new-instance v0, Lcom/sec/android/app/camera/GolfImageManager;

    invoke-direct {v0}, Lcom/sec/android/app/camera/GolfImageManager;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/GolfImageManager;->createThumbnails(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 213
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v7, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 215
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 216
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v7, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 225
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_5

    .line 261
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020097

    const/4 v2, 0x0

    const v3, 0x7f020096

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public updateEmpty()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 118
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v7, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 120
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 122
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f020098

    const v6, 0x7f020096

    move v3, v2

    move v5, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b01c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateEmptyButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v2

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v3

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmpty()V

    .line 151
    return-void
.end method
