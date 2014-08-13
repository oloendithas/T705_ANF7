.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field private static final BATTERY_UNDER_VOLTAGE:I = 0x9

.field private static final BLINKING_INTERVAL:I = 0x3e8

.field public static final EMPTY:I = 0x4

.field public static final ENABLE_PERCENT:Z = true

.field public static final FULL:I = 0x60

.field private static final MSG_POST_INVALIDATE:I = 0x1

.field public static final SHOW_100_PERCENT:Z

.field public static final SINGLE_DIGIT_PERCENT:Z

.field public static final SUBPIXEL:F

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

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

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

.field mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 74
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 76
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 77
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 78
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    .line 79
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 84
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 192
    new-instance v9, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 534
    new-instance v9, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 558
    new-instance v9, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    .line 225
    sget-object v9, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v10, "BatteryMeterView"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 229
    .local v8, "res":Landroid/content/res/Resources;
    const/4 v9, 0x2

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 231
    .local v5, "levels":[I
    const/4 v9, 0x2

    new-array v1, v9, [I

    fill-array-data v1, :array_1

    .line 233
    .local v1, "colors":[I
    const/4 v9, 0x2

    new-array v3, v9, [I

    fill-array-data v3, :array_2

    .line 235
    .local v3, "green_colors":[I
    const/4 v9, 0x4

    new-array v7, v9, [I

    fill-array-data v7, :array_3

    .line 236
    .local v7, "red_levels":[I
    const/4 v9, 0x4

    new-array v6, v9, [I

    fill-array-data v6, :array_4

    .line 241
    .local v6, "red_colors":[I
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v9, :cond_0

    .line 242
    move-object v5, v7

    .line 243
    move-object v1, v6

    .line 254
    :cond_0
    array-length v0, v5

    .line 255
    .local v0, "N":I
    mul-int/lit8 v9, v0, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 256
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 257
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v10, v4, 0x2

    aget v11, v5, v4

    aput v11, v9, v10

    .line 258
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v11, v1, v4

    aput v11, v9, v10

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "status_bar_show_battery_percent"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 265
    const-string v9, "!"

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 266
    const-string v9, "X"

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    .line 268
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 272
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const v10, 0x7f090007

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 275
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 279
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 280
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 281
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 282
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 285
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    const-string v9, "sans-serif-condensed"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 287
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 288
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 291
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v9, :cond_3

    .line 292
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    :goto_2
    const-string v9, "sans-serif"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 297
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 298
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 300
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    .line 304
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v10, -0x17cbf7

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    const-string v9, "sans-serif"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 307
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 308
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 312
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 313
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 315
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mBatteryColorForMelius:Z

    if-eqz v9, :cond_4

    .line 316
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v10, 0x7f09000b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    :goto_3
    invoke-static {v8}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    .line 328
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 329
    return-void

    .line 261
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 294
    .restart local v2    # "font":Landroid/graphics/Typeface;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 322
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v10, 0x7f090009

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 229
    :array_0
    .array-data 4
        0x4
        0x64
    .end array-data

    .line 231
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 233
    :array_2
    .array-data 4
        -0x1
        -0x7433eb
    .end array-data

    .line 235
    :array_3
    .array-data 4
        0x4
        0xa
        0x14
        0x64
    .end array-data

    .line 236
    :array_4
    .array-data 4
        -0xcf00
        -0xcf00
        -0x2900
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getColorForLevel(I)I
    .locals 6
    .param p1, "percent"    # I

    .prologue
    const/4 v5, 0x2

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "color":I
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mNotUseColoredBatteryChargingIcon:Z

    if-eqz v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    if-ne v3, v5, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v3, :cond_1

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    .line 373
    :goto_0
    return v3

    .line 367
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 368
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    .line 369
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 370
    if-gt p1, v2, :cond_2

    move v3, v0

    .line 371
    goto :goto_0

    .line 367
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v2    # "thresh":I
    :cond_3
    move v3, v0

    .line 373
    goto :goto_0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 332
    const v5, 0x7f070005

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 333
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 334
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 335
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 336
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 334
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 338
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 339
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 340
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 341
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 339
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 343
    :cond_1
    return-object v4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 538
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 540
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 541
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 545
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 549
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 551
    :cond_3
    if-eqz v1, :cond_4

    .line 552
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 554
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v19, v0

    .line 380
    .local v19, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 386
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mBlinkingNeeded:Z

    .line 388
    sget-object v23, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v24, "battery icon blink..."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const-wide/16 v25, 0x3e8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v23, v0

    if-nez v23, :cond_4

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 531
    :cond_2
    :goto_2
    return-void

    .line 378
    .end local v19    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 393
    .restart local v19    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_4
    const/16 v23, 0x0

    goto :goto_1

    .line 399
    :cond_5
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mBlinkingNeeded:Z

    .line 403
    :cond_6
    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 404
    .local v13, "level":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_2

    .line 406
    int-to-float v0, v13

    move/from16 v23, v0

    const/high16 v24, 0x42c80000

    div-float v10, v23, v24

    .line 407
    .local v10, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    .line 408
    .local v17, "pt":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    .line 409
    .local v15, "pl":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    .line 410
    .local v16, "pr":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    .line 411
    .local v14, "pb":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v17

    sub-int v11, v23, v14

    .line 412
    .local v11, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v15

    sub-int v20, v23, v16

    .line 414
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

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v11

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offset(FF)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0013

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonPadding:F

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

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

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonPadding:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

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

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonPadding:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x40a00000

    add-float v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 442
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v9

    .line 443
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    sget-object v23, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

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

    .line 446
    const/16 v23, 0x60

    move/from16 v0, v23

    if-lt v13, v0, :cond_8

    .line 447
    const/high16 v10, 0x3f800000

    .line 453
    :cond_7
    :goto_3
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    if-eqz v23, :cond_9

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->online:I

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000

    mul-float v21, v23, v24

    .line 457
    .local v21, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f

    mul-float v22, v23, v24

    .line 458
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 448
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_8
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v13, v0, :cond_7

    .line 449
    const/4 v10, 0x0

    goto :goto_3

    .line 462
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/high16 v23, 0x3f800000

    cmpl-float v23, v10, v23

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

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

    .line 467
    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 472
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40900000

    div-float v24, v24, v25

    add-float v6, v23, v24

    .line 475
    .local v6, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x40c00000

    div-float v24, v24, v25

    add-float v8, v23, v24

    .line 476
    .local v8, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40e00000

    div-float v24, v24, v25

    sub-float v7, v23, v24

    .line 477
    .local v7, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x41200000

    div-float v24, v24, v25

    sub-float v5, v23, v24

    .line 478
    .local v5, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    cmpl-float v23, v23, v6

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    cmpl-float v23, v23, v7

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    cmpl-float v23, v23, v5

    if-eqz v23, :cond_d

    .line 480
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->moveTo(FF)V

    .line 485
    const/4 v12, 0x2

    .local v12, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_c

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    aget v25, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v12, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 485
    add-int/lit8 v12, v12, 0x2

    goto :goto_5

    .line 462
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    .end local v12    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    goto/16 :goto_4

    .line 490
    .restart local v5    # "bb":F
    .restart local v6    # "bl":F
    .restart local v7    # "br":F
    .restart local v8    # "bt":F
    .restart local v12    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    .end local v12    # "i":I
    :cond_d
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mBlinkingNeeded:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 505
    :cond_e
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v23, :cond_f

    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v23, :cond_2

    :cond_f
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    if-nez v23, :cond_2

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000

    mul-float v21, v23, v24

    .line 509
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f

    mul-float v22, v23, v24

    .line 510
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 513
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_10
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v13, v0, :cond_11

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000

    mul-float v21, v23, v24

    .line 515
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f

    mul-float v22, v23, v24

    .line 516
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 517
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v23, v0

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    int-to-float v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v23, v0

    const/16 v26, 0x64

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const v23, 0x3ec28f5c

    :goto_6
    mul-float v23, v23, v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

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

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    .line 523
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 524
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000

    mul-float v21, v23, v24

    .line 525
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef0a3d7

    mul-float v22, v23, v24

    .line 526
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 518
    .end local v18    # "str":Ljava/lang/String;
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_12
    const/high16 v23, 0x3f000000

    goto :goto_6
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 196
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 197
    sget-object v2, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 202
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 211
    sget-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v2, 0x3f400000

    .line 348
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 349
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 350
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    .line 353
    return-void
.end method
