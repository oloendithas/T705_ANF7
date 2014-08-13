.class public Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
.super Landroid/widget/EditText;
.source "EllipsisTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mFontSize:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F

.field private mScaledWidth:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 50
    const/high16 v0, 0x42360000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 55
    const/high16 v0, 0x41c00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 60
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 65
    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 70
    const/high16 v0, 0x43f00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 81
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    .line 101
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 50
    const/high16 v0, 0x42360000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 55
    const/high16 v0, 0x41c00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 60
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 65
    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 70
    const/high16 v0, 0x43f00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 81
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 111
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 113
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 50
    const/high16 v0, 0x42360000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 55
    const/high16 v0, 0x41c00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 60
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 65
    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 70
    const/high16 v0, 0x43f00000

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 81
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 127
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 301
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 311
    return-void
.end method

.method public getFontSizeRatio()D
    .locals 3

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L

    .line 261
    const-string v2, "feature_use_7_font_size"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    packed-switch v2, :pswitch_data_0

    .line 289
    :goto_0
    :pswitch_0
    return-wide v0

    .line 264
    :pswitch_1
    const-wide v0, 0x3fe947ae147ae148L

    goto :goto_0

    .line 266
    :pswitch_2
    const-wide v0, 0x3fec7ae147ae147bL

    goto :goto_0

    .line 271
    :pswitch_3
    const-wide v0, 0x3ff199999999999aL

    goto :goto_0

    .line 273
    :pswitch_4
    const-wide v0, 0x3ff35c28f5c28f5cL

    goto :goto_0

    .line 276
    :pswitch_5
    const-wide v0, 0x3ff5eb851eb851ecL

    goto :goto_0

    .line 279
    :cond_0
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    packed-switch v2, :pswitch_data_1

    :pswitch_6
    goto :goto_0

    .line 281
    :pswitch_7
    const-wide v0, 0x3feb333333333333L

    goto :goto_0

    .line 283
    :pswitch_8
    const-wide v0, 0x3fedc28f5c28f5c3L

    goto :goto_0

    .line 289
    :pswitch_9
    const-wide v0, 0x3ff4cccccccccccdL

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 279
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public getLocalwidth()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    return v0
.end method

.method public getScaleTextSize()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 137
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v10, 0x0

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 322
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    .line 324
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 325
    .local v2, "textWidth":F
    const/4 v6, 0x0

    .line 326
    .local v6, "measureWidth":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getFontSizeRatio()D

    move-result-wide v8

    div-double/2addr v3, v8

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v7, v0

    .line 327
    .local v7, "textSize":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 329
    .local v1, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    .line 331
    if-ge p3, p4, :cond_5

    .line 333
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 336
    :cond_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 337
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 350
    cmpl-float v0, v6, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    .line 390
    :cond_1
    :goto_1
    return-void

    .line 341
    :cond_2
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpg-float v0, v7, v0

    if-gez v0, :cond_4

    .line 342
    iget v7, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 347
    :cond_3
    :goto_2
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 343
    :cond_4
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpl-float v0, v7, v0

    if-lez v0, :cond_3

    .line 344
    iget v7, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    goto :goto_2

    .line 352
    :cond_5
    if-le p3, p4, :cond_1

    .line 354
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 357
    :cond_6
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v7, v0

    .line 358
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 370
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 371
    cmpl-float v0, v6, v2

    if-lez v0, :cond_d

    .line 372
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 373
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 384
    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 385
    goto :goto_1

    .line 362
    :cond_7
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpg-float v0, v7, v0

    if-gez v0, :cond_9

    .line 363
    iget v7, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 368
    :cond_8
    :goto_5
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 364
    :cond_9
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpl-float v0, v7, v0

    if-lez v0, :cond_8

    .line 365
    iget v7, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    goto :goto_5

    .line 376
    :cond_a
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpg-float v0, v7, v0

    if-gez v0, :cond_c

    .line 377
    iget v7, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 382
    :cond_b
    :goto_6
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_4

    .line 378
    :cond_c
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpl-float v0, v7, v0

    if-lez v0, :cond_b

    .line 379
    iget v7, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    goto :goto_6

    .line 387
    :cond_d
    cmpg-float v0, v6, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_6

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 143
    .local v1, "ret":Z
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 148
    :cond_0
    return v1
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 156
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    .line 157
    .local v0, "added":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v2

    .line 158
    .local v2, "removed":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 159
    .local v1, "length":I
    if-le v0, v2, :cond_2

    .line 160
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 161
    sub-int v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 162
    sub-int v3, v0, v2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 175
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 176
    :cond_1
    :goto_1
    return-void

    .line 163
    .restart local v0    # "added":I
    .restart local v1    # "length":I
    .restart local v2    # "removed":I
    :cond_2
    if-le v2, v0, :cond_1

    .line 164
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 165
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 166
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    goto :goto_0

    .line 170
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method

.method public setFontSize(I)V
    .locals 0
    .param p1, "fontSize"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 258
    return-void
.end method

.method public setLocalwidth(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 190
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    .line 191
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0
    .param p1, "maxTextSize"    # F

    .prologue
    .line 218
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 219
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .param p1, "minTextSize"    # F

    .prologue
    .line 232
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 233
    return-void
.end method

.method public setScaleTextSize(F)V
    .locals 0
    .param p1, "scaleTextSize"    # F

    .prologue
    .line 246
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 247
    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0
    .param p1, "scaledDensity"    # F

    .prologue
    .line 204
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 205
    return-void
.end method

.method public setScaledWidth(F)V
    .locals 0
    .param p1, "scaleWidth"    # F

    .prologue
    .line 253
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 254
    return-void
.end method
