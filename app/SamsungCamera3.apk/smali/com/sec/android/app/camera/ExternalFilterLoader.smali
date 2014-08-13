.class public Lcom/sec/android/app/camera/ExternalFilterLoader;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final EFFECT_NAME:Ljava/lang/String; = "name"

.field private static final EXT_RES_PATH:Ljava/lang/String; = "/data/DownFilters/Res/"

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final INDEX_EFFECT_NAME:I = 0x1

.field private static final INDEX_FILE_NAME:I = 0x2

.field private static final INDEX_FILTER_TYPE:I = 0x5

.field private static final INDEX_HANDLER:I = 0xb

.field private static final INDEX_HEIGHT:I = 0xa

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MVENDOR:I = 0x4

.field private static final INDEX_PACKAGE_NAME:I = 0xc

.field private static final INDEX_POSX:I = 0x7

.field private static final INDEX_POSY:I = 0x8

.field private static final INDEX_TITLE:I = 0x6

.field private static final INDEX_VERSION:I = 0x3

.field private static final INDEX_WIDTH:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final POSX:Ljava/lang/String; = "posx"

.field private static final POSY:Ljava/lang/String; = "posy"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static final _ID:Ljava/lang/String; = "_ID"

.field private static mDualExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mFilterExist:Z


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mFilterDBObserver:Landroid/database/ContentObserver;

.field private mIsDBChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    const-class v0, Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    .line 52
    sput-boolean v2, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    .line 57
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vendor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    .line 59
    new-instance v0, Lcom/sec/android/app/camera/ExternalFilterLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$1;-><init>(Lcom/sec/android/app/camera/ExternalFilterLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    .line 70
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v1, "create ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 13
    sput-boolean p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    return p0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/ExternalFilterLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/ExternalFilterLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    return p1
.end method


# virtual methods
.method public clear(Z)V
    .locals 2
    .param p1, "destory"    # Z

    .prologue
    .line 143
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v1, "clear ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    .line 146
    return-void
.end method

.method public getExternalEffectCount()I
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalEffectResourcePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/DownFilters/Res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalEffectsId(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 271
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getExternalEffectsName(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 277
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    .end local v0    # "title":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 281
    .restart local v0    # "title":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterForSet(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 309
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "fullName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExternalFilterFullName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 295
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterHandler(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 354
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getHandler()Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method public getExternalFilterHeight(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 347
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getHeight()I

    move-result v0

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExternalFilterName(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 287
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ".so"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 291
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExternalFilterPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 302
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterPosx(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 326
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getPosx()I

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExternalFilterPosy(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 333
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getPosy()I

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExternalFilterType(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 317
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilterWidth(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 340
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getWidth()I

    move-result v0

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExternalEffect(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 321
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilterDBChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    if-eqz v1, :cond_0

    .line 162
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    .line 163
    const/4 v0, 0x1

    .line 165
    :cond_0
    return v0
.end method

.method public isFilterLoaded()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    return v0
.end method

.method public isValidExternalId(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 364
    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadExternalFilters()Z
    .locals 21

    .prologue
    .line 75
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v2, "load ExternalFilterLoader"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/16 v17, 0x0

    .line 78
    .local v17, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 80
    const/16 v19, 0x0

    .line 81
    .local v19, "filterCount":I
    :cond_0
    :goto_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 84
    .local v3, "id":I
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "effectName":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v1, "Unnamed filter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "filterName":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v1, "Unnamed filter"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 94
    .local v8, "version":I
    const/4 v1, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "vendor":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v1, "Unknown vendor"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 99
    .local v16, "filter_type":Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v1, "Unknown FilterType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "title":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v1, "Unknown title"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v1, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 107
    .local v10, "posx":I
    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 108
    .local v11, "posy":I
    const/16 v1, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 109
    .local v12, "width":I
    const/16 v1, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 110
    .local v13, "height":I
    const/16 v1, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, "handler":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/16 v1, 0xc

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 115
    .local v15, "packageName":Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], effectName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], filterName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], version["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], vendor["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], filter_type["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], title["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], posx["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], posy["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], width["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], height["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], handler["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], packageName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v20, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v19

    add-int/lit16 v4, v0, 0x1f40

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;-><init>(Lcom/sec/android/app/camera/ExternalFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v19, v19, 0x1

    .line 125
    goto/16 :goto_0

    .line 126
    .end local v3    # "id":I
    .end local v5    # "vendor":Ljava/lang/String;
    .end local v6    # "effectName":Ljava/lang/String;
    .end local v7    # "filterName":Ljava/lang/String;
    .end local v8    # "version":I
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "posx":I
    .end local v11    # "posy":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "handler":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "filter_type":Ljava/lang/String;
    :cond_1
    if-nez v19, :cond_4

    .line 127
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v17, :cond_2

    .line 136
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 139
    .end local v19    # "filterCount":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1

    .line 129
    .restart local v19    # "filterCount":I
    :cond_4
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v1, 0x1

    .line 135
    if-eqz v17, :cond_3

    .line 136
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 132
    .end local v19    # "filterCount":I
    :catch_0
    move-exception v18

    .line 133
    .local v18, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    if-eqz v17, :cond_2

    .line 136
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 135
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v17, :cond_5

    .line 136
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public registerObserver(Lcom/sec/android/app/camera/Camera;)V
    .locals 4
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    return-void
.end method

.method public unRegisterObserver(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    return-void
.end method
