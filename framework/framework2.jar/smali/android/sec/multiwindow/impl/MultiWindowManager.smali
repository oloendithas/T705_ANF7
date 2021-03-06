.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/MultiWindowManager$FEATURE_LEVEL;
    }
.end annotation


# static fields
.field public static final APPLIST_POSITION_BOTTOM:I = 0x2

.field public static final APPLIST_POSITION_LEFT:I = 0x3

.field public static final APPLIST_POSITION_RIGHT:I = 0x4

.field public static final APPLIST_POSITION_TOP:I = 0x1

.field public static final CALLBACK_TYPE_COMMON:I = 0x0

.field public static final CALLBACK_TYPE_MINIMIZE:I = 0x1

.field public static final CENTER_BAR_TYPE_EXTRA:I = 0x2

.field public static final CENTER_BAR_TYPE_NORMAL:I = 0x1

.field public static final MINIMIZE_ICON_STATE_EXPANDED:I = 0x1

.field public static final MINIMIZE_ICON_STATE_STACKED:I = 0x0

.field public static final MW_FEATURE_MINIMIZED_FLOATING_ICON:Z = true

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sCenterBarInnerPadding:I

.field private static sFeatureLevel:I

.field private static sHasSystemNavBar:Z

.field private static sIsEnabled:Z

.field private static sQueried:Z

.field private static sQueriedTypeMultiWindow:Z

.field private static sStatusBarHeight:I

.field private static sStatusBarVisibility:Z

.field private static sSupportCommonUI:Z

.field private static sSupportFixedSplitView:Z

.field private static sSupportFreeStyle:Z

.field private static sSupportFreeStyleDocking:Z

.field private static sSupportFreeStyleLaunch:Z

.field private static sSupportMinimize:Z

.field private static sSupportMultiInstance:Z

.field private static sSupportMultiWindow:Z

.field private static sSupportMultiWindowLaunch:Z

.field private static sSupportQuadView:Z

.field private static sSupportScaleWindow:Z

.field private static sSupportSplitFullScreen:Z


# instance fields
.field private mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 32
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    .line 33
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 34
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    .line 35
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    .line 36
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    .line 37
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    .line 38
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    .line 39
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    .line 40
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    .line 41
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    .line 42
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    .line 43
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    .line 44
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    .line 45
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    .line 46
    const/4 v0, 0x2

    sput v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sFeatureLevel:I

    .line 47
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 48
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 49
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 50
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/sec/multiwindow/impl/IMultiWindowManager;)V
    .registers 3
    .param p1, "service"    # Landroid/sec/multiwindow/impl/IMultiWindowManager;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    .line 68
    iput-object p1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    .line 69
    return-void
.end method

