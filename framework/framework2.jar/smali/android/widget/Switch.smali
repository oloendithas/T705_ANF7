.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field mAttrs:Landroid/util/AttributeSet;

.field mBdOff:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOn:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

.field mBitOff:Landroid/graphics/Bitmap;

.field mBitOffDisabled:Landroid/graphics/Bitmap;

.field mBitOffPressed:Landroid/graphics/Bitmap;

.field mBitOn:Landroid/graphics/Bitmap;

.field mBitOnDisabled:Landroid/graphics/Bitmap;

.field mBitOnPressed:Landroid/graphics/Bitmap;

.field mDefStyle:I

.field private mIsDeviceDefaultTheme:Z

.field mIsKorean:Z

.field private mIsNiePatchImages:Z

.field mIsUSA:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field mTextColorsOff:Landroid/content/res/ColorStateList;

.field mTextColorsOn:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final switchOff:Ljava/lang/CharSequence;

.field final switchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 174
    const v0, 0x101045f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x104067d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x104067e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 145
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 152
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 153
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Switch;->mIsNiePatchImages:Z

    .line 188
    iput p3, p0, Landroid/widget/Switch;->mDefStyle:I

    .line 189
    iput-object p2, p0, Landroid/widget/Switch;->mAttrs:Landroid/util/AttributeSet;

    .line 190
    new-instance v10, Landroid/text/TextPaint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v10, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 192
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iput v11, v10, Landroid/text/TextPaint;->density:F

    .line 193
    iget-object v10, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 195
    sget-object v10, Lcom/android/internal/R$styleable;->Switch:[I

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 198
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 199
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 200
    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 202
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 204
    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 207
    const-string v10, "USA"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/Switch;->mIsUSA:Z

    .line 208
    const-string v10, "KOR"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1bb

    sget-object v10, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1bb

    const/4 v10, 0x1

    :goto_ab
    iput-boolean v10, p0, Landroid/widget/Switch;->mIsKorean:Z

    .line 211
    const v10, 0x1080ccb

    :try_start_b0
    invoke-static {v7, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 212
    .local v4, "delegateBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 213
    .local v2, "chunk":[B
    if-eqz v2, :cond_1be

    const/4 v10, 0x1

    :goto_bb
    iput-boolean v10, p0, Landroid/widget/Switch;->mIsNiePatchImages:Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bd} :catch_351

    .line 218
    .end local v2    # "chunk":[B
    .end local v4    # "delegateBitmap":Landroid/graphics/Bitmap;
    :goto_bd
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v10, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 221
    .local v8, "theme":Landroid/content/res/TypedArray;
    const/16 v10, 0x143

    const/4 v11, 0x0

    :try_start_ca
    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 222
    .local v5, "isDeviceDefault":Z
    const/16 v10, 0x144

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 223
    .local v6, "isHoloTheme":Z
    const/4 v10, 0x1

    if-ne v5, v10, :cond_332

    .line 225
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 226
    const/4 v10, 0x1

    if-ne v6, v10, :cond_25b

    .line 227
    iget-boolean v10, p0, Landroid/widget/Switch;->mIsUSA:Z

    if-eqz v10, :cond_1c1

    .line 228
    const v10, 0x1080cb4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 229
    const v10, 0x1080cb8

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 230
    const v10, 0x1080cb5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 231
    const v10, 0x1080ca8

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 232
    const v10, 0x1080cac

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 233
    const v10, 0x1080ca9

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 274
    :goto_124
    iget-object v10, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    .line 275
    iget-object v10, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mBitOnPressed:Landroid/graphics/Bitmap;

    .line 276
    iget-object v10, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mBitOnDisabled:Landroid/graphics/Bitmap;

    .line 277
    iget-object v10, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    .line 278
    iget-object v10, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mBitOffPressed:Landroid/graphics/Bitmap;

    .line 279
    iget-object v10, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mBitOffDisabled:Landroid/graphics/Bitmap;

    .line 287
    :goto_154
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 288
    .local v1, "appearance":I
    if-eqz v1, :cond_15f

    .line 289
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_15f} :catch_209
    .catchall {:try_start_ca .. :try_end_15f} :catchall_253

    .line 294
    :cond_15f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    .end local v1    # "appearance":I
    .end local v5    # "isDeviceDefault":Z
    .end local v6    # "isHoloTheme":Z
    :goto_162
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 299
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    iput v10, p0, Landroid/widget/Switch;->mTouchSlop:I

    .line 300
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v10

    iput v10, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 304
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 306
    const/4 v9, 0x0

    .line 308
    .local v9, "xpp":Landroid/content/res/XmlResourceParser;
    :try_start_180
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10600d7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    .line 310
    if-eqz v9, :cond_19a

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 312
    :cond_19a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10600d6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    .line 314
    if-eqz v9, :cond_1b4

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1b4} :catch_34c
    .catchall {:try_start_180 .. :try_end_1b4} :catchall_345

    .line 316
    :cond_1b4
    const/4 v9, 0x0

    .line 319
    if-eqz v9, :cond_1ba

    :goto_1b7
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 321
    :cond_1ba
    return-void

    .line 208
    .end local v3    # "config":Landroid/view/ViewConfiguration;
    .end local v8    # "theme":Landroid/content/res/TypedArray;
    .end local v9    # "xpp":Landroid/content/res/XmlResourceParser;
    :cond_1bb
    const/4 v10, 0x0

    goto/16 :goto_ab

    .line 213
    .restart local v2    # "chunk":[B
    .restart local v4    # "delegateBitmap":Landroid/graphics/Bitmap;
    :cond_1be
    const/4 v10, 0x0

    goto/16 :goto_bb

    .line 234
    .end local v2    # "chunk":[B
    .end local v4    # "delegateBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "isDeviceDefault":Z
    .restart local v6    # "isHoloTheme":Z
    .restart local v8    # "theme":Landroid/content/res/TypedArray;
    :cond_1c1
    :try_start_1c1
    iget-boolean v10, p0, Landroid/widget/Switch;->mIsKorean:Z

    if-eqz v10, :cond_20f

    .line 235
    const v10, 0x1080cb7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 236
    const v10, 0x1080cb9

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 237
    const v10, 0x1080cb6

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 238
    const v10, 0x1080cab

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 239
    const v10, 0x1080cad

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 240
    const v10, 0x1080caa

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_207} :catch_209
    .catchall {:try_start_1c1 .. :try_end_207} :catchall_253

    goto/16 :goto_124

    .line 291
    .end local v5    # "isDeviceDefault":Z
    .end local v6    # "isHoloTheme":Z
    :catch_209
    move-exception v10

    .line 294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_162

    .line 242
    .restart local v5    # "isDeviceDefault":Z
    .restart local v6    # "isHoloTheme":Z
    :cond_20f
    const v10, 0x1080c94

    :try_start_212
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 243
    const v10, 0x1080c96

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 244
    const v10, 0x1080c95

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 245
    const v10, 0x1080ca0

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 246
    const v10, 0x1080ca2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 247
    const v10, 0x1080ca1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_251} :catch_209
    .catchall {:try_start_212 .. :try_end_251} :catchall_253

    goto/16 :goto_124

    .line 294
    .end local v5    # "isDeviceDefault":Z
    .end local v6    # "isHoloTheme":Z
    :catchall_253
    move-exception v10

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    throw v10

    .line 250
    .restart local v5    # "isDeviceDefault":Z
    .restart local v6    # "isHoloTheme":Z
    :cond_25b
    const/4 v10, 0x1

    :try_start_25c
    iput-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 251
    iget-boolean v10, p0, Landroid/widget/Switch;->mIsUSA:Z

    if-eqz v10, :cond_2a6

    .line 252
    const v10, 0x1080cba

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 253
    const v10, 0x1080cbe

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 254
    const v10, 0x1080cbb

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 255
    const v10, 0x1080cae

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 256
    const v10, 0x1080cb2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 257
    const v10, 0x1080caf

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_124

    .line 258
    :cond_2a6
    iget-boolean v10, p0, Landroid/widget/Switch;->mIsKorean:Z

    if-eqz v10, :cond_2ee

    .line 259
    const v10, 0x1080cbd

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 260
    const v10, 0x1080cbf

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 261
    const v10, 0x1080cbc

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 262
    const v10, 0x1080cb1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 263
    const v10, 0x1080cb3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 264
    const v10, 0x1080cb0

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_124

    .line 266
    :cond_2ee
    const v10, 0x1080c97

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 267
    const v10, 0x1080c99

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 268
    const v10, 0x1080c98

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 269
    const v10, 0x1080ca3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 270
    const v10, 0x1080ca5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 271
    const v10, 0x1080ca4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v10, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_124

    .line 281
    :cond_332
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 282
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_343} :catch_209
    .catchall {:try_start_25c .. :try_end_343} :catchall_253

    goto/16 :goto_154

    .line 319
    .end local v5    # "isDeviceDefault":Z
    .end local v6    # "isHoloTheme":Z
    .restart local v3    # "config":Landroid/view/ViewConfiguration;
    .restart local v9    # "xpp":Landroid/content/res/XmlResourceParser;
    :catchall_345
    move-exception v10

    if-eqz v9, :cond_34b

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_34b
    throw v10

    .line 317
    :catch_34c
    move-exception v10

    .line 319
    if-eqz v9, :cond_1ba

    goto/16 :goto_1b7

    .line 214
    .end local v3    # "config":Landroid/view/ViewConfiguration;
    .end local v8    # "theme":Landroid/content/res/TypedArray;
    .end local v9    # "xpp":Landroid/content/res/XmlResourceParser;
    :catch_351
    move-exception v10

    goto/16 :goto_bd
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 2
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 877
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 878
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 840
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 841
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 842
    invoke-super {p0, v0}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 843
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 844
    return-void
