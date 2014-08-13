.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CAMERA_WITH_DATA:I = 0x3e9

.field private static final REQUEST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x3ea

.field private static final REQUEST_CODE_PICK_AVATAR:I = 0x3ed

.field private static final REQUEST_CODE_PICK_SMEMO:I = 0x3ec

.field private static final REQUEST_CODE_PICK_SNOTE:I = 0x3eb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mIsDirectoryContact:Z

.field private mPhotoMode:I

.field private final mPhotoPickSize:I

.field private final mPhotoView:Landroid/view/View;

.field private mPopup:Landroid/app/AlertDialog;

.field private mState:Lcom/android/contacts/model/EntityDeltaList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/EntityDeltaList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoView"    # Landroid/view/View;
    .param p3, "photoMode"    # I
    .param p4, "isDirectoryContact"    # Z
    .param p5, "state"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    .line 86
    iput p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    .line 87
    iput-boolean p4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    .line 88
    iput-object p5, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromSNoteActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromSMemoActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromTaggedPictureActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromAvatarActivity(Ljava/lang/String;)V

    return-void
.end method

.method private doCropPhoto(Ljava/lang/String;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 254
    :try_start_0
    invoke-static {p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "newPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "croppedPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 265
    invoke-direct {p0, v3, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 266
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x3ea

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "croppedPath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "newPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string v5, "Cannot crop image"

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0071

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAvatarPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 429
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "croppedPhotoPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 432
    .local v1, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 433
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.acrodea.samsung_avatar_maker"

    const-string v4, "com.acrodea.samsung_avatar_maker.AvatarMaker_Select"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v3, "output"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v3, "scale"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    const-string v3, "scaleUpIfNeeded"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    const-string v3, "aspectX"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v3, "aspectY"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const-string v3, "outputX"

    iget v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v3, "outputY"

    iget v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    return-object v2
.end method

.method private getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "inputPhotoPath"    # Ljava/lang/String;
    .param p2, "croppedPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 372
    .local v1, "inputPhotoUri":Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 373
    .local v0, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v0, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 376
    return-object v2
.end method

.method private getCropSNoteIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "croppedPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 382
    .local v0, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v1, v0, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 385
    return-object v1
.end method

.method private getPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "croppedPhotoPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 359
    .local v1, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v3, "set-as-contactphoto"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v1, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 364
    return-object v2
.end method

.method private getPhotoPickSize()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 344
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 345
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 347
    if-eqz v6, :cond_0

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 347
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private getSMemoPickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_name"

    const-string v2, "Contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    return-object v0
.end method

.method private getSNotePickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SNOTE_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SelectMode"

    const-string v2, "single"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v1, "ReturnType"

    const-string v2, "Imageonly"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v1, "set-as-contactphoto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    return-object v0
.end method

.method private getTaggedPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 390
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "croppedPhotoPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 392
    .local v1, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 393
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v3, "caller_id_pick"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string v3, "set-as-contactphoto"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v1, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 398
    return-object v2
.end method

.method private static getTakePhotoIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "newPhotoPath":Ljava/lang/String;
    const-string v2, "output"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    return-object v0
.end method

.method private startPickFromAvatarActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getAvatarPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startAvatarActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 337
    return-void
.end method

.method private startPickFromGalleryActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 313
    return-void
.end method

.method private startPickFromSMemoActivity()V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getSMemoPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startSMemoActivity(Landroid/content/Intent;I)V

    .line 325
    return-void
.end method

.method private startPickFromSNoteActivity()V
    .locals 2

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getSNotePickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startSNoteActivity(Landroid/content/Intent;I)V

    .line 319
    return-void
.end method

.method private startPickFromTaggedPictureActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getTaggedPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 331
    return-void
.end method

.method private startTakePhotoActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getTakePhotoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 302
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    :cond_0
    return-void
.end method

.method public dismissPhotoSelectionPopup()V
    .locals 2

    .prologue
    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected doCropSNote(Landroid/net/Uri;)V
    .locals 9
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    .line 276
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 278
    .local v2, "tempCropFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 285
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getCropSNoteIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 286
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0x3ea

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "tempCropFile":Ljava/io/File;
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string v4, "Cannot crop image"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0071

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getDeltaForAttachingPhotoToContact()Lcom/android/contacts/model/EntityDeltaList;
    .locals 9

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v6

    .line 215
    .local v6, "writableEntityIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 217
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 220
    .local v3, "delta":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 221
    .local v4, "entityValues":Landroid/content/ContentValues;
    const-string v7, "account_type"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "type":Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "dataSet":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 226
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-static {v3, v0, v7}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 228
    .local v1, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v1, :cond_0

    .line 229
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 230
    const-string v7, "is_super_primary"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 233
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 235
    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v1    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "dataSet":Ljava/lang/String;
    .end local v3    # "delta":Lcom/android/contacts/model/EntityDelta;
    .end local v4    # "entityValues":Landroid/content/ContentValues;
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public abstract getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.end method

.method public getWritableEntityId()J
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v0

    .line 200
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v1, -0x1

    .line 201
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getWritableEntityIndex()I
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public handlePhotoActivityResult(IILandroid/content/Intent;)Z
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v3

    .line 146
    .local v3, "listener":Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 147
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v6

    .line 181
    :goto_1
    return v5

    .line 150
    :pswitch_0
    iget-object v6, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 158
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "path":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/detail/PhotoSelectionHandler;->doCropPhoto(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :pswitch_2
    if-eqz p3, :cond_0

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 165
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .local v2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 167
    .local v1, "fileUri":Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->doCropSNote(Landroid/net/Uri;)V

    goto :goto_0

    .line 173
    .end local v1    # "fileUri":Landroid/net/Uri;
    .end local v2    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :pswitch_3
    iget-object v6, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .restart local v4    # "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    .line 117
    .local v0, "listener":Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->dismissPhotoSelectionPopup()V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    .line 125
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/contacts/detail/PhotoSelectionHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$1;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 134
    :cond_1
    return-void
.end method

.method public setDirectoryContact(Z)V
    .locals 0
    .param p1, "isDirectoryContact"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    .line 110
    return-void
.end method

.method public setPhotoMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    .line 100
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDeltaList;)V
    .locals 0
    .param p1, "state"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 105
    return-void
.end method

.method protected abstract startAvatarActivity(Landroid/content/Intent;ILjava/lang/String;)V
.end method

.method protected abstract startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
.end method

.method protected abstract startSMemoActivity(Landroid/content/Intent;I)V
.end method

.method protected abstract startSNoteActivity(Landroid/content/Intent;I)V
.end method
