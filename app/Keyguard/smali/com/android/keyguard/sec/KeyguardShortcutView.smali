.class public Lcom/android/keyguard/sec/KeyguardShortcutView;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;,
        Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    }
.end annotation


# static fields
.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field private static final BADGE_URI:Landroid/net/Uri;

.field private static mBadgeCountColor:I

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mShortcutImageViewHeight:I

.field private static mShortcutImageViewWidth:I

.field private static mTempOffset:[I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field private static sIconTopToTopOffset:I

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static sShortcutImageViewPaddingTop:I


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MISSED_EVENT_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private isIgnoreTouch:Z

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDistance:D

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFirstBorder:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFirst:Z

.field private mIsTouchExplorationEnabled:Z

.field private mItemCount:I

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOldBounds:Landroid/graphics/Rect;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    .line 93
    const/16 v0, 0xc8

    invoke-static {v2, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    .line 115
    sput v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 116
    sput v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 123
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "badgecount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const-string v8, "KeyguardShortcutView"

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    .line 64
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    .line 72
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 74
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    .line 75
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 83
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 84
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 85
    const/16 v8, 0x12c

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 97
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 100
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    .line 101
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    .line 104
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    .line 131
    const/16 v8, 0x12c2

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->MISSED_EVENT_UPDATE:I

    .line 132
    new-instance v8, Lcom/android/keyguard/sec/KeyguardShortcutView$1;

    invoke-direct {v8, p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$1;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;)V

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v8, Lcom/android/keyguard/sec/KeyguardShortcutView$2;

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lcom/android/keyguard/sec/KeyguardShortcutView$2;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 167
    const/16 v8, 0x11

    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getLauncherLargeIconDensity()I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    .line 174
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v8

    if-nez v8, :cond_80

    .line 175
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "set_shortcuts_mode"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 177
    .local v6, "shortcutSetting":I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_94

    .line 178
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .end local v6    # "shortcutSetting":I
    :goto_7f
    return-void

    .line 182
    :cond_80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_shortcut"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_94

    .line 183
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7f

    .line 212
    :cond_94
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0033

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0034

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    .line 219
    iget-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v8, :cond_d6

    .line 220
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "density = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_d6
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 223
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 225
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 226
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 229
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 230
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 231
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 234
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    sput-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    .line 235
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 237
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 238
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    const/high16 v9, 0x40c00000

    sget-object v10, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v9, v10}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 240
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 241
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 243
    const/4 v8, -0x1

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    .line 246
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 247
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    const/high16 v8, 0x3f000000

    const/high16 v9, 0x3f000000

    invoke-static {v1, v8, v9}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    .line 250
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 251
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    sget-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v9, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 254
    iget-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    if-nez v8, :cond_18b

    .line 255
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "touch_exploration_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 258
    .local v3, "exploreByTouchMode":I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_246

    .line 259
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 260
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v9, "explore by touch mode on"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v3    # "exploreByTouchMode":I
    :cond_18b
    :goto_18b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0037

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02009f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sput-object v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c003a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c003b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c003c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    .line 284
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    sput v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_shortcut_app_list"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "activityList":Ljava/lang/String;
    if-eqz v0, :cond_256

    .line 298
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3b

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 300
    .local v7, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v7, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "count":I
    invoke-interface {v7}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_235
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_24f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 303
    .local v5, "pkgActivity":Ljava/lang/String;
    invoke-direct {p0, p1, v5, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_235

    .line 262
    .end local v0    # "activityList":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkgActivity":Ljava/lang/String;
    .end local v7    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .restart local v3    # "exploreByTouchMode":I
    :cond_246
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v9, "explore by touch mode off"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18b

    .line 306
    .end local v3    # "exploreByTouchMode":I
    .restart local v0    # "activityList":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_24f
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->reArrangeSpace()V

    .line 309
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    goto/16 :goto_7f

    .line 313
    .end local v2    # "count":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_256
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7f
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardShortcutView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->reloadBadges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardShortcutView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # D

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/sec/KeyguardShortcutView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->launchApplication()V

    return-void
.end method

.method static synthetic access$2700()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    return v0
.end method

.method static synthetic access$2800()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I

    return v0
.end method

.method static synthetic access$2900()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    return v0
.end method

.method static synthetic access$3000()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    return v0
.end method

.method static synthetic access$3100()Landroid/graphics/MaskFilter;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3300()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$3400()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3500()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    return v0
.end method

.method static synthetic access$3600()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    return v0
.end method

.method static synthetic access$3700()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3800()[I
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$3900()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return v0
.end method

.method static synthetic access$4000()Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 26
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 854
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v16, v0

    .line 855
    .local v16, "width":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 857
    .local v9, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_12e

    .line 858
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "PaintDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_30
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 861
    .local v13, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 862
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 873
    .end local v13    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_3d
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 874
    .local v12, "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 876
    .local v11, "iconHeight":I
    if-lez v16, :cond_12c

    if-lez v9, :cond_12c

    .line 877
    move/from16 v0, v16

    if-lt v0, v12, :cond_4f

    if-ge v9, v11, :cond_180

    .line 878
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_66

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "width < iconWidth || height < iconHeight"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_66
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v19, v21

    .line 882
    .local v14, "ratio":F
    if-le v12, v11, :cond_16e

    .line 883
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v9, v0

    .line 888
    :cond_7a
    :goto_7a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_17c

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 890
    .local v7, "c":Landroid/graphics/Bitmap$Config;
    :goto_88
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    sget v22, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int v21, v21, v22

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 891
    .local v15, "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 892
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 900
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v19

    if-eqz v19, :cond_e4

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x7f0c003d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x7f0c003e

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 907
    :cond_e4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 908
    .local v17, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v9

    div-int/lit8 v19, v19, 0x2

    sget v21, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int v18, v19, v21

    .line 909
    .local v18, "y":I
    add-int v19, v17, v16

    add-int v21, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 910
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 913
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .line 940
    .end local v7    # "c":Landroid/graphics/Bitmap$Config;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "ratio":F
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_12c
    :goto_12c
    monitor-exit v20

    .line 942
    return-object p1

    .line 863
    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    :cond_12e
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_3d

    .line 864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14d

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "BitmapDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_14d
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 868
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 869
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_3d

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_3d

    .line 940
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "height":I
    .end local v16    # "width":I
    :catchall_16b
    move-exception v19

    monitor-exit v20
    :try_end_16d
    .catchall {:try_start_7 .. :try_end_16d} :catchall_16b

    throw v19

    .line 884
    .restart local v9    # "height":I
    .restart local v11    # "iconHeight":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "ratio":F
    .restart local v16    # "width":I
    :cond_16e
    if-le v11, v12, :cond_7a

    .line 885
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_7a

    .line 888
    :cond_17c
    :try_start_17c
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_88

    .line 915
    .end local v14    # "ratio":F
    :cond_180
    move/from16 v0, v16

    if-gt v12, v0, :cond_12c

    if-gt v11, v9, :cond_12c

    .line 916
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19d

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "iconWidth <= width && iconHeight <= height"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_19d
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 919
    .restart local v7    # "c":Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    sget v22, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int v21, v21, v22

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 920
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 921
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 924
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v19

    if-eqz v19, :cond_1f9

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x7f0c003d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x7f0c003e

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 931
    :cond_1f9
    sub-int v19, v16, v12

    div-int/lit8 v17, v19, 0x2

    .line 932
    .restart local v17    # "x":I
    sub-int v19, v9, v11

    div-int/lit8 v19, v19, 0x2

    sget v21, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int v18, v19, v21

    .line 933
    .restart local v18    # "y":I
    add-int v19, v17, v12

    add-int v21, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 934
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 936
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_233
    .catchall {:try_start_17c .. :try_end_233} :catchall_16b

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_12c
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 832
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 835
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    :cond_17
    return-object v0
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hide"    # Z

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "children":I
    :goto_4
    if-ltz v0, :cond_32

    .line 479
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 480
    .local v1, "tmpView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v2, :cond_20

    if-eq p1, v1, :cond_20

    .line 481
    if-eqz p2, :cond_23

    move-object v2, v1

    check-cast v2, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_23

    .line 482
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_23
    move-object v2, v1

    .line 483
    check-cast v2, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_20

    .line 484
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_20

    .line 487
    .end local v1    # "tmpView":Landroid/view/View;
    :cond_32
    return-void
.end method

.method private launchApplication()V
    .registers 7

    .prologue
    .line 1230
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_29

    .line 1232
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_2a

    .line 1237
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1238
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1241
    :cond_29
    return-void

    .line 1233
    :catch_2a
    move-exception v0

    .line 1234
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v2, "dismissKeyguard remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private reArrangeSpace()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "additionalPadding":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 323
    .local v2, "childrenCount":I
    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "prodName":Ljava/lang/String;
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v4, v8, Landroid/content/res/Configuration;->orientation:I

    .line 326
    .local v4, "orient":I
    packed-switch v2, :pswitch_data_5a

    .line 341
    const/4 v0, 0x0

    .line 345
    :goto_1c
    if-nez v0, :cond_34

    .line 358
    :cond_1e
    return-void

    .line 328
    :pswitch_1f
    const/4 v0, 0x0

    .line 329
    goto :goto_1c

    .line 331
    :pswitch_21
    const-string v8, "sf2wifixx"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2e

    .line 332
    const/4 v0, 0x1

    goto :goto_1c

    .line 334
    :cond_2e
    const/16 v0, 0xa

    .line 335
    goto :goto_1c

    .line 338
    :pswitch_31
    const/16 v0, 0x11

    .line 339
    goto :goto_1c

    .line 349
    :cond_34
    add-int/lit8 v1, v2, -0x1

    .local v1, "child":I
    :goto_36
    if-ltz v1, :cond_1e

    .line 350
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 351
    .local v7, "tmpView":Landroid/view/View;
    instance-of v8, v7, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v8, :cond_57

    move-object v8, v7

    .line 352
    check-cast v8, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .local v3, "leftPadding":I
    move-object v8, v7

    .line 353
    check-cast v8, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 354
    .local v6, "rightPadding":I
    check-cast v7, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v7    # "tmpView":Landroid/view/View;
    add-int v8, v3, v0

    add-int v9, v6, v0

    invoke-virtual {v7, v8, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 349
    .end local v3    # "leftPadding":I
    .end local v6    # "rightPadding":I
    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    .line 326
    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_31
        :pswitch_31
        :pswitch_21
        :pswitch_1f
    .end packed-switch
.end method

.method private reloadBadges()V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 449
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .local v7, "children":I
    :goto_6
    if-ltz v7, :cond_93

    .line 450
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 451
    .local v8, "tmpView":Landroid/view/View;
    instance-of v0, v8, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v0, :cond_8f

    move-object v0, v8

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 452
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 459
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8f

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 462
    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setBadgeCount(I)V

    .line 463
    check-cast v8, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v8    # "tmpView":Landroid/view/View;
    invoke-virtual {v8}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->refreshBadgeCount()V

    .line 465
    :cond_8c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 449
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_8f
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_6

    .line 469
    :cond_93
    return-void
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .registers 14
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "contrast"    # F
    .param p2, "saturation"    # F

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    .line 1207
    add-float v4, p1, v10

    .line 1208
    .local v4, "scale":F
    const/high16 v6, -0x41000000

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f000000

    add-float/2addr v6, v7

    const/high16 v7, 0x437f0000

    mul-float v5, v6, v7

    .line 1209
    .local v5, "translate":F
    sub-float v3, v10, p2

    .line 1210
    .local v3, "invSat":F
    const v6, 0x3e5a1cac

    mul-float v2, v6, v3

    .line 1211
    .local v2, "R":F
    const v6, 0x3f370a3d

    mul-float v1, v6, v3

    .line 1212
    .local v1, "G":F
    const v6, 0x3d9374bc

    mul-float v0, v6, v3

    .line 1214
    .local v0, "B":F
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    add-float v8, v2, p2

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v2, v6, v7

    const/4 v7, 0x6

    add-float v8, v1, p2

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v0, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v2, v6, v7

    const/16 v7, 0xb

    aput v1, v6, v7

    const/16 v7, 0xc

    add-float v8, v0, p2

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v10, v6, v7

    const/16 v7, 0x13

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1221
    return-void
.end method

.method private setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgActivity"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 362
    add-int/lit8 p3, p3, 0x1

    .line 364
    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 365
    .local v2, "commaIndex":I
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "pkgName":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "activityName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_39

    .line 368
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg name ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_39
    const/4 v1, 0x0

    .line 379
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cn":Landroid/content/ComponentName;
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .restart local v1    # "cn":Landroid/content/ComponentName;
    new-instance v4, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 383
    .local v4, "testItem":Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->access$300(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 385
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    :goto_4e
    const/4 v1, 0x0

    .line 409
    const/4 v4, 0x0

    .line 411
    return p3

    .line 402
    :cond_51
    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_5c

    .line 403
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v6, "mIntent=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_5c
    add-int/lit8 p3, p3, -0x1

    goto :goto_4e
.end method


# virtual methods
.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 990
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 965
    const/4 v1, 0x0

    .line 967
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_3} :catch_27

    if-nez v4, :cond_1c

    .line 968
    const/4 v3, 0x0

    .line 974
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_6
    if-eqz v3, :cond_3c

    .line 975
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_2a

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_14
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 977
    if-eqz v1, :cond_2f

    move-object v4, v1

    .line 986
    :goto_1b
    return-object v4

    .line 970
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_25} :catch_27

    move-result-object v3

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_6

    .line 971
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_27
    move-exception v0

    .line 972
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_6

    .line 975
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2a
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_14

    .line 981
    :cond_2f
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v2

    .line 982
    .local v2, "iconId":I
    if-eqz v2, :cond_3c

    .line 983
    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1b

    .line 986
    .end local v2    # "iconId":I
    :cond_3c
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1b
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 955
    :try_start_0
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 960
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_6
    if-eqz v0, :cond_c

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_8
    return-object v0

    .line 956
    :catch_9
    move-exception v1

    .line 957
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_6

    .line 960
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_8
.end method

.method public getLauncherLargeIconDensity()I
    .registers 6

    .prologue
    const/16 v3, 0x140

    .line 501
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 502
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 503
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 505
    .local v2, "sw":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_1f

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 526
    .end local v0    # "density":I
    :goto_1e
    return v0

    .line 510
    .restart local v0    # "density":I
    :cond_1f
    sparse-switch v0, :sswitch_data_3c

    .line 526
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1e

    .line 512
    :sswitch_2b
    const/16 v0, 0xa0

    goto :goto_1e

    .line 514
    :sswitch_2e
    const/16 v0, 0xf0

    goto :goto_1e

    :sswitch_31
    move v0, v3

    .line 516
    goto :goto_1e

    :sswitch_33
    move v0, v3

    .line 518
    goto :goto_1e

    .line 520
    :sswitch_35
    const/16 v0, 0x1e0

    goto :goto_1e

    .line 522
    :sswitch_38
    const/16 v0, 0x280

    goto :goto_1e

    .line 510
    nop

    :sswitch_data_3c
    .sparse-switch
        0x78 -> :sswitch_2b
        0xa0 -> :sswitch_2e
        0xd5 -> :sswitch_31
        0xf0 -> :sswitch_33
        0x140 -> :sswitch_35
        0x1e0 -> :sswitch_38
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 435
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_f

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_f
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 441
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 442
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 443
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 444
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    .line 445
    return-void
.end method

.method public setHelpTextCallback(Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V
    .registers 2
    .param p1, "helpTextCallback"    # Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 1321
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 430
    return-void
.end method
