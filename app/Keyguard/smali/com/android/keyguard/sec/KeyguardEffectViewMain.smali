.class public Lcom/android/keyguard/sec/KeyguardEffectViewMain;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewMain.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;,
        Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;,
        Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;
    }
.end annotation


# static fields
.field private static sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;


# instance fields
.field private final LOCKSCREEN_EFFECT_TYPE_LIVEWALLPAPER:I

.field private final UNLOCK_EFFECT_VIEW_BACKGROUND:I

.field private final UNLOCK_EFFECT_VIEW_FOREGROUND:I

.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

.field private mBackgroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

.field private mForegroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mGradationView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsChangedStateForEmergencyMode:Z

.field private mIsJBPUpgrade:Z

.field private mIsVisible:Z

.field private mKeyguardHostView:Landroid/widget/FrameLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mUnlockEffectViewMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSwitching:Z

.field protected mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->LOCKSCREEN_EFFECT_TYPE_LIVEWALLPAPER:I

    .line 95
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->UNLOCK_EFFECT_VIEW_FOREGROUND:I

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->UNLOCK_EFFECT_VIEW_BACKGROUND:I

    .line 107
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    .line 108
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    .line 109
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    .line 110
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 111
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 112
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    .line 113
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 114
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 115
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 117
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    .line 118
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    .line 127
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsChangedStateForEmergencyMode:Z

    .line 157
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 192
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    .line 228
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 230
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 231
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 232
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    .line 234
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsJBPUpgrade:Z

    .line 246
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->initWallpaperTypes()V

    .line 247
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperContentObservers()V

    .line 248
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeygaurdBackground()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsChangedStateForEmergencyMode:Z

    return p1
.end method

.method private changeBackgroundViewVisibility(Z)V
    .registers 9
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 899
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v3, :cond_b

    .line 936
    :cond_a
    :goto_a
    return-void

    .line 902
    :cond_b
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_a

    .line 905
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Landroid/view/ViewGroup;

    .line 906
    .local v2, "convertedView":Landroid/view/ViewGroup;
    if-eqz p1, :cond_49

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_49

    .line 907
    const-string v3, "KeyguardEffectViewMain"

    const-string v4, "changeBackgroundViewVisibility set visible"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x0

    .local v0, "childIdx":I
    :goto_25
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_38

    .line 910
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 911
    .local v1, "childView":Landroid/view/View;
    if-nez v1, :cond_34

    .line 909
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 914
    :cond_34
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 917
    .end local v1    # "childView":Landroid/view/View;
    :cond_38
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 918
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 919
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 920
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    goto :goto_a

    .line 921
    .end local v0    # "childIdx":I
    :cond_49
    if-nez p1, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 922
    const-string v3, "KeyguardEffectViewMain"

    const-string v4, "changeBackgroundViewVisibility set invisible"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v0, 0x0

    .restart local v0    # "childIdx":I
    :goto_59
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6c

    .line 925
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 926
    .restart local v1    # "childView":Landroid/view/View;
    if-nez v1, :cond_68

    .line 924
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 929
    :cond_68
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_65

    .line 932
    .end local v1    # "childView":Landroid/view/View;
    :cond_6c
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 933
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 934
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_a
.end method

.method private getDefaultWallpaperTypeForBrilliant()I
    .registers 5

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_default_wallpaper_type_for_brilliant"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "*** KeyguardEffectView getInstance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    if-nez v0, :cond_12

    .line 255
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .line 257
    :cond_12
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    return-object v0
.end method

.method public static getScaledBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 872
    const/4 v1, 0x0

    .line 873
    .local v1, "sis":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 874
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 875
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 878
    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 882
    :goto_19
    return-object v2

    .line 879
    :catch_1a
    move-exception v0

    .line 880
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method

.method public static getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 857
    const/4 v1, 0x0

    .line 858
    .local v1, "sis":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 859
    .local v2, "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 860
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 863
    .restart local v2    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 867
    :goto_19
    return-object v2

    .line 864
    :catch_1a
    move-exception v0

    .line 865
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method

.method private handleChangeWallpaperType()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->updateStatusbarGradationView()V

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    .line 444
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 445
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 452
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 453
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 461
    :goto_35
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 462
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    .line 465
    :cond_3f
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    if-nez v0, :cond_57

    .line 467
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    .line 469
    :cond_57
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    if-nez v0, :cond_6f

    .line 471
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    .line 473
    :cond_6f
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;)V

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b1

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 481
    :goto_96
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    .line 482
    return-void

    .line 448
    :cond_9a
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    goto :goto_25

    .line 455
    :cond_9d
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_a9

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_35

    .line 458
    :cond_a9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_35

    .line 479
    :cond_b1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_96
