.class public Lcom/sec/android/app/contacts/widget/ContactPhotoView;
.super Landroid/widget/ImageView;
.source "ContactPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;,
        Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;
    }
.end annotation


# static fields
.field private static final BLUR_RADIUS:I = 0xc

.field private static final MSG_UPDATE_PHOTO:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "ContactPhotoView"


# instance fields
.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBorderWidth:I

.field private mDefaultImageBackgroundColor:I

.field private mDestRect:Landroid/graphics/Rect;

.field private mFrameX:I

.field private mFrameY:I

.field private mHasCompanyName:Z

.field private mIsBlurEffectAlwaysOn:Z

.field private mIsBlurEffectOn:Z

.field private mIsDefaultImage:Z

.field private mIsLowQuality:Z

.field private mIsSmailImageCenter:Z

.field private mLargePhotoSize:I

.field private mNewDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

.field private mPhotoSize:I

.field private mPnt:Landroid/graphics/Paint;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    .line 32
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    .line 33
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsDefaultImage:Z

    .line 35
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsSmailImageCenter:Z

    .line 36
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsLowQuality:Z

    .line 38
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    .line 39
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    .line 40
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    .line 41
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    .line 42
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    .line 93
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    .line 32
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    .line 33
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsDefaultImage:Z

    .line 35
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsSmailImageCenter:Z

    .line 36
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsLowQuality:Z

    .line 38
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    .line 39
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    .line 40
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    .line 41
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    .line 42
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    .line 32
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    .line 33
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mHasCompanyName:Z

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsDefaultImage:Z

    .line 35
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsSmailImageCenter:Z

    .line 36
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsLowQuality:Z

    .line 38
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    .line 39
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    .line 40
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    .line 41
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    .line 42
    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method private ApplyBlurEffect()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "ContactPhotoView"

    const-string v1, "ApplyBlurEffect()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    const-string v0, "ContactPhotoView"

    const-string v1, "ApplyBlurEffect() - super.setImageDrawable(mNewDrawable)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_0
    return-void
.end method

.method private ApplyHighQualityPhoto()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/ContactPhotoView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/widget/ContactPhotoView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/widget/ContactPhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->ApplyBlurEffect()V

    return-void
.end method

