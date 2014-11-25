.class public Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
.super Ljava/lang/Object;
.source "ApplicationThumbnail.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .registers 9
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 35
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    .line 89
    new-instance v5, Lcom/samsung/android/theme/SThemeManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 90
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 91
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 92
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_69

    if-eqz v3, :cond_69

    .line 94
    :try_start_2d
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 95
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 96
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {v0, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 98
    const v5, 0x10805f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 99
    const v5, 0x10805f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 100
    const v5, 0x10805f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_69} :catch_6a

    .line 105
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_69
    :goto_69
    return-void

    .line 101
    :catch_6a
    move-exception v2

    .line 102
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_69
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    .line 226
    if-nez p1, :cond_4

    .line 227
    const/4 v2, 0x0

    .line 264
    :goto_3
    return-object v2

    .line 229
    :cond_4
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 230
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 233
    :cond_e
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 234
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 237
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 238
    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 239
    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 243
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 245
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 246
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 247
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 248
    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 251
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 252
    const/high16 v11, 0x40a00000

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 255
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 257
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 259
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 260
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    .local v3, "finalCanvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 262
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .registers 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 45
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x40000000

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 211
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 212
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 213
    .local v1, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 215
    .local v2, "radius":F
    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 221
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 138
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 139
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 140
    .local v1, "focus":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 141
    .local v2, "normal":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 142
    .local v3, "pressedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 143
    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 144
    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 205
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 165
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 170
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_b} :catch_19

    move-result-object v3

    .line 175
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_c
    if-eqz v3, :cond_1c

    .line 181
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    .line 182
    .local v1, "iconId":I
    if-eqz v1, :cond_1c

    .line 183
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 186
    .end local v1    # "iconId":I
    :goto_18
    return-object v4

    .line 172
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_19
    move-exception v0

    .line 173
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_c

    .line 186
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_18
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 194
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 196
    .local v3, "mIconDpi":I
    :try_start_e
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_11} :catch_15

    move-result-object v1

    .line 201
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    if-eqz v1, :cond_18

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_14
    return-object v1

    .line 197
    :catch_15
    move-exception v2

    .line 198
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 201
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_14
.end method

.method private getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 152
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1050127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 153
    .local v2, "originPixelSize":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    if-eq v4, v2, :cond_23

    .line 154
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    invoke-static {v0, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_23
    return-object p1
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "bFocused"    # Z

    .prologue
    const/high16 v10, 0x40000000

    const/4 v9, 0x0

    .line 108
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 109
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 110
    .local v0, "bgBmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_72

    .line 111
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    :goto_1a
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 117
    .local v3, "innerShadowBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 119
    .local v4, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 121
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    invoke-virtual {v2, v0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 126
    if-eqz v1, :cond_65

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v2, v1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    :cond_65
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 130
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 131
    invoke-virtual {v2, v3, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 134
    return-object v4

    .line 113
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "innerShadowBmp":Landroid/graphics/Bitmap;
    .end local v4    # "output":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_72
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1a
.end method

.method public final setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    if-nez p1, :cond_25

    .line 71
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 72
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1f

    .line 74
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 75
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1f} :catch_20

    .line 83
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1f
    :goto_1f
    return-void

    .line 76
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_20
    move-exception v1

    .line 77
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f

    .line 81
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1f
.end method