.end method

.method private handleUpdateKeygaurdBackground()V
    .registers 2

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->updateStatusbarGradationView()V

    .line 659
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_8

    .line 671
    :goto_7
    return-void

    .line 662
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->changeBrilliantEffectType()V

    .line 665
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-eqz v0, :cond_18

    .line 666
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->setLockScreenWallpaper()V

    .line 668
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    .line 670
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    goto :goto_7
.end method

.method private initWallpaperTypes()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setDefaultEffectViewTypes()V

    .line 276
    return-void
.end method

.method public static isLockScreenEffect(I)Z
    .registers 3
    .param p0, "effectType"    # I

    .prologue
    const/4 v0, 0x1

    .line 209
    if-eqz p0, :cond_1f

    if-eq p0, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1f

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1f

    const/16 v1, 0x64

    if-ne p0, v1, :cond_20

    .line 222
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;)V
    .registers 5
    .param p1, "background"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    .prologue
    const/4 v2, 0x0

    .line 542
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_144

    .line 629
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_12

    .line 630
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 632
    :cond_12
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    .line 636
    :cond_15
    :goto_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z

    .line 637
    return-void

    .line 544
    :pswitch_19
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isArcMotionEnabled()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-nez v0, :cond_43

    .line 546
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 547
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 548
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    .line 562
    :cond_33
    :goto_33
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isArcMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    if-eqz v0, :cond_15

    .line 564
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto :goto_15

    .line 549
    :cond_43
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_33

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_56

    .line 551
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->update(I)V

    goto :goto_33

    .line 553
    :cond_56
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_33

    .line 556
    :cond_5c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    if-nez v0, :cond_33

    .line 557
    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "Call KeyguardEffectViewRipple for gravity effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 559
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_33

    .line 568
    :pswitch_75
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-nez v0, :cond_8a

    .line 569
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 570
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 571
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto :goto_15

    .line 572
    :cond_8a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_15

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_15

    .line 577
    :pswitch_94
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-nez v0, :cond_aa

    .line 578
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 579
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 580
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_15

    .line 581
    :cond_aa
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_15

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_15

    .line 587
    :pswitch_b5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-nez v0, :cond_cb

    .line 588
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 589
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 590
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_15

    .line 591
    :cond_cb
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_15

    .line 592
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_15

    .line 597
    :pswitch_d6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    if-nez v0, :cond_ec

    .line 598
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 599
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 600
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_15

    .line 601
    :cond_ec
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_15

    .line 602
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_15

    .line 607
    :pswitch_f7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    if-nez v0, :cond_10d

    .line 608
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 609
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 610
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_15

    .line 611
    :cond_10d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_15

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_15

    .line 617
    :pswitch_118
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-nez v0, :cond_139

    .line 618
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 619
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForBrilliant()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    .line 621
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_15

    .line 622
    :cond_139
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_15

    .line 623
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_15

    .line 542
    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_19
        :pswitch_75
        :pswitch_94
        :pswitch_b5
        :pswitch_d6
        :pswitch_f7
        :pswitch_118
    .end packed-switch
.end method

.method private makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V
    .registers 6
    .param p1, "foreground"    # Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 492
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_96

    .line 532
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 536
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_21

    .line 538
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 539
    :cond_21
    return-void

    .line 494
    :pswitch_22
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    if-nez v0, :cond_f

    .line 495
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 496
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_f

    .line 500
    :pswitch_34
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    if-nez v0, :cond_f

    .line 502
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 503
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_f

    .line 506
    :cond_4c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-nez v0, :cond_f

    .line 507
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 508
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_f

    .line 513
    :pswitch_5e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-nez v0, :cond_f

    .line 514
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 515
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_f

    .line 519
    :pswitch_70
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    if-nez v0, :cond_f

    .line 520
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 521
    new-instance v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_f

    .line 525
    :pswitch_82
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    if-nez v0, :cond_f

    .line 526
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 527
    new-instance v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassTensionUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto/16 :goto_f

    .line 492
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_22
        :pswitch_34
        :pswitch_5e
        :pswitch_70
        :pswitch_82
    .end packed-switch
.end method

.method private setBackground()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 640
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 642
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_13

    .line 643
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 645
    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 653
    return-void
.end method

.method private setDefaultEffectViewTypes()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->ripple:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->lens:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->watercolor:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->blind:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->brilliantcut:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->massRipple:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->massTension:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->justLockLive:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method private setWallpaperFileObserver()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    .line 394
    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 436
    :goto_2d
    return-void

    .line 398
    :cond_2e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_3a

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    .line 403
    :cond_3a
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$5;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$5;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_2d
.end method