.method private drawDefaultImage(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 354
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 356
    const-string v4, "ContactPhotoView"

    const-string v5, "drawDefaultImage()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    sub-int v0, v4, v5

    .line 358
    .local v0, "photoSize":I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    div-int/lit8 v1, v4, 0x2

    .line 360
    .local v1, "strokeWidthDelta":I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 361
    .local v2, "x":I
    :goto_0
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x2

    .line 362
    .local v3, "y":I
    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsSmailImageCenter:Z

    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x2

    .line 368
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 371
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 372
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    add-int v5, v2, v0

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 376
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    add-int v5, v2, v1

    add-int v6, v3, v1

    add-int v7, v2, v0

    sub-int/2addr v7, v1

    add-int v8, v3, v0

    sub-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 380
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v9, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 382
    .end local v0    # "photoSize":I
    .end local v1    # "strokeWidthDelta":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    return-void

    .line 360
    .restart local v0    # "photoSize":I
    .restart local v1    # "strokeWidthDelta":I
    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    goto :goto_0

    .line 361
    .restart local v2    # "x":I
    :cond_3
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    goto :goto_1
.end method

.method private getDefaultBitmapImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 385
    move-object v0, p1

    .line 386
    .local v0, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 387
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 388
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "photo":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 390
    :cond_0
    return-void
.end method

.method private initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    if-eqz p2, :cond_0

    .line 108
    sget-object v1, Lcom/android/contacts/R$styleable;->ContactPhotoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->parse(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 111
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    .line 112
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    .line 113
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    .line 114
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    .line 115
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    .line 116
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    .line 117
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setBlurEffectAlways(Z)V

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 126
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    if-nez v1, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    .line 130
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    if-nez v1, :cond_3

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    .line 135
    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    if-nez v1, :cond_4

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    .line 140
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    .line 141
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    .line 142
    return-void
.end method

.method private makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)I
    .locals 14
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x3e8

    const/16 v13, 0xc

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, -0x1

    .line 242
    const-string v9, "ContactPhotoView"

    const-string v10, "makeBlurEffectIfNeeded()"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, "height":I
    instance-of v9, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v9, :cond_3

    .line 245
    const-string v9, "ContactPhotoView"

    const-string v10, "TransitionDrawable"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 246
    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 247
    .local v5, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v5, v12}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 248
    .local v4, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 249
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    instance-of v9, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    .line 250
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "photo":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    :cond_0
    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 255
    :cond_1
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-eqz v9, :cond_6

    if-eqz v1, :cond_6

    .line 256
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v13}, Lcom/android/contacts/util/ContactPhotoUtils;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 258
    iget-object v9, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    .line 259
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 260
    .local v3, "newDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x2

    new-array v0, v8, [Landroid/graphics/drawable/Drawable;

    .line 261
    .local v0, "beforeAndAfter":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v11}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v0, v11

    .line 262
    aput-object v3, v0, v12

    .line 263
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 264
    .local v6, "transition":Landroid/graphics/drawable/TransitionDrawable;
    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    .end local v0    # "beforeAndAfter":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "newDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "td":Landroid/graphics/drawable/TransitionDrawable;
    .end local v6    # "transition":Landroid/graphics/drawable/TransitionDrawable;
    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v7

    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "td":Landroid/graphics/drawable/TransitionDrawable;
    .restart local p1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v7, v8

    .line 267
    goto :goto_0

    .line 269
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_3
    instance-of v9, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_6

    .line 270
    const-string v9, "ContactPhotoView"

    const-string v10, "BitmapDrawable"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 273
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 275
    :cond_4
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-eqz v9, :cond_6

    if-eqz v1, :cond_6

    .line 276
    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v13}, Lcom/android/contacts/util/ContactPhotoUtils;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 278
    iget-object v9, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    .line 279
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_5
    move v7, v8

    .line 282
    goto :goto_0

    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_6
    move v7, v8

    .line 285
    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->recycle()V

    .line 212
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 213
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsDefaultImage:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->drawDefaultImage(Landroid/graphics/Canvas;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 184
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "ContactPhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDraw()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 188
    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 191
    .local v2, "y":I
    :goto_2
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    div-int/lit8 v0, v3, 0x2

    .line 192
    .local v0, "strokeWidthDelta":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    add-int v4, v1, v0

    add-int v5, v2, v0

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    add-int/2addr v6, v1

    sub-int/2addr v6, v0

    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    add-int/2addr v7, v2

    sub-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v8, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBorderWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDestRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 187
    .end local v0    # "strokeWidthDelta":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameX:I

    goto :goto_1

    .line 188
    .restart local v1    # "x":I
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mFrameY:I

    goto :goto_2
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    const-string v0, "ContactPhotoView"

    const-string v1, "recycle()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 292
    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 295
    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 298
    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    .line 300
    :cond_2
    return-void
.end method

.method public setBlurEffect(Z)V
    .locals 0
    .param p1, "isNeeded"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    .line 222
    return-void
.end method

.method public setBlurEffectAlways(Z)V
    .locals 0
    .param p1, "isNeeded"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectAlwaysOn:Z

    .line 226
    return-void
.end method

.method public setDefaultBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mDefaultImageBackgroundColor:I

    .line 351
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 166
    const-string v0, "ContactPhotoView"

    const-string v1, "setImageBitmap()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    return-void
.end method

.method public setImageCenter(Z)V
    .locals 0
    .param p1, "isCenter"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsSmailImageCenter:Z

    .line 394
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    const-string v1, "ContactPhotoView"

    const-string v2, "setImageDrawable()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsBlurEffectOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsDefaultImage:Z

    if-nez v1, :cond_1

    .line 148
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;-><init>(Lcom/sec/android/app/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)V

    .line 149
    .local v0, "photoBlurTask":Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    .end local v0    # "photoBlurTask":Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;
    :goto_0
    return-void

    .line 153
    .restart local v0    # "photoBlurTask":Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 155
    .end local v0    # "photoBlurTask":Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsDefaultImage:Z

    if-eqz v1, :cond_2

    .line 156
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->getDefaultBitmapImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 172
    const-string v0, "ContactPhotoView"

    const-string v1, "setImageResource()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->recycle()V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    return-void
.end method

.method public setIsDefaultImage(Z)V
    .locals 0
    .param p1, "isDefaultImage"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mIsDefaultImage:Z

    .line 347
    return-void
.end method

.method public setLargePhotoSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mLargePhotoSize:I

    .line 239
    return-void
.end method

.method public setSmallPhotoSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mPhotoSize:I

    .line 235
    return-void
.end method
