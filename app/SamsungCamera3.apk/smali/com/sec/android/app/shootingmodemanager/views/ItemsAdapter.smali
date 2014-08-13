.class public Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemsAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectTouchListener;,
        Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;,
        Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;,
        Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACTION_DATABASE_REORDER:I = 0x5

.field private static final ACTION_REFRESH_REQUESTED:I = 0x2

.field private static final IMAGES_CACHE_SIZE_MB:I = 0x12

.field private static final PACKAGE_UPDATE_OFFSET:I = 0x3e8

.field private static final SCALE_ANIMATION_DURATION:I = 0x32

.field private static final SCALE_ANIMATION_PIVOT_X:F = 0.5f

.field private static final SCALE_ANIMATION_PIVOT_Y:F = 0.5f

.field private static final SCALE_DOWN_ANIMATION_OFFSET:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "EffectAdapter"


# instance fields
.field private final mCheckBoxHideListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;

.field private final mContext:Landroid/content/Context;

.field private final mEffectHeight:I

.field private final mEffectLongClickListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;

.field private final mEffectScaleDownAnimation:Landroid/view/animation/ScaleAnimation;

.field private final mEffectScaleUpAnimation:Landroid/view/animation/ScaleAnimation;

.field private final mEffectTouchListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectTouchListener;

.field private final mEffectWidth:I

.field private final mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

.field private final mFilterImagesCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mParentShootingModeGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V
    .locals 9
    .param p1, "parentActivity"    # Landroid/content/Context;
    .param p2, "parentShootingModeGridView"    # Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    .param p3, "loader"    # Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;

    const/high16 v1, 0x1200000

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;I)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mFilterImagesCache:Landroid/util/LruCache;

    .line 89
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$2;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mMainHandler:Landroid/os/Handler;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mParentShootingModeGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    iput-object p3, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    .line 125
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectLongClickListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;

    .line 126
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mCheckBoxHideListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;

    .line 127
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectTouchListener;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectTouchListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectTouchListener;

    .line 128
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000

    const v2, 0x3f733333

    const/high16 v3, 0x3f800000

    const v4, 0x3f733333

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleDownAnimation:Landroid/view/animation/ScaleAnimation;

    .line 130
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f733333

    const/high16 v2, 0x3f800000

    const v3, 0x3f733333

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleUpAnimation:Landroid/view/animation/ScaleAnimation;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleDownAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleUpAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleDownAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleUpAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectWidth:I

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectHeight:I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->loadExternalItems(Landroid/content/Context;Z)V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mParentShootingModeGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->populateViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleDownAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectScaleUpAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method private getImage(Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "item"    # Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    .prologue
    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourcePathName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mFilterImagesCache:Landroid/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 260
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v1, :cond_2

    .line 261
    iget v4, p1, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourceId:I

    if-nez v4, :cond_3

    .line 262
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourcePathName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 271
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 273
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020378

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 276
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mFilterImagesCache:Landroid/util/LruCache;

    invoke-virtual {v4, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_2
    return-object v1

    .line 265
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourcePathName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "EffectAdapter"

    const-string v5, "Not able to obtain resources"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isMarquee(Ljava/lang/String;ILandroid/widget/TextView;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "availableWidth"    # I
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 384
    const/4 v0, 0x1

    .line 386
    .local v0, "isMarquee":Z
    if-lez p2, :cond_0

    .line 387
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateViews()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->loadExternalItems(Landroid/content/Context;Z)V

    .line 108
    return-void
.end method


# virtual methods
.method public getAlignedPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->getAlignedPosition(I)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->getExternalItemCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getItemInfo(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemInfo(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->getExternalItemAt(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 198
    if-nez p2, :cond_1

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000f

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 200
    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectLongClickListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectLongClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;)V

    .line 203
    .local v0, "holder":Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;
    const v3, 0x7f0e002a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    .line 204
    const v3, 0x7f0e002b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    .line 205
    const v3, 0x7f0e002c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mDownloaded:Landroid/widget/ImageView;

    .line 207
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mCheckBoxHideListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mCheckBoxHideListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectTouchListener:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$EffectTouchListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    :goto_0
    invoke-virtual {p2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getItemInfo(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    move-result-object v2

    .line 220
    .local v2, "infoItem":Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    iget-object v3, v2, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mTitle:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectWidth:I

    iget-object v5, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->isMarquee(Ljava/lang/String;ILandroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 222
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    :goto_1
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iput p1, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mPosition:I

    .line 230
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 232
    iget-boolean v3, v2, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mDownloaded:Z

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mDownloaded:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :goto_2
    invoke-virtual {p2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 240
    invoke-direct {p0, v2}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getImage(Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 243
    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectWidth:I

    iget v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mEffectHeight:I

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_0
    return-object p2

    .line 212
    .end local v0    # "holder":Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;
    .end local v1    # "image":Landroid/graphics/drawable/Drawable;
    .end local v2    # "infoItem":Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 213
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;
    goto :goto_0

    .line 224
    .restart local v2    # "infoItem":Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    :cond_2
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 225
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 v4, 0x51

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 235
    :cond_3
    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mDownloaded:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public insert(II)V
    .locals 1
    .param p1, "dropOnPosition"    # I
    .param p2, "dragPosition"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->insert(II)V

    .line 184
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mExternalLoader:Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->clear()V

    .line 148
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 370
    const v0, 0x7f0e002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 372
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 296
    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0xa0

    if-ne p2, v2, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    move-object v0, p1

    .line 297
    check-cast v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    .line 298
    .local v0, "gridView":Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 303
    .end local v0    # "gridView":Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshView()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 286
    return-void
.end method

.method reorderDB(II)V
    .locals 3
    .param p1, "dropOnPosition"    # I
    .param p2, "dragPosition"    # I

    .prologue
    .line 156
    const-string v0, "EffectAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " reorderDB dropOnPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  dragPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void
.end method

.method public viewsRefreshed()V
    .locals 0

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 292
    return-void
.end method