.end method

.method private getTargetCheckedState()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 881
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 882
    iget v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_16

    .line 884
    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 882
    goto :goto_15

    .line 884
    :cond_18
    iget v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_15

    move v0, v1

    goto :goto_15
.end method

.method private getThumbScrollRange()I
    .registers 3

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 1106
    const/4 v0, 0x0

    .line 1113
    :goto_5
    return v0

    .line 1108
    :cond_6
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1110
    iget-boolean v0, p0, Landroid/widget/Switch;->mIsNiePatchImages:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-nez v0, :cond_25

    .line 1111
    :cond_15
    iget v0, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_5

    .line 1113
    :cond_25
    iget v0, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method private hitThumb(FF)Z
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 760
    iget-object v5, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    .line 769
    :cond_5
    :goto_5
    return v4

    .line 763
    :cond_6
    iget-object v5, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 764
    iget v5, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v3, v5, v6

    .line 765
    .local v3, "thumbTop":I
    iget v5, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v7, 0x3f000000

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v5, v6

    .line 766
    .local v1, "thumbLeft":I
    iget v5, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v5, v1

    iget-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v2, v5, v6

    .line 768
    .local v2, "thumbRight":I
    iget v5, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v5, v6

    .line 769
    .local v0, "thumbBottom":I
    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    int-to-float v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-lez v5, :cond_5

    int-to-float v5, v0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    const/4 v4, 0x1

    goto :goto_5
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 747
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 751
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_a
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_24
    move-object v1, p1

    .line 747
    goto :goto_a
