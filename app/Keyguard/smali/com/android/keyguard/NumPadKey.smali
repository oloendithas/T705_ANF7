.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/widget/LinearLayout;
.source "NumPadKey.java"


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field mDigit:I

.field mDigitText:Landroid/widget/TextView;

.field mEnableHaptics:Z

.field mExtraText:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field mTextView:Landroid/widget/TextView;

.field mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v11, 0x7f000000

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x40000000

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 40
    iput-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 41
    iput-object v7, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    .line 42
    iput-object v7, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    .line 45
    new-instance v6, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 76
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    .line 77
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    const v7, 0x7f0d0001

    invoke-virtual {v6, p1, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 79
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 82
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v10, v8, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 83
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v10, v8, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 85
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    sget-object v6, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setTextViewResId(I)V

    .line 92
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v6, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v6, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 94
    new-instance v6, Lcom/android/keyguard/ObscureSpeechDelegate;

    invoke-direct {v6, p1}, Lcom/android/keyguard/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 96
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    .line 98
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v6

    if-nez v6, :cond_aa

    .line 99
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v6

    if-eqz v6, :cond_104

    .line 100
    const-string v6, "/system/fonts/SamsungSans-Num4L.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 101
    .local v4, "tfDigit":Landroid/graphics/Typeface;
    const-string v6, "/system/fonts/SamsungSans-Num4Lv.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 102
    .local v5, "tfExtra":Landroid/graphics/Typeface;
    if-eqz v4, :cond_aa

    if-eqz v5, :cond_aa

    .line 103
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    .end local v4    # "tfDigit":Landroid/graphics/Typeface;
    .end local v5    # "tfExtra":Landroid/graphics/Typeface;
    :cond_aa
    :goto_aa
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-ltz v6, :cond_103

    .line 117
    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v6, :cond_dd

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 121
    :cond_dd
    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v6, :cond_103

    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v6, v6

    iget v7, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v6, v7, :cond_103

    .line 122
    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v7, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    aget-object v1, v6, v7

    .line 123
    .local v1, "extra":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 124
    .local v2, "extraLen":I
    if-lez v2, :cond_103

    .line 125
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0002

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 130
    .end local v1    # "extra":Ljava/lang/String;
    .end local v2    # "extraLen":I
    :cond_103
    return-void

    .line 107
    :cond_104
    const-string v6, "/system/fonts/SamsungSans-Num4Tv.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 108
    .local v3, "tf":Landroid/graphics/Typeface;
    if-eqz v3, :cond_aa

    .line 109
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_aa
.end method


# virtual methods
.method public doHapticKeyClick()V
    .registers 3

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    if-eqz v0, :cond_9

    .line 152
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 156
    :cond_9
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 138
    return-void
.end method

.method public setTextViewResId(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    .line 146
    iput p1, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    .line 147
    return-void
.end method
