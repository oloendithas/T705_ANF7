.class public Lcom/android/keyguard/sec/KeyguardEffectViewUtil;
.super Ljava/lang/Object;
.source "KeyguardEffectViewUtil.java"


# static fields
.field private static mWallpaperPath:Ljava/lang/String;

.field private static mWallpaperResId:I

.field private static mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 281
    if-nez p0, :cond_3

    .line 308
    .end local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    return-object p1

    .line 285
    .restart local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    if-eqz p1, :cond_1d

    .line 286
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 288
    .local v3, "pBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 289
    const/4 v3, 0x0

    .line 290
    invoke-static {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_2

    .line 295
    .end local v3    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1d
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 296
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 298
    .local v2, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_30

    .line 299
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 302
    .restart local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_35

    .line 308
    :cond_30
    :goto_30
    invoke-static {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_2

    .line 303
    :catch_35
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_30
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->showMultiWallpaper()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 115
    invoke-static {p0}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 116
    const-string v0, "KeyguardEffectViewUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSim Device wallpaperPath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 120
    :goto_32
    return-object v0

    :cond_33
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    invoke-static {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_32
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "galleryWallpaperFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 125
    if-nez p0, :cond_5

    .line 191
    :goto_4
    return-object v6

    .line 128
    :cond_5
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 129
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    .line 130
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 132
    .local v4, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v3, :cond_1e

    .line 133
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 136
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_23

    .line 142
    :cond_1e
    :goto_1e
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto :goto_4

    .line 137
    :catch_23
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1e

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_28
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 146
    const-string v7, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sput-object v7, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 149
    :try_start_32
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 150
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v7, 0x1

    sput v7, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 152
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_43} :catch_45

    move-result-object v6

    goto :goto_4

    .line 153
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_45
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "KeyguardEffectViewUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading Admin wallpaper EX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sput-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 156
    const/4 v6, 0x0

    sput v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 160
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_67
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->showMultiWallpaper()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 161
    sput-object p1, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 167
    :goto_75
    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-eqz v6, :cond_9d

    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const-string v7, "com.sec.android.slidingGallery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 168
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 169
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 171
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_4

    .line 164
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_8f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_wallpaper_path"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    goto :goto_75

    .line 174
    :cond_9d
    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-nez v6, :cond_a5

    .line 175
    const-string v6, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    sput-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 177
    :cond_a5
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 181
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 183
    :try_start_b9
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c4} :catch_cd

    .line 184
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v5, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x1

    :try_start_c5
    sput v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 186
    invoke-static {p0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ca} :catch_da

    move-result-object v6

    goto/16 :goto_4

    .line 187
    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_cd
    move-exception v1

    .line 188
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_ce
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_4

    .line 191
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_d4
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_4

    .line 187
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_da
    move-exception v1

    move-object v4, v5

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_ce
.end method

.method public static getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    if-nez p0, :cond_4

    .line 258
    const/4 v0, 0x0

    .line 262
    :goto_3
    return-object v0

    .line 260
    :cond_4
    const v0, 0x7f0200ec

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 261
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_3
.end method

.method public static getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    if-nez p0, :cond_4

    .line 267
    const/4 v0, 0x0

    .line 277
    :goto_3
    return-object v0

    .line 272
    :cond_4
    const v0, 0x7f020130

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 276
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_3
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    if-nez p0, :cond_4

    .line 197
    const/4 v8, 0x0

    .line 253
    :goto_3
    return-object v8

    .line 199
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "fileMultiCSC":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, "filePng":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, "fileMultiCSCPng":Ljava/io/File;
    const/4 v5, 0x0

    .line 205
    .local v5, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 207
    .local v7, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 209
    :try_start_28
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_48

    .line 210
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_2d
    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.png"

    sput-object v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 211
    const/4 v8, 0x1

    sput v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_af

    move-object v5, v6

    .line 243
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_35
    if-eqz v5, :cond_43

    .line 244
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 247
    .restart local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_40
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_a1

    .line 253
    :cond_43
    :goto_43
    invoke-static {p0, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_3

    .line 212
    :catch_48
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :goto_49
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    .line 214
    goto :goto_35

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_68

    .line 217
    :try_start_54
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_62

    .line 218
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :try_start_59
    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    sput-object v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 219
    const/4 v8, 0x1

    sput v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_60} :catch_ac

    move-object v5, v6

    .line 222
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_35

    .line 220
    :catch_62
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_63
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    .line 222
    goto :goto_35

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :cond_68
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 225
    :try_start_6e
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_73} :catch_7c

    .line 226
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :try_start_73
    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.png"

    sput-object v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 227
    const/4 v8, 0x1

    sput v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7a} :catch_a9

    move-object v5, v6

    .line 230
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_35

    .line 228
    :catch_7c
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7d
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    .line 230
    goto :goto_35

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    :cond_82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 233
    :try_start_88
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8d} :catch_96

    .line 234
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :try_start_8d
    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    sput-object v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 235
    const/4 v8, 0x1

    sput v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_a6

    move-object v5, v6

    .line 238
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_35

    .line 236
    :catch_96
    move-exception v0

    .line 237
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_97
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    .line 238
    goto :goto_35

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9c
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_35

    .line 248
    :catch_a1
    move-exception v0

    .line 249
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_a6
    move-exception v0

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_97

    .line 228
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_a9
    move-exception v0

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_7d

    .line 220
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_ac
    move-exception v0

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_63

    .line 212
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_af
    move-exception v0

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_49
.end method

.method public static isAdminWallpaper()Z
    .registers 2

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isLiveWallpaper(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 100
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 106
    :cond_8
    :goto_8
    return v1

    .line 103
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 106
    .local v0, "wallpaperType":I
    if-eq v0, v2, :cond_8

    move v1, v2

    goto :goto_8
.end method

.method public static writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 318
    if-nez p0, :cond_4

    .line 328
    :goto_3
    return-void

    .line 321
    :cond_4
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set current wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_type"

    sget v2, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_file_path"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3
.end method

.method public static writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    if-nez p0, :cond_3

    .line 337
    :goto_2
    return-void

    .line 334
    :cond_3
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set resource id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_default_wallpaper_res_id"

    const v2, 0x7f0200ec

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2
.end method

.method private static writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 312
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V

    .line 314
    return-object p1
.end method