.end method

.method private setSwitchTypefaceByIndex(II)V
    .registers 4
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    .line 426
    :goto_4
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 427
    return-void

    .line 414
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 415
    goto :goto_4

    .line 418
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 419
    goto :goto_4

    .line 422
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 412
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private setThumbPosition(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 890
    if-eqz p1, :cond_c

    :goto_9
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 894
    :goto_b
    return-void

    .line 890
    :cond_c
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    goto :goto_9

    .line 892
    :cond_12
    if-eqz p1, :cond_19

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :cond_19
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    goto :goto_b
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 852
    iput v4, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3e

    move v0, v3

    .line 856
    .local v0, "commitChange":Z
    :goto_12
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 858
    if-eqz v0, :cond_4f

    .line 860
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 861
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 862
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4a

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_42

    cmpg-float v5, v2, v7

    if-gez v5, :cond_40

    move v1, v3

    .line 867
    .local v1, "newState":Z
    :goto_3a
    invoke-direct {p0, v1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 871
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :goto_3d
    return-void

    .end local v0    # "commitChange":Z
    :cond_3e
    move v0, v4

    .line 854
    goto :goto_12

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_40
    move v1, v4

    .line 863
    goto :goto_3a

    :cond_42
    cmpl-float v5, v2, v7

    if-lez v5, :cond_48

    move v1, v3

    goto :goto_3a

    :cond_48
    move v1, v4

    goto :goto_3a

    .line 865
    :cond_4a
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_3a

    .line 869
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_4f
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_3d
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 1128
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1130
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 1134
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1135
    :cond_10
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1137
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1138
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 1082
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1083
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1089
    :cond_a
    :goto_a
    return v0

    .line 1085
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1086
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1087
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_a
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 1094
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1095
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1101
    :cond_a
    :goto_a
    return v0

    .line 1097
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1098
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1099
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_a
.end method

.method public getSwitchMinWidth()I
    .registers 2

    .prologue
    .line 520
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    .prologue
    .line 495
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    .prologue
    .line 543
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 1147
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1149
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1150
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1151
    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1152
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1153
    :cond_15
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 7

    .prologue
    .line 329
    iget-boolean v1, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v1, :cond_24

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Switch;->mAttrs:Landroid/util/AttributeSet;

    sget-object v3, Lcom/android/internal/R$styleable;->Switch:[I

    iget v4, p0, Landroid/widget/Switch;->mDefStyle:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 333
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 334
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_24
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 338
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 1119
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1120
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1121
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1123
    :cond_11
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-boolean v0, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v0, :cond_11

    .line 347
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 348
    iput-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 351
    :cond_b
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 352
    iput-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    :cond_11
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 355
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 960
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    .line 1078
    :cond_13
    :goto_13
    return-void

    .line 967
    :cond_14
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 968
    .local v11, "switchLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 969
    .local v14, "switchTop":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/Switch;->mSwitchRight:I

    .line 970
    .local v12, "switchRight":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 977
    .local v6, "switchBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v14, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 982
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsNiePatchImages:Z

    move/from16 v18, v0

    if-nez v18, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_1dd

    .line 983
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v8, v11, v18

    .line 985
    .local v8, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v10, v14, v18

    .line 986
    .local v10, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v9, v12, v18

    .line 987
    .local v9, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v7, v6, v18

    .line 994
    .local v7, "switchInnerBottom":I
    :goto_96
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14, v9, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbPosition:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 999
    .local v16, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1000
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f1

    .line 1001
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsNiePatchImages:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e3

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    add-int v15, v18, v16

    .line 1003
    .local v15, "thumbLeft":I
    add-int v18, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 1013
    .local v17, "thumbRight":I
    :goto_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v15, v14, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1016
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1017
    .local v5, "rectThumb":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1020
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_246

    .line 1021
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_21b

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_152

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1040
    :cond_152
    :goto_152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 1042
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_347

    .line 1043
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_2a7

    .line 1044
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v14

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    add-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_28c

    .line 1047
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_271

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOnPressed:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1077
    :cond_1d8
    :goto_1d8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_13

    .line 989
    .end local v5    # "rectThumb":Landroid/graphics/Rect;
    .end local v7    # "switchInnerBottom":I
    .end local v8    # "switchInnerLeft":I
    .end local v9    # "switchInnerRight":I
    .end local v10    # "switchInnerTop":I
    .end local v15    # "thumbLeft":I
    .end local v16    # "thumbPos":I
    .end local v17    # "thumbRight":I
    :cond_1dd
    move v8, v11

    .line 990
    .restart local v8    # "switchInnerLeft":I
    move v10, v14

    .line 991
    .restart local v10    # "switchInnerTop":I
    move v9, v12

    .line 992
    .restart local v9    # "switchInnerRight":I
    move v7, v6

    .restart local v7    # "switchInnerBottom":I
    goto/16 :goto_96

    .line 1005
    .restart local v16    # "thumbPos":I
    :cond_1e3
    add-int v15, v8, v16

    .line 1006
    .restart local v15    # "thumbLeft":I
    add-int v18, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbWidth:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .restart local v17    # "thumbRight":I
    goto/16 :goto_f1

    .line 1009
    .end local v15    # "thumbLeft":I
    .end local v17    # "thumbRight":I
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    add-int v15, v18, v16

    .line 1010
    .restart local v15    # "thumbLeft":I
    add-int v18, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .restart local v17    # "thumbRight":I
    goto/16 :goto_f1

    .line 1028
    .restart local v5    # "rectThumb":Landroid/graphics/Rect;
    :cond_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_152

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_152

    .line 1035
    :cond_246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_152

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_152

    .line 1050
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d8

    .line 1052
    :cond_28c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOnDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d8

    .line 1055
    :cond_2a7
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v14

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    add-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1057
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_32c

    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_311

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOffPressed:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d8

    .line 1061
    :cond_311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d8

    .line 1063
    :cond_32c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOffDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d8

    .line 1067
    :cond_347
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_385

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 1070
    .local v13, "switchText":Landroid/text/Layout;
    :goto_351
    if-eqz v13, :cond_1d8

    .line 1071
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v10, v7

    div-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1074
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1d8

    .line 1067
    .end local v13    # "switchText":Landroid/text/Layout;
    :cond_385
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_351
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1157
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1158
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1159
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1163
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1164
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1165
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 1166
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1167
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1168
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1169
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_27
    :goto_27
    return-void

    .line 1165
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_28
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_14

    .line 1171
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 905
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 907
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/Switch;->setThumbPosition(Z)V

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 913
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 914
    .local v3, "switchLeft":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v4, v3, v6

    .line 920
    .local v4, "switchRight":I
    :goto_19
    const/4 v5, 0x0

    .line 921
    .local v5, "switchTop":I
    const/4 v2, 0x0

    .line 922
    .local v2, "switchBottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x70

    sparse-switch v6, :sswitch_data_8a

    .line 925
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 926
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v6

    .line 941
    :goto_2c
    iput v3, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 942
    iput v5, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 943
    iput v2, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 944
    iput v4, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 946
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 947
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0x143

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 949
    .local v1, "isDeviceDefault":Z
    if-eqz v1, :cond_86

    .line 950
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 955
    :goto_49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 956
    return-void

    .line 916
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "isDeviceDefault":Z
    .end local v2    # "switchBottom":I
    .end local v3    # "switchLeft":I
    .end local v4    # "switchRight":I
    .end local v5    # "switchTop":I
    :cond_4d
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 917
    .restart local v4    # "switchRight":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v3, v4, v6

    .restart local v3    # "switchLeft":I
    goto :goto_19

    .line 930
    .restart local v2    # "switchBottom":I
    .restart local v5    # "switchTop":I
    :sswitch_5c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 932
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v6

    .line 933
    goto :goto_2c

    .line 936
    :sswitch_77
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v2, v6, v7

    .line 937
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v5, v2, v6

    goto :goto_2c

    .line 952
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "isDeviceDefault":Z
    :cond_86
    iput-boolean v8, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    goto :goto_49

    .line 922
    nop

    :sswitch_data_8a
    .sparse-switch
        0x10 -> :sswitch_5c
        0x50 -> :sswitch_77
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    .line 658
    iget-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_d

    .line 659
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 731
    :goto_c
    return-void

    .line 663
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 664
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0x143

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 666
    .local v1, "isDeviceDefault":Z
    if-eqz v1, :cond_78

    .line 667
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 672
    :goto_22
    iget-boolean v6, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v6, :cond_7b

    .line 673
    iget-object v6, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v6, :cond_32

    .line 674
    iget-object v6, p0, Landroid/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 676
    :cond_32
    iget-object v6, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v6, :cond_3e

    .line 677
    iget-object v6, p0, Landroid/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 704
    :cond_3e
    :goto_3e
    iget-boolean v6, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v6, :cond_94

    iget-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_94

    .line 705
    iget-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    .line 706
    .local v5, "switchWidth":I
    iget-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 708
    .local v4, "switchHeight":I
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 720
    :goto_60
    iput v5, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 721
    iput v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 723
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 725
    .local v3, "measuredHeight":I
    if-ge v3, v4, :cond_74

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    invoke-virtual {p0, v6, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 730
    :cond_74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_c

    .line 669
    .end local v3    # "measuredHeight":I
    .end local v4    # "switchHeight":I
    .end local v5    # "switchWidth":I
    :cond_78
    iput-boolean v8, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    goto :goto_22

    .line 680
    :cond_7b
    iget-object v6, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v6, :cond_87

    .line 681
    iget-object v6, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 683
    :cond_87
    iget-object v6, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v6, :cond_3e

    .line 684
    iget-object v6, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_3e

    .line 710
    :cond_94
    iget-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 711
    iget-object v6, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 712
    .local v2, "maxTextWidth":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v7, v2, 0x2

    iget v8, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 714
    .restart local v5    # "switchWidth":I
    iget-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 716
    .restart local v4    # "switchHeight":I
    iget v6, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    iput v6, p0, Landroid/widget/Switch;->mThumbWidth:I

    goto :goto_60
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 737
    iget-object v1, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v1, :cond_c

    .line 744
    :cond_b
    :goto_b
    return-void

    .line 740
    :cond_c
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 741
    .local v0, "layout":Landroid/text/Layout;
    :goto_14
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 742
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 740
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_2c
    iget-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_14
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 774
    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 776
    .local v0, "action":I
    packed-switch v0, :pswitch_data_a2

    .line 836
    :cond_e
    :goto_e
    :pswitch_e
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_12
    :goto_12
    return v5

    .line 778
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 779
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 780
    .local v4, "y":F
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0, v3, v4}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 781
    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 782
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 783
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_e

    .line 789
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2e
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_ae

    goto :goto_e

    .line 795
    :pswitch_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 796
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 797
    .restart local v4    # "y":F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_5a

    iget v6, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_e

    .line 799
    :cond_5a
    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 800
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 801
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 802
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_12

    .line 809
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 810
    .restart local v3    # "x":F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 811
    .local v1, "dx":F
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 813
    .local v2, "newPos":F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_12

    .line 814
    iput v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 815
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 816
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_12

    .line 826
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_8f
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_98

    .line 827
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_12

    .line 830
    :cond_98
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 831
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_e

    .line 776
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_8f
        :pswitch_2e
        :pswitch_8f
    .end packed-switch

    .line 789
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_e
        :pswitch_34
        :pswitch_68
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 898
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 899
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(Z)V

    .line 900
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 901
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 507
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 509
    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 483
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 484
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 485
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 364
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 371
    .local v1, "appearance":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 373
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_54

    .line 374
    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 380
    :goto_12
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 382
    .local v4, "ts":I
    if-eqz v4, :cond_2c

    .line 383
    int-to-float v6, v4

    iget-object v7, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2c

    .line 384
    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 391
    :cond_2c
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 393
    .local v5, "typefaceIndex":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 396
    .local v3, "styleIndex":I
    invoke-direct {p0, v5, v3}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 398
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 400
    .local v0, "allCaps":Z
    if-eqz v0, :cond_5b

    .line 401
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 402
    iget-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 407
    :goto_50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 408
    return-void

    .line 377
    .end local v0    # "allCaps":Z
    .end local v3    # "styleIndex":I
    .end local v4    # "ts":I
    .end local v5    # "typefaceIndex":I
    :cond_54
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_12

    .line 404
    .restart local v0    # "allCaps":Z
    .restart local v3    # "styleIndex":I
    .restart local v4    # "ts":I
    .restart local v5    # "typefaceIndex":I
    :cond_5b
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_50
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 467
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 468
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 473
    :cond_13
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 436
    if-lez p2, :cond_36

    .line 437
    if-nez p1, :cond_2d

    .line 438
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 443
    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 445
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 446
    .local v1, "typefaceStyle":I
    :goto_13
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 447
    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 448
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_34

    const/high16 v2, -0x41800000

    :goto_29
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 454
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_2c
    return-void

    .line 440
    :cond_2d
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_32
    move v1, v2

    .line 445
    goto :goto_13

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_34
    move v2, v3

    .line 448
    goto :goto_29

    .line 450
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_36
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 451
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 452
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2c
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 651
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 653
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 632
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 634
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 589
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 590
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 591
    return-void
.end method

.method public setThumbResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 531
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 533
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 554
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 556
    return-void
.end method

.method public setTrackResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1142
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