.method private updateStatusbarGradationView()V
    .registers 1

    .prologue
    .line 489
    return-void
.end method


# virtual methods
.method public changeBrilliantEffectType()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 969
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-nez v1, :cond_9

    .line 989
    :goto_8
    return-void

    .line 972
    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsChangedStateForEmergencyMode:Z

    if-eqz v1, :cond_10

    .line 973
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsChangedStateForEmergencyMode:Z

    goto :goto_8

    .line 977
    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_brilliant_cut_wallpaper"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 980
    .local v0, "changedDefaultWallpaperType":I
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_brilliant_cut_wallpaper"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 983
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    .line 986
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_brilliant"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_8
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 749
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    .line 751
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_12

    .line 752
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    .line 754
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 755
    return-void
.end method

.method public getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 693
    if-nez p1, :cond_6

    move-object p1, v4

    .line 710
    .end local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_5
    return-object p1

    .line 696
    .restart local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_5

    .line 699
    const-string v5, "KeyguardEffectViewMain"

    const-string v6, "start to convert album art"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 701
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 703
    .local v2, "height":I
    if-lez v3, :cond_21

    if-gtz v2, :cond_23

    :cond_21
    move-object p1, v4

    .line 704
    goto :goto_5

    .line 706
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 707
    .local v0, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 708
    .local v1, "destCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    .line 710
    goto :goto_5
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getCurrentEffecType()I
    .registers 2

    .prologue
    .line 947
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    return v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getKeyguardHostView(Landroid/widget/FrameLayout;)V
    .registers 3
    .param p1, "widgetLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 852
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    .line 853
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_b

    .line 780
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    .line 782
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_b

    .line 825
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 826
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_b

    .line 832
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 834
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 819
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 820
    :cond_9
    return-void
.end method

.method public handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 674
    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateKeyguardMusicBackground(): bmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_1d

    .line 690
    :cond_1c
    :goto_1c
    return-void

    .line 678
    :cond_1d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-eqz v0, :cond_2a

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 680
    :cond_2a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_3b

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 682
    :cond_3b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-eqz v0, :cond_4c

    .line 683
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 684
    :cond_4c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_5d

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 686
    :cond_5d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    if-eqz v0, :cond_1c

    .line 687
    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "KeyguardEffectViewRipple for gravity effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_1c
.end method

.method public isFestivalActivated()Z
    .registers 2

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public playLockSound()V
    .registers 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 788
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    .line 789
    :cond_9
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 760
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    .line 762
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_12

    .line 763
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    .line 765
    :cond_12
    return-void
.end method

.method public screenTurnedOff()V
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 794
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 796
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_12

    .line 797
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 799
    :cond_12
    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 771
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 773
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_12

    .line 774
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 775
    :cond_12
    return-void
.end method

.method public setHidden(Z)V
    .registers 5
    .param p1, "isHidden"    # Z

    .prologue
    .line 886
    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_21

    .line 889
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    .line 891
    :cond_21
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2a

    .line 892
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    .line 894
    :cond_2a
    if-nez p1, :cond_35

    const/4 v0, 0x1

    :goto_2d
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    .line 895
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->changeBackgroundViewVisibility(Z)V

    .line 896
    return-void

    .line 894
    :cond_35
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public setLayerAndBitmapForParticleEffect()V
    .registers 4

    .prologue
    .line 951
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-eqz v2, :cond_13

    .line 952
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    .line 953
    .local v0, "effectViewParticleSpace":Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    .line 954
    .local v1, "effectWallpaperWidget":Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->setLayers(Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;Landroid/widget/FrameLayout;)V

    .line 956
    .end local v0    # "effectViewParticleSpace":Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    .end local v1    # "effectWallpaperWidget":Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;
    :cond_13
    return-void
.end method

.method public setWallpaperContentObservers()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 331
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$4;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    .line 368
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 370
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 372
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 374
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 376
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 379
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperFileObserver()V

    .line 382
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V

    .line 736
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_c

    .line 737
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    .line 739
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    if-eqz v0, :cond_19

    .line 740
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    .line 742
    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 743
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->changeBackgroundViewVisibility(Z)V

    .line 744
    return-void
.end method

.method public showGradation(Z)V
    .registers 4
    .param p1, "shouldShow"    # Z

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->isClockTop()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->isMissedEventTop()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 716
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 717
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    const/high16 v1, 0x26000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 724
    :goto_27
    return-void

    .line 719
    :cond_28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_27

    .line 722
    :cond_2f
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_27
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 813
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 814
    :cond_9
    return-void
.end method

.method public update()V
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_9

    .line 804
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    .line 806
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_12

    .line 807
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    .line 808
    :cond_12
    return-void
.end method
