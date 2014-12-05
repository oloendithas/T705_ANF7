.class public Lcom/android/keyguard/sec/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mBatteryPaint:Landroid/graphics/Paint;

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private mButtonPadding:F

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mInvalidString:Ljava/lang/String;

.field mInvalidTextPaint:Landroid/graphics/Paint;

.field private mIsShowBatteryIcon:Z

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field mShowPercent:Z

.field private mTextHeight:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/android/keyguard/sec/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mShowPercent:Z

    .line 79
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 81
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 82
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 83
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    .line 84
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 89
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 193
    new-instance v9, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/keyguard/sec/BatteryMeterView;Lcom/android/keyguard/sec/BatteryMeterView$1;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    .line 471
    new-instance v9, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/keyguard/sec/BatteryMeterView;Lcom/android/keyguard/sec/BatteryMeterView$1;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mDemoTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    .line 494
    new-instance v9, Lcom/android/keyguard/sec/BatteryMeterView$1;

    invoke-direct {v9, p0}, Lcom/android/keyguard/sec/BatteryMeterView$1;-><init>(Lcom/android/keyguard/sec/BatteryMeterView;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    .line 226
    sget-object v9, Lcom/android/keyguard/sec/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v10, "BatteryMeterView"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 230
    .local v8, "res":Landroid/content/res/Resources;
    const/4 v9, 0x2

    new-array v5, v9, [I

    fill-array-data v5, :array_17e

    .line 232
    .local v5, "levels":[I
    const/4 v9, 0x2

    new-array v1, v9, [I

    fill-array-data v1, :array_186

    .line 234
    .local v1, "colors":[I
    const/4 v9, 0x2

    new-array v3, v9, [I

    fill-array-data v3, :array_18e

    .line 236
    .local v3, "green_colors":[I
    const/4 v9, 0x4

    new-array v7, v9, [I

    fill-array-data v7, :array_196

    .line 237
    .local v7, "red_levels":[I
    const/4 v9, 0x4

    new-array v6, v9, [I

    fill-array-data v6, :array_1a2

    .line 239
    .local v6, "red_colors":[I
    array-length v0, v5

    .line 240
    .local v0, "N":I
    mul-int/lit8 v9, v0, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mColors:[I

    .line 241
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_74
    if-ge v4, v0, :cond_8b

    .line 242
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mColors:[I

    mul-int/lit8 v10, v4, 0x2

    aget v11, v5, v4

    aput v11, v9, v10

    .line 243
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mColors:[I

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v11, v1, v4

    aput v11, v9, v10

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 246
    :cond_8b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "status_bar_show_battery_percent"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_17b

    const/4 v9, 0x1

    :goto_99
    iput-boolean v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mShowPercent:Z

    .line 249
    const-string v9, "!"

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 250
    const-string v9, "X"

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    .line 252
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 253
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const v10, 0x7f070007

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 255
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 259
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 260
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 261
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 264
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 265
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    const-string v9, "sans-serif-condensed"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 267
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 268
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 270
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 271
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    const-string v9, "sans-serif"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 273
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 274
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 276
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    .line 277
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v10, -0x17cbf7

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    const-string v9, "sans-serif"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 279
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 280
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 282
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 283
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 285
    iget-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v10, 0x7f070008

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    invoke-static {v8}, Lcom/android/keyguard/sec/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    .line 287
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 288
    return-void

    .line 246
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_17b
    const/4 v9, 0x0

    goto/16 :goto_99

    .line 230
    :array_17e
    .array-data 4
        0x4
        0x64
    .end array-data

    .line 232
    :array_186
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 234
    :array_18e
    .array-data 4
        -0x1
        -0x7433eb
    .end array-data

    .line 236
    :array_196
    .array-data 4
        0x4
        0xa
        0x14
        0x64
    .end array-data

    .line 237
    :array_1a2
    .array-data 4
        -0xcf00
        -0xcf00
        -0x2900
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/BatteryMeterView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/BatteryMeterView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getColorForLevel(I)I
    .registers 8
    .param p1, "percent"    # I

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "color":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mColors:[I

    array-length v4, v4

    if-ge v2, v4, :cond_18

    .line 317
    iget-object v4, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mColors:[I

    aget v3, v4, v2

    .line 318
    .local v3, "thresh":I
    iget-object v4, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mColors:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    .line 319
    if-gt p1, v3, :cond_15

    move v1, v0

    .line 322
    .end local v0    # "color":I
    .end local v3    # "thresh":I
    .local v1, "color":I
    :goto_14
    return v1

    .line 316
    .end local v1    # "color":I
    .restart local v0    # "color":I
    .restart local v3    # "thresh":I
    :cond_15
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .end local v3    # "thresh":I
    :cond_18
    move v1, v0

    .line 322
    .end local v0    # "color":I
    .restart local v1    # "color":I
    goto :goto_14
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .registers 9
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 291
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 292
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 293
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v5, v3

    if-ge v0, v5, :cond_1e

    .line 294
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 295
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 293
    add-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 297
    :cond_1e
    array-length v5, v3

    new-array v4, v5, [F

    .line 298
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_22
    array-length v5, v3

    if-ge v0, v5, :cond_3a

    .line 299
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 300
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 298
    add-int/lit8 v0, v0, 0x2

    goto :goto_22

    .line 302
    :cond_3a
    return-object v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 31
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mDemoMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_81

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mDemoTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    move-object/from16 v19, v0

    .line 329
    .local v19, "tracker":Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;
    :goto_e
    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$500(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8b

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mHealth:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$600(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3e

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mHealth:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$600(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3e

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mHealth:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$600(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8b

    .line 334
    :cond_3e
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/BatteryMeterView;->mBlinkingNeeded:Z

    .line 336
    sget-object v23, Lcom/android/keyguard/sec/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v24, "battery icon blink..."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_68

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const-wide/16 v25, 0x3e8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    :cond_68
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v23, v0

    if-nez v23, :cond_88

    const/16 v23, 0x1

    :goto_72
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v23, v0

    if-nez v23, :cond_93

    .line 468
    :cond_80
    :goto_80
    return-void

    .line 327
    .end local v19    # "tracker":Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    move-object/from16 v19, v0

    goto :goto_e

    .line 341
    .restart local v19    # "tracker":Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;
    :cond_88
    const/16 v23, 0x0

    goto :goto_72

    .line 347
    :cond_8b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/BatteryMeterView;->mBlinkingNeeded:Z

    .line 351
    :cond_93
    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$100(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v13

    .line 352
    .local v13, "level":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_80

    .line 354
    int-to-float v0, v13

    move/from16 v23, v0

    const/high16 v24, 0x42c80000

    div-float v10, v23, v24

    .line 355
    .local v10, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    .line 356
    .local v17, "pt":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    .line 357
    .local v15, "pl":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    .line 358
    .local v16, "pr":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    .line 359
    .local v14, "pb":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v17

    sub-int v11, v23, v14

    .line 360
    .local v11, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v15

    sub-int v20, v23, v16

    .line 362
    .local v20, "width":I
    int-to-float v0, v11

    move/from16 v23, v0

    const v24, 0x3df5c28f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonHeight:I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v11

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offset(FF)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090006

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonPadding:F

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3e800000

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonPadding:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3e800000

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonPadding:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x40a00000

    add-float v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 390
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/keyguard/sec/BatteryMeterView;->getColorForLevel(I)I

    move-result v9

    .line 391
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    sget-object v23, Lcom/android/keyguard/sec/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDraw batteryColor : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v23, 0x60

    move/from16 v0, v23

    if-lt v13, v0, :cond_491

    .line 395
    const/high16 v10, 0x3f800000

    .line 400
    :cond_28c
    :goto_28c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/high16 v23, 0x3f800000

    cmpl-float v23, v10, v23

    if-nez v23, :cond_49a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    :goto_29e
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x3f800000

    sub-float v26, v26, v10

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 405
    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 410
    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsPlugged:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$700(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)Z

    move-result v23

    if-eqz v23, :cond_56a

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$500(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_56a

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40900000

    div-float v24, v24, v25

    add-float v6, v23, v24

    .line 413
    .local v6, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x40c00000

    div-float v24, v24, v25

    add-float v8, v23, v24

    .line 414
    .local v8, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40e00000

    div-float v24, v24, v25

    sub-float v7, v23, v24

    .line 415
    .local v7, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x41200000

    div-float v24, v24, v25

    sub-float v5, v23, v24

    .line 416
    .local v5, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    cmpl-float v23, v23, v6

    if-nez v23, :cond_3ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-nez v23, :cond_3ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    cmpl-float v23, v23, v7

    if-nez v23, :cond_3ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    cmpl-float v23, v23, v5

    if-eqz v23, :cond_4f3

    .line 418
    :cond_3ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->moveTo(FF)V

    .line 423
    const/4 v12, 0x2

    .local v12, "i":I
    :goto_430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_4a2

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    aget v25, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v12, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    add-int/lit8 v12, v12, 0x2

    goto :goto_430

    .line 396
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    .end local v12    # "i":I
    :cond_491
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v13, v0, :cond_28c

    .line 397
    const/4 v10, 0x0

    goto/16 :goto_28c

    .line 400
    :cond_49a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    goto/16 :goto_29e

    .line 428
    .restart local v5    # "bb":F
    .restart local v6    # "bl":F
    .restart local v7    # "br":F
    .restart local v8    # "bt":F
    .restart local v12    # "i":I
    :cond_4a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 438
    .end local v12    # "i":I
    :cond_4f3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBlinkingNeeded:Z

    move/from16 v23, v0

    if-nez v23, :cond_510

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 443
    :cond_510
    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$500(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_80

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mPlugType:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$200(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_80

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000

    mul-float v21, v23, v24

    .line 446
    .local v21, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f

    mul-float v22, v23, v24

    .line 447
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_80

    .line 450
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_56a
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v13, v0, :cond_5b2

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000

    mul-float v21, v23, v24

    .line 452
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f

    mul-float v22, v23, v24

    .line 453
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_80

    .line 454
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_5b2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mShowPercent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_80

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$100(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_80

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    int-to-float v0, v11

    move/from16 v25, v0

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->access$100(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I

    move-result v23

    const/16 v26, 0x64

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_642

    const v23, 0x3ec28f5c

    :goto_5de
    mul-float v23, v23, v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/BatteryMeterView;->mTextHeight:F

    .line 460
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 461
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000

    mul-float v21, v23, v24

    .line 462
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef0a3d7

    mul-float v22, v23, v24

    .line 463
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_80

    .line 455
    .end local v18    # "str":Ljava/lang/String;
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_642
    const/high16 v23, 0x3f000000

    goto :goto_5de
.end method

.method public onAttachedToWindow()V
    .registers 5

    .prologue
    .line 197
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 198
    sget-object v2, Lcom/android/keyguard/sec/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 203
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_2e

    .line 205
    iget-object v2, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 207
    :cond_2e
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 211
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 212
    sget-object v0, Lcom/android/keyguard/sec/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mTracker:Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v2, 0x3f400000

    .line 307
    iput p2, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mHeight:I

    .line 308
    iput p1, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWidth:I

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/BatteryMeterView;->mWarningTextHeight:F

    .line 312
    return-void
.end method