.method public static calcStatusBarHeight(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 324
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 325
    .local v1, "display":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_8

    .line 345
    :cond_7
    :goto_7
    return v5

    .line 329
    :cond_8
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 330
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_7

    .line 334
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 335
    .local v2, "fullscreen":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 337
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_43

    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 338
    .local v3, "shortSize":I
    :goto_1e
    mul-int/lit16 v5, v3, 0xa0

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v4, v5, v6

    .line 340
    .local v4, "shortSizeDp":I
    const/16 v5, 0x258

    if-lt v4, v5, :cond_34

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v6, 0xd5

    if-eq v5, v6, :cond_34

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_41

    .line 343
    :cond_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 345
    :cond_41
    const/4 v5, 0x1

    goto :goto_7

    .line 337
    .end local v3    # "shortSize":I
    .end local v4    # "shortSizeDp":I
    :cond_43
    iget v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_1e
.end method

.method public static checkMultiWindowFeature(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    if-nez v1, :cond_68

    .line 354
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_e

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 360
    :cond_e
    if-eqz v0, :cond_69

    .line 361
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    .line 362
    const-string v1, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    .line 363
    const-string v1, "com.sec.feature.multiwindow.minimize"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    .line 364
    const-string v1, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    .line 365
    const-string v1, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    .line 367
    const-string v1, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    .line 368
    const-string v1, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    .line 369
    const-string v1, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    .line 370
    const-string v1, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    .line 371
    const-string v1, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    .line 372
    const-string v1, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    .line 389
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_68
    :goto_68
    return-void

    .line 375
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_69
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    .line 376
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    .line 377
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.minimize.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    .line 378
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    .line 379
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    .line 380
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    .line 381
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    .line 382
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    .line 383
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    .line 384
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    .line 385
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    .line 386
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    goto/16 :goto_68
.end method

.method public static getAppDisplaySize(Landroid/graphics/Point;)V
    .registers 6
    .param p0, "size"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 298
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 299
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 300
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 302
    :cond_13
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Landroid/graphics/Point;->x:I

    .line 303
    iget v3, v1, Landroid/graphics/Point;->y:I

    sget-boolean v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v4, :cond_1f

    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :cond_1f
    sub-int v2, v3, v2

    iput v2, p0, Landroid/graphics/Point;->y:I

    .line 304
    return-void
.end method

.method public static getCurrentStatusBarVisibility()Z
    .registers 1

    .prologue
    .line 320
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return v0
.end method

.method public static getFeatureLevel(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v0, :cond_7

    .line 291
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    .line 294
    :cond_7
    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sFeatureLevel:I

    return v0
.end method

.method public static getStatusBarHeight()I
    .registers 1

    .prologue
    .line 349
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static hasSystemNavBar()Z
    .registers 1

    .prologue
    .line 312
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    return v0
.end method

.method public static initHasSystemNavBar(Z)V
    .registers 2
    .param p0, "hasBar"    # Z

    .prologue
    .line 307
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 308
    if-nez p0, :cond_8

    const/4 v0, 0x1

    :goto_5
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 309
    return-void

    .line 308
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isArrangeMode(IZZ)Z
    .registers 4
    .param p0, "windowMode"    # I
    .param p1, "bResumed"    # Z
    .param p2, "bIncludePinup"    # Z

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public static isCascadeWindow(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_21

    .line 258
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_17

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 262
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calcStatusBarHeight(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 263
    const/4 v1, 0x0

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 278
    :cond_17
    if-eqz v0, :cond_24

    .line 279
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 286
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_21
    :goto_21
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    .line 283
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_24
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_21
.end method

.method public static isMinimized(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiWindow(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public static isNormalWindow(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public static isPinup(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public static isResizable(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public static isScaleWindow(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 444
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 414
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 399
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 419
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 424
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    return v0
.end method

.method public static isSupportMinimize(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 404
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 394
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 434
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 409
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 429
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 439
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    return v0
.end method

.method private static mode(I)I
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method private static option(I)I
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public static setCurrentStatusBarVisibility(Z)V
    .registers 1
    .param p0, "isVisible"    # Z

    .prologue
    .line 316
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 317
    return-void
.end method

.method private static zone(I)I
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "splitZone"    # I

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 128
    :goto_6
    return-object v1

    .line 126
    :catch_7
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 76
    :goto_6
    return-object v1

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 237
    :goto_5
    return-void

    .line 234
    :catch_6
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public findDockingWindowZone(IIIII)I
    .registers 13
    .param p1, "currentLaunchMode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dockingBoundary"    # I
    .param p5, "currentZone"    # I

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->findDockingWindowZone(IIIII)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 137
    :goto_b
    return v0

    .line 135
    :catch_c
    move-exception v6

    .line 136
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getAppListPosition()I
    .registers 3

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getAppListPosition()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 119
    :goto_6
    return v1

    .line 117
    :catch_7
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getArrangeState()I
    .registers 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getArrangeState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 85
    :goto_6
    return v1

    .line 83
    :catch_7
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getCenterBarPoint()Landroid/graphics/Point;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 102
    :goto_6
    return-object v1

    .line 100
    :catch_7
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMinimizeIconState()I
    .registers 3

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMinimizeIconState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 252
    :goto_6
    return v1

    .line 250
    :catch_7
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMultiDisplayState()Z
    .registers 3

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMultiDisplayState()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 155
    :goto_6
    return v1

    .line 154
    :catch_7
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMultiDisplayTarget()I
    .registers 3

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMultiDisplayTarget()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 170
    :goto_6
    return v1

    .line 169
    :catch_7
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getResumedTaskCount()I
    .registers 3

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getResumedTaskCount()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 186
    :goto_6
    return v1

    .line 185
    :catch_7
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 194
    :goto_6
    return v1

    .line 193
    :catch_7
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public launchExternalDisplay(Z)V
    .registers 4
    .param p1, "topLaunchExternal"    # Z

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->launchExternalDisplay(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 211
    :goto_5
    return-void

    .line 208
    :catch_6
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public minimizeAll()V
    .registers 2

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v0}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->minimizeAll()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 203
    :goto_5
    return-void

    .line 201
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .registers 5
    .param p1, "bIsMultiDisplay"    # Z
    .param p2, "bForced"    # Z

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->notifyMultiDisplayState(ZZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 146
    :goto_6
    return v1

    .line 144
    :catch_7
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    .registers 6
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 218
    :goto_6
    return v1

    .line 216
    :catch_7
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setAppListPosition(I)V
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setAppListPosition(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 112
    :goto_5
    return-void

    .line 109
    :catch_6
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setCenterBarPoint(Landroid/graphics/Point;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 95
    :goto_5
    return-void

    .line 92
    :catch_6
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setMinimizeStackedIcon()V
    .registers 3

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMinimizeStackedIcon()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 245
    :goto_5
    return-void

    .line 242
    :catch_6
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setMultiDisplayState(Z)V
    .registers 3
    .param p1, "bMultiDisplayState"    # Z

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMultiDisplayState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 164
    :goto_5
    return-void

    .line 162
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMultiDisplayTarget(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMultiDisplayTarget(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 178
    :goto_6
    return v1

    .line 177
    :catch_7
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 227
    :goto_6
    return v1

    .line 225
    :catch_7
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    const/4 v1, 0x0

    goto :goto_6
.end method
