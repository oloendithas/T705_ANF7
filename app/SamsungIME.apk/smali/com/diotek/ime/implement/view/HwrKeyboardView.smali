.class public Lcom/diotek/ime/implement/view/HwrKeyboardView;
.super Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
.source "HwrKeyboardView.java"


# static fields
.field private static final INVALID_INTEGER_VALUE:I = -0x80000000


# instance fields
.field private DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

.field private mDefaultCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKeyLabelSize:I

.field private final mDefaultSymbolFixedValues:[Ljava/lang/String;

.field private mEnterKeyLabelSize:I

.field private mFloatingQwertyKeyIconOffsetY:I

.field private mHorizontalLine:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableSmile:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

.field private mKeySettingIcon:Landroid/graphics/drawable/Drawable;

.field private mKeySplitIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

.field private final mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValues:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

.field private mLefttArrow:Landroid/graphics/drawable/Drawable;

.field private mLongPressableIcon:Landroid/graphics/drawable/Drawable;

.field private mMonthKeyNumberLabelSize:I

.field private mMonthKeyTextLabelSize:I

.field private mNextPageKeyLabelSize:I

.field private mPreviewBg:Landroid/graphics/drawable/Drawable;

.field private mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

.field private mPreviewMinWidth:I

.field private mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

.field private mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

.field private final mQuickSymbolPopupSecondary1st:[Ljava/lang/String;

.field private final mQuickSymbolPopupSecondary2nd:[Ljava/lang/String;

.field private mQwertyKeyIconOffsetY:I

.field private mQwertyNonExtraLabelKeyOffsetY:I

.field private mRangeKeyLabelSize:I

.field private mRightArrow:Landroid/graphics/drawable/Drawable;

.field private mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKeyLanguageLabelSize:I

.field private mSymbolKeyLabelSize:I

.field private mSymbolPageNumberLabelSize:I

.field private mVerticalLine:Landroid/graphics/drawable/Drawable;

.field private mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

.field private mYearDateTimeKeyLabelSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    .line 51
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    .line 52
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    .line 53
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    .line 54
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    .line 55
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    .line 56
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    .line 57
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    .line 58
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    .line 59
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    .line 60
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    .line 61
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I

    .line 62
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    .line 63
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mFloatingQwertyKeyIconOffsetY:I

    .line 64
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyKeyIconOffsetY:I

    .line 65
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSmile:Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 83
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    .line 88
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u061f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u060c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\uff0c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "\uff01"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\uff1f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3001"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ","

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValues:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, ","

    aput-object v1, v0, v4

    const-string v1, "?"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultSymbolFixedValues:[Ljava/lang/String;

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, "-"

    aput-object v1, v0, v5

    const-string v1, "@"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":-P"

    aput-object v1, v0, v3

    const-string v1, "=-O"

    aput-object v1, v0, v4

    const-string v1, "B-)"

    aput-object v1, v0, v5

    const-string v1, ":-X"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, ":-/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQuickSymbolPopupSecondary1st:[Ljava/lang/String;

    .line 122
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":-)"

    aput-object v1, v0, v3

    const-string v1, ";-)"

    aput-object v1, v0, v4

    const-string v1, ":-D"

    aput-object v1, v0, v5

    const-string v1, ":-("

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, ":\'("

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":O"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQuickSymbolPopupSecondary2nd:[Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->init()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    .line 51
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    .line 52
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    .line 53
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    .line 54
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    .line 55
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    .line 56
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    .line 57
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    .line 58
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    .line 59
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    .line 60
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    .line 61
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I

    .line 62
    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    .line 63
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mFloatingQwertyKeyIconOffsetY:I

    .line 64
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyKeyIconOffsetY:I

    .line 65
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSmile:Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 83
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    .line 88
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u061f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u060c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\uff0c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "\uff01"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\uff1f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3001"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ","

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValues:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, ","

    aput-object v1, v0, v4

    const-string v1, "?"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultSymbolFixedValues:[Ljava/lang/String;

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, "-"

    aput-object v1, v0, v5

    const-string v1, "@"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":-P"

    aput-object v1, v0, v3

    const-string v1, "=-O"

    aput-object v1, v0, v4

    const-string v1, "B-)"

    aput-object v1, v0, v5

    const-string v1, ":-X"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, ":-/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQuickSymbolPopupSecondary1st:[Ljava/lang/String;

    .line 122
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":-)"

    aput-object v1, v0, v3

    const-string v1, ";-)"

    aput-object v1, v0, v4

    const-string v1, ":-D"

    aput-object v1, v0, v5

    const-string v1, ":-("

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, ":\'("

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":O"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQuickSymbolPopupSecondary2nd:[Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->init()V

    .line 133
    return-void
.end method

.method private getDotComPopupKeyboardGap()F
    .locals 3

    .prologue
    .line 5095
    :try_start_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 5096
    const-string v1, "floating_handwriting_dotcom_popup_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    .line 5101
    :goto_0
    return v1

    .line 5098
    :cond_0
    const-string v1, "handwriting_dotcom_popup_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5100
    :catch_0
    move-exception v0

    .line 5101
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/high16 v1, 0x41a00000

    goto :goto_0
.end method

.method private getFloatingMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "isEnabled"    # Z

    .prologue
    const v11, 0x7f0201b3

    const v10, 0x7f020773

    const v9, 0x7f02076c

    const v8, 0x7f0205c4

    const v7, 0x7f0205c2

    .line 928
    const/4 v2, 0x0

    .line 930
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v6, :cond_0

    .line 931
    const-string v6, "SamsungIME"

    const-string v7, "Failed to getFloatingMMKeyIcon becuase mInputModeManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v6, 0x0

    .line 1315
    :goto_0
    return-object v6

    .line 935
    :cond_0
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 936
    .local v4, "method":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v5

    .line 938
    .local v5, "multimodalCode":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 939
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 1115
    :pswitch_0
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_2
    :goto_1
    move-object v6, v2

    .line 1315
    goto :goto_0

    .line 941
    :pswitch_1
    if-eqz p3, :cond_3

    .line 943
    :try_start_0
    const-string v6, "floating_qwerty_key_icon_hwr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020740

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 946
    goto :goto_1

    .line 949
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_1
    const-string v6, "floating_qwerty_key_icon_hwr_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 950
    :catch_1
    move-exception v0

    .line 951
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f02073a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 954
    goto :goto_1

    .line 956
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_2
    if-eqz p3, :cond_4

    .line 958
    :try_start_2
    const-string v6, "floating_qwerty_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_1

    .line 959
    :catch_2
    move-exception v0

    .line 960
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 961
    goto :goto_1

    .line 964
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :try_start_3
    const-string v6, "floating_qwerty_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto :goto_1

    .line 965
    :catch_3
    move-exception v0

    .line 966
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 969
    goto :goto_1

    .line 972
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    if-eqz p3, :cond_5

    .line 974
    :try_start_4
    const-string v6, "floating_qwerty_key_icon_keyboard_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    goto :goto_1

    .line 975
    :catch_4
    move-exception v0

    .line 976
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 977
    goto :goto_1

    .line 980
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_5
    const-string v6, "floating_qwerty_key_icon_keyboard_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto :goto_1

    .line 981
    :catch_5
    move-exception v0

    .line 982
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 985
    goto :goto_1

    .line 987
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_4
    if-eqz p3, :cond_6

    .line 989
    :try_start_6
    const-string v6, "floating_qwerty_key_icon_voice_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    goto :goto_1

    .line 990
    :catch_6
    move-exception v0

    .line 991
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0207bf

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 992
    goto :goto_1

    .line 995
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    :try_start_7
    const-string v6, "floating_qwerty_key_icon_voice_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    goto :goto_1

    .line 996
    :catch_7
    move-exception v0

    .line 997
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0207bc

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1000
    goto :goto_1

    .line 1002
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    if-eqz p3, :cond_7

    .line 1004
    :try_start_8
    const-string v6, "floating_qwerty_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v2

    goto/16 :goto_1

    .line 1006
    :catch_8
    move-exception v0

    .line 1007
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f02079b

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1008
    goto/16 :goto_1

    .line 1011
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_9
    const-string v6, "floating_qwerty_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v2

    goto/16 :goto_1

    .line 1013
    :catch_9
    move-exception v0

    .line 1014
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020799

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1017
    goto/16 :goto_1

    .line 1019
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_6
    if-eqz p3, :cond_a

    .line 1020
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v3

    .line 1022
    .local v3, "isPasswordInputEditor":Z
    if-eqz v3, :cond_8

    .line 1023
    :try_start_a
    const-string v6, "floating_qwerty_key_icon_clipboard_center_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1026
    :cond_8
    const-string v6, "floating_qwerty_key_icon_clipboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v2

    goto/16 :goto_1

    .line 1028
    :catch_a
    move-exception v0

    .line 1029
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v3, :cond_9

    .line 1031
    :try_start_b
    const-string v6, "qwerty_key_icon_clipboard_center_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v2

    goto/16 :goto_1

    .line 1032
    :catch_b
    move-exception v1

    .line 1033
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f02071a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1034
    goto/16 :goto_1

    .line 1036
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    const v6, 0x7f02071a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1041
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "isPasswordInputEditor":Z
    :cond_a
    :try_start_c
    const-string v6, "floating_qwerty_key_icon_clipboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v2

    goto/16 :goto_1

    .line 1042
    :catch_c
    move-exception v0

    .line 1043
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020713

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1046
    goto/16 :goto_1

    .line 1048
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_7
    if-eqz p3, :cond_b

    .line 1050
    :try_start_d
    const-string v6, "floating_qwerty_key_icon_ocr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v2

    goto/16 :goto_1

    .line 1051
    :catch_d
    move-exception v0

    .line 1052
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f02078a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1053
    goto/16 :goto_1

    .line 1056
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_e
    const-string v6, "floating_qwerty_key_icon_ocr_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v2

    goto/16 :goto_1

    .line 1057
    :catch_e
    move-exception v0

    .line 1058
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020787

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1061
    goto/16 :goto_1

    .line 1063
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_8
    if-eqz p3, :cond_c

    .line 1065
    :try_start_f
    const-string v6, "floating_qwerty_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v2

    goto/16 :goto_1

    .line 1066
    :catch_f
    move-exception v0

    .line 1067
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1068
    goto/16 :goto_1

    .line 1071
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    :try_start_10
    const-string v6, "floating_qwerty_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v2

    goto/16 :goto_1

    .line 1072
    :catch_10
    move-exception v0

    .line 1073
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1076
    goto/16 :goto_1

    .line 1078
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_9
    if-eqz p3, :cond_d

    .line 1080
    :try_start_11
    const-string v6, "floating_qwerty_key_icon_floating_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result-object v2

    goto/16 :goto_1

    .line 1081
    :catch_11
    move-exception v0

    .line 1082
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f02078a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1083
    goto/16 :goto_1

    .line 1086
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    :try_start_12
    const-string v6, "floating_qwerty_key_icon_floating_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-object v2

    goto/16 :goto_1

    .line 1087
    :catch_12
    move-exception v0

    .line 1088
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020735

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1091
    goto/16 :goto_1

    .line 1093
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_a
    if-eqz p3, :cond_e

    .line 1094
    const v6, 0x7f0201c1

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1097
    :cond_e
    :try_start_13
    const-string v6, "floating_qwerty_key_icon_emoticon_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result-object v2

    goto/16 :goto_1

    .line 1098
    :catch_13
    move-exception v0

    .line 1099
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0201be

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1102
    goto/16 :goto_1

    .line 1104
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_b
    if-eqz p3, :cond_f

    .line 1105
    const-string v6, "floating_qwerty_key_icon_chinesecharacter_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1108
    :cond_f
    :try_start_14
    const-string v6, "floating_qwerty_key_icon_chinesecharacter_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    goto/16 :goto_1

    .line 1109
    :catch_14
    move-exception v0

    .line 1110
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1113
    goto/16 :goto_1

    .line 1118
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_10
    if-eqz p3, :cond_11

    .line 1120
    :try_start_15
    const-string v6, "floating_qwerty_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v2

    goto/16 :goto_1

    .line 1121
    :catch_15
    move-exception v0

    .line 1122
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f02079b

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1123
    goto/16 :goto_1

    .line 1126
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    :try_start_16
    const-string v6, "floating_qwerty_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v2

    goto/16 :goto_1

    .line 1127
    :catch_16
    move-exception v0

    .line 1128
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020799

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1131
    goto/16 :goto_1

    .line 1134
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_12
    packed-switch v5, :pswitch_data_1

    .line 1294
    :pswitch_c
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1297
    if-eqz p3, :cond_1e

    .line 1299
    :try_start_17
    const-string v6, "floating_phonepad_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_2b

    move-result-object v2

    goto/16 :goto_1

    .line 1136
    :pswitch_d
    if-eqz p3, :cond_13

    .line 1138
    :try_start_18
    const-string v6, "floating_phonepad_key_icon_hwr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result-object v2

    goto/16 :goto_1

    .line 1139
    :catch_17
    move-exception v0

    .line 1140
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205b8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1141
    goto/16 :goto_1

    .line 1144
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_13
    :try_start_19
    const-string v6, "floating_phonepad_key_icon_hwr_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result-object v2

    goto/16 :goto_1

    .line 1145
    :catch_18
    move-exception v0

    .line 1146
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205b3

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1149
    goto/16 :goto_1

    .line 1151
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_e
    if-eqz p3, :cond_14

    .line 1153
    :try_start_1a
    const-string v6, "floating_phonepad_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result-object v2

    goto/16 :goto_1

    .line 1154
    :catch_19
    move-exception v0

    .line 1155
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1156
    goto/16 :goto_1

    .line 1159
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_14
    :try_start_1b
    const-string v6, "floating_phonepad_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result-object v2

    goto/16 :goto_1

    .line 1160
    :catch_1a
    move-exception v0

    .line 1161
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1164
    goto/16 :goto_1

    .line 1166
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_f
    if-eqz p3, :cond_15

    .line 1168
    :try_start_1c
    const-string v6, "floating_phonepad_key_icon_voice_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result-object v2

    goto/16 :goto_1

    .line 1169
    :catch_1b
    move-exception v0

    .line 1170
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f02061b

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1171
    goto/16 :goto_1

    .line 1174
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_15
    :try_start_1d
    const-string v6, "floating_phonepad_key_icon_voice_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result-object v2

    goto/16 :goto_1

    .line 1175
    :catch_1c
    move-exception v0

    .line 1176
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020619

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1179
    goto/16 :goto_1

    .line 1181
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_10
    if-eqz p3, :cond_16

    .line 1183
    :try_start_1e
    const-string v6, "floating_phonepad_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result-object v2

    goto/16 :goto_1

    .line 1184
    :catch_1d
    move-exception v0

    .line 1185
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205fd

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1186
    goto/16 :goto_1

    .line 1189
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_16
    :try_start_1f
    const-string v6, "floating_phonepad_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result-object v2

    goto/16 :goto_1

    .line 1190
    :catch_1e
    move-exception v0

    .line 1191
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205f8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1194
    goto/16 :goto_1

    .line 1196
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_11
    if-eqz p3, :cond_17

    .line 1198
    :try_start_20
    const-string v6, "floating_phonepad_key_icon_clipboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result-object v2

    goto/16 :goto_1

    .line 1199
    :catch_1f
    move-exception v0

    .line 1200
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205a6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1201
    goto/16 :goto_1

    .line 1204
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_17
    :try_start_21
    const-string v6, "floating_phonepad_key_icon_clipboard"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result-object v2

    goto/16 :goto_1

    .line 1205
    :catch_20
    move-exception v0

    .line 1206
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205a3

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1209
    goto/16 :goto_1

    .line 1211
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_12
    if-eqz p3, :cond_18

    .line 1213
    :try_start_22
    const-string v6, "floating_phonepad_key_icon_ocr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_21

    move-result-object v2

    goto/16 :goto_1

    .line 1214
    :catch_21
    move-exception v0

    .line 1215
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205da

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1216
    goto/16 :goto_1

    .line 1219
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    :try_start_23
    const-string v6, "floating_phonepad_key_icon_ocr"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_22

    move-result-object v2

    goto/16 :goto_1

    .line 1220
    :catch_22
    move-exception v0

    .line 1221
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205d7

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1224
    goto/16 :goto_1

    .line 1227
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_13
    if-eqz p3, :cond_19

    .line 1229
    :try_start_24
    const-string v6, "floating_phonepad_key_icon_keyboard_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result-object v2

    goto/16 :goto_1

    .line 1230
    :catch_23
    move-exception v0

    .line 1231
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1232
    goto/16 :goto_1

    .line 1235
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_19
    :try_start_25
    const-string v6, "floating_phonepad_key_icon_keyboard_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result-object v2

    goto/16 :goto_1

    .line 1236
    :catch_24
    move-exception v0

    .line 1237
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1240
    goto/16 :goto_1

    .line 1242
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_14
    if-eqz p3, :cond_1a

    .line 1244
    :try_start_26
    const-string v6, "floating_phonepad_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result-object v2

    goto/16 :goto_1

    .line 1245
    :catch_25
    move-exception v0

    .line 1246
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1247
    goto/16 :goto_1

    .line 1250
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1a
    :try_start_27
    const-string v6, "floating_phonepad_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result-object v2

    goto/16 :goto_1

    .line 1251
    :catch_26
    move-exception v0

    .line 1252
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1255
    goto/16 :goto_1

    .line 1257
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_15
    if-eqz p3, :cond_1b

    .line 1259
    :try_start_28
    const-string v6, "floating_phonepad_key_icon_floating_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result-object v2

    goto/16 :goto_1

    .line 1260
    :catch_27
    move-exception v0

    .line 1261
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205da

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1262
    goto/16 :goto_1

    .line 1265
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1b
    :try_start_29
    const-string v6, "floating_phonepad_key_icon_floating"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result-object v2

    goto/16 :goto_1

    .line 1266
    :catch_28
    move-exception v0

    .line 1267
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205d7

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1270
    goto/16 :goto_1

    .line 1272
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_16
    if-eqz p3, :cond_1c

    .line 1273
    const v6, 0x7f0201c1

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1276
    :cond_1c
    :try_start_2a
    const-string v6, "floating_qwerty_key_icon_emoticon_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result-object v2

    goto/16 :goto_1

    .line 1277
    :catch_29
    move-exception v0

    .line 1278
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0201be

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1281
    goto/16 :goto_1

    .line 1283
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_17
    if-eqz p3, :cond_1d

    .line 1284
    const-string v6, "floating_qwerty_key_icon_chinesecharacter_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1287
    :cond_1d
    :try_start_2b
    const-string v6, "floating_qwerty_key_icon_chinesecharacter_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result-object v2

    goto/16 :goto_1

    .line 1288
    :catch_2a
    move-exception v0

    .line 1289
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1292
    goto/16 :goto_1

    .line 1301
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2b
    move-exception v0

    .line 1302
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205fd

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1303
    goto/16 :goto_1

    .line 1306
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1e
    :try_start_2c
    const-string v6, "floating_phonepad_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2c

    move-result-object v2

    goto/16 :goto_1

    .line 1308
    :catch_2c
    move-exception v0

    .line 1309
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205f8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 939
    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_b
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1134
    :pswitch_data_1
    .packed-switch -0x89
        :pswitch_17
        :pswitch_13
        :pswitch_16
        :pswitch_c
        :pswitch_14
        :pswitch_c
        :pswitch_15
        :pswitch_c
        :pswitch_c
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_11
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private getKeyExceptionIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Z)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 2378
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v8, :cond_1

    .line 2379
    const-string v8, "SamsungIME"

    const-string v9, "Failed to getKeyExceptionIcon because mInputModeManager is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    const/4 v2, 0x0

    .line 2522
    :cond_0
    :goto_0
    return-object v2

    .line 2383
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_Normal_Longpressable_Icon"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    .line 2384
    .local v4, "mEnableNormalLongPressableIcon":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_Smile_Longpressable_Icon"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    .line 2385
    .local v5, "mEnableSmileLongPressableIcon":Z
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_2

    .line 2387
    :try_start_0
    const-string v8, "floating_sip_key_icon_longpressable"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2392
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    .line 2394
    :try_start_1
    const-string v8, "floating_sip_key_icon_longpressable_voice"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2399
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_4

    .line 2401
    :try_start_2
    const-string v8, "floating_sip_key_icon_longpressable_setting"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2406
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_5

    .line 2408
    :try_start_3
    const-string v8, "sip_key_icon_longpressable_question_xml"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2413
    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_6

    .line 2415
    :try_start_4
    const-string v8, "floating_sip_key_icon_longpressable_question"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2420
    :cond_6
    :goto_5
    const/4 v2, 0x0

    .line 2421
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_8

    .line 2422
    iget-object v8, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/16 v9, -0x75

    if-ne v8, v9, :cond_11

    .line 2423
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v6

    .line 2424
    .local v6, "multimodalCode":I
    const/16 v8, -0x78

    if-eq v6, v8, :cond_b

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2425
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2426
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 2469
    .end local v6    # "multimodalCode":I
    :cond_7
    :goto_6
    if-nez v2, :cond_8

    .line 2470
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2471
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    .line 2498
    :cond_8
    :goto_7
    iget-object v8, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/16 v9, -0xe2

    if-ne v8, v9, :cond_9

    .line 2500
    if-eqz p2, :cond_18

    .line 2501
    :try_start_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2502
    const-string v8, "sip_button_longpress_press"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    .line 2518
    :cond_9
    :goto_8
    if-eqz v2, :cond_0

    .line 2520
    iget v8, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    iget v10, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 2388
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 2389
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 2395
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 2396
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 2402
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 2403
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 2409
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v0

    .line 2410
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02095e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 2416
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v0

    .line 2417
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 2428
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "multimodalCode":I
    :cond_a
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 2430
    :cond_b
    const/16 v8, -0x79

    if-eq v6, v8, :cond_10

    .line 2431
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v10, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v8, v9, v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v7

    .line 2432
    .local v7, "validMMCodes":[I
    const/4 v3, 0x0

    .line 2433
    .local v3, "isSettingValidMMCode":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v8, v7

    if-ge v1, v8, :cond_c

    .line 2434
    aget v8, v7, v1

    const/16 v9, -0x79

    if-ne v8, v9, :cond_d

    .line 2435
    const/4 v3, 0x1

    .line 2439
    :cond_c
    if-eqz v3, :cond_f

    .line 2440
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2441
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2433
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2443
    :cond_e
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2446
    :cond_f
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2449
    .end local v1    # "i":I
    .end local v3    # "isSettingValidMMCode":Z
    .end local v7    # "validMMCodes":[I
    :cond_10
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2451
    .end local v6    # "multimodalCode":I
    :cond_11
    iget-object v8, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/16 v9, -0x7a

    if-ne v8, v9, :cond_7

    if-nez v4, :cond_7

    .line 2452
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v8, :cond_14

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->enableSecondarySymbol()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2453
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2454
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2456
    :cond_12
    if-eqz v5, :cond_13

    .line 2457
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSmile:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2459
    :cond_13
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2462
    :cond_14
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2463
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2465
    :cond_15
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 2473
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02095e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_7

    .line 2504
    :cond_17
    :try_start_6
    const-string v8, "sip_button_longpress_normal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_8

    .line 2507
    :cond_18
    const-string v8, "sip_button_longpress_dim"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v2

    goto/16 :goto_8

    .line 2509
    :catch_5
    move-exception v0

    .line 2510
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    .line 2511
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2512
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 2514
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02095e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_8
.end method

.method private getKeyPreviewWidth(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)I
    .locals 9
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    .prologue
    const/16 v8, 0x8

    const v7, 0x7f0901f8

    const v6, 0x7f0901f4

    .line 2974
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2975
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 2976
    .local v1, "extraWidth":I
    iget-object v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2977
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_0

    .line 2978
    const/4 v1, 0x0

    .line 2980
    :try_start_0
    const-string v4, "qwerty_key_preview_extra_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    float-to-int v1, v4

    .line 2984
    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int v2, v4, v1

    .line 3105
    :goto_0
    return v2

    .line 2981
    :catch_0
    move-exception v0

    .line 2982
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 2986
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0

    .line 2989
    :cond_1
    iget-object v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 3090
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_8

    .line 3091
    const/4 v1, 0x0

    .line 3093
    :try_start_1
    const-string v4, "qwerty_key_preview_extra_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v4

    float-to-int v1, v4

    .line 3097
    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int v2, v4, v1

    goto :goto_0

    .line 2991
    :sswitch_0
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_HD:Z

    if-eqz v4, :cond_3

    .line 2992
    :cond_2
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 2994
    :cond_3
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 2997
    :sswitch_1
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 3000
    :sswitch_2
    const v4, 0x7f0901f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 3002
    :sswitch_3
    const v4, 0x7f0901fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 3004
    :sswitch_4
    const v4, 0x7f0901fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 3007
    :sswitch_5
    const v4, 0x7f0901fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 3024
    :sswitch_6
    const/4 v1, 0x0

    .line 3025
    const/4 v2, 0x0

    .line 3033
    .local v2, "previewWidth":I
    :try_start_2
    const-string v4, "qwerty_key_preview_extra_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    float-to-int v1, v4

    .line 3038
    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int v2, v4, v1

    .line 3043
    goto :goto_0

    .line 3034
    :catch_1
    move-exception v0

    .line 3035
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_0

    .line 3053
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "previewWidth":I
    :sswitch_7
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3054
    const/4 v1, 0x0

    .line 3056
    :try_start_3
    const-string v4, "qwerty_key_preview_extra_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    float-to-int v1, v4

    .line 3060
    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v4, v1

    goto/16 :goto_0

    .line 3057
    :catch_2
    move-exception v0

    .line 3058
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3061
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v4, v8, :cond_5

    .line 3063
    :try_start_4
    const-string v4, "floating_qwerty_key_preview_default_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3064
    :catch_3
    move-exception v0

    .line 3065
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3068
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3072
    :sswitch_8
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_6

    .line 3073
    const/4 v1, 0x0

    .line 3075
    :try_start_5
    const-string v4, "qwerty_key_preview_extra_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v4

    float-to-int v1, v4

    .line 3079
    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int v2, v4, v1

    goto/16 :goto_0

    .line 3076
    :catch_4
    move-exception v0

    .line 3077
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3080
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v4, v8, :cond_7

    .line 3082
    :try_start_6
    const-string v4, "floating_qwerty_key_preview_range_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3083
    :catch_5
    move-exception v0

    .line 3084
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3087
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3094
    :catch_6
    move-exception v0

    .line 3095
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3098
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v4, v8, :cond_9

    .line 3100
    :try_start_7
    const-string v4, "floating_qwerty_key_preview_default_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3101
    :catch_7
    move-exception v0

    .line 3102
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 3105
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_0

    .line 2989
    :sswitch_data_0
    .sparse-switch
        -0xbe -> :sswitch_8
        -0x7e -> :sswitch_5
        -0x7b -> :sswitch_2
        -0x73 -> :sswitch_5
        -0x72 -> :sswitch_4
        -0x71 -> :sswitch_3
        -0x6e -> :sswitch_1
        -0x6d -> :sswitch_8
        -0x6a -> :sswitch_7
        -0x69 -> :sswitch_7
        -0x66 -> :sswitch_0
        0xa -> :sswitch_2
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method private getLanguageChangeKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "isEnabled"    # Z

    .prologue
    .line 1319
    const/4 v2, 0x0

    .line 1320
    .local v2, "langChangeIcon":Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 1321
    .local v5, "method":I
    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v7, -0x10000

    and-int v3, v6, v7

    .line 1323
    .local v3, "langCode":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v6, :cond_0

    .line 1324
    const-string v6, "SamsungIME"

    const-string v7, "Failed to getLanguageChangeKeyIcon becuase mInputModeManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v6, 0x0

    .line 1686
    :goto_0
    return-object v6

    .line 1328
    :cond_0
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v6, :cond_11

    .line 1329
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1330
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    .line 1346
    .local v1, "korKeypadType":I
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1348
    if-eqz p3, :cond_5

    .line 1350
    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_3

    .line 1351
    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 1352
    :try_start_0
    const-string v6, "phonepad_key_icon_floating_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .end local v1    # "korKeypadType":I
    :goto_1
    move-object v6, v2

    .line 1686
    goto :goto_0

    .line 1355
    .restart local v1    # "korKeypadType":I
    :cond_2
    const-string v6, "phonepad_key_icon_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1359
    :cond_3
    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 1360
    const-string v6, "phonepad_key_icon_floating_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1363
    :cond_4
    const-string v6, "phonepad_key_icon_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1369
    goto :goto_1

    .line 1372
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_1
    const-string v6, "phonepad_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 1373
    :catch_1
    move-exception v0

    .line 1374
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1375
    goto :goto_1

    .line 1378
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    if-eqz p3, :cond_c

    .line 1380
    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_9

    .line 1381
    const/16 v6, 0x8

    if-ne v5, v6, :cond_8

    .line 1382
    :try_start_2
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1383
    const-string v6, "qwerty_key_icon_floating_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1386
    :cond_7
    const-string v6, "qwerty_key_icon_floating_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1390
    :cond_8
    const-string v6, "qwerty_key_icon_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1394
    :cond_9
    const/16 v6, 0x8

    if-ne v5, v6, :cond_b

    .line 1395
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1396
    const-string v6, "qwerty_key_icon_floating_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1399
    :cond_a
    const-string v6, "qwerty_key_icon_floating_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1403
    :cond_b
    const-string v6, "qwerty_key_icon_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_1

    .line 1407
    :catch_2
    move-exception v0

    .line 1408
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020776

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1409
    goto/16 :goto_1

    .line 1412
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    :try_start_3
    const-string v6, "qwerty_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto/16 :goto_1

    .line 1413
    :catch_3
    move-exception v0

    .line 1414
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020777

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1421
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "korKeypadType":I
    :cond_d
    :try_start_4
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1422
    if-eqz p3, :cond_e

    .line 1423
    const-string v6, "floating_qwerty_key_icon_language_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1426
    :cond_e
    const-string v6, "floating_qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1431
    :cond_f
    if-eqz p3, :cond_10

    .line 1432
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1435
    :cond_10
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    goto/16 :goto_1

    .line 1439
    :catch_4
    move-exception v0

    .line 1440
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1442
    goto/16 :goto_1

    .line 1445
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 1446
    .restart local v1    # "korKeypadType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d

    .line 1447
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_1b

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1448
    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-eqz v6, :cond_15

    .line 1449
    if-eqz p3, :cond_13

    .line 1451
    :try_start_5
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1452
    const-string v6, "phonepad_key_icon_oh_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1454
    :cond_12
    const-string v6, "phonepad_key_icon_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto/16 :goto_1

    .line 1456
    :catch_5
    move-exception v0

    .line 1457
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1458
    goto/16 :goto_1

    .line 1461
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_13
    :try_start_6
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1462
    const-string v6, "phonepad_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1464
    :cond_14
    const-string v6, "phonepad_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    goto/16 :goto_1

    .line 1466
    :catch_6
    move-exception v0

    .line 1467
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1468
    goto/16 :goto_1

    .line 1471
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_15
    if-eqz p3, :cond_19

    .line 1473
    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_17

    .line 1474
    :try_start_7
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1475
    const-string v6, "phonepad_key_icon_oh_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1477
    :cond_16
    const-string v6, "phonepad_key_icon_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1480
    :cond_17
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1481
    const-string v6, "phonepad_key_icon_oh_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1483
    :cond_18
    const-string v6, "phonepad_key_icon_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    goto/16 :goto_1

    .line 1486
    :catch_7
    move-exception v0

    .line 1487
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1488
    goto/16 :goto_1

    .line 1491
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_19
    :try_start_8
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1492
    const-string v6, "phonepad_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1494
    :cond_1a
    const-string v6, "phonepad_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v2

    goto/16 :goto_1

    .line 1496
    :catch_8
    move-exception v0

    .line 1497
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1498
    goto/16 :goto_1

    .line 1502
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1b
    if-nez p3, :cond_1c

    .line 1504
    :try_start_9
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v2

    goto/16 :goto_1

    .line 1505
    :catch_9
    move-exception v0

    .line 1506
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1507
    goto/16 :goto_1

    .line 1509
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1c
    const v6, 0x7f0205c8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1512
    :cond_1d
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_26

    const/16 v6, 0x8

    if-ne v5, v6, :cond_26

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1e

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1e

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1e

    const/4 v6, 0x4

    if-eq v1, v6, :cond_1e

    const/high16 v6, 0x656e0000

    if-ne v3, v6, :cond_26

    :cond_1e
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v6

    if-nez v6, :cond_26

    .line 1521
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_23

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1522
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    .line 1523
    .local v4, "mInputRange":I
    if-eqz v4, :cond_20

    .line 1524
    if-eqz p3, :cond_1f

    .line 1526
    :try_start_a
    const-string v6, "phonepad_key_icon_floating_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v2

    goto/16 :goto_1

    .line 1527
    :catch_a
    move-exception v0

    .line 1528
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1529
    goto/16 :goto_1

    .line 1532
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1f
    :try_start_b
    const-string v6, "phonepad_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v2

    goto/16 :goto_1

    .line 1533
    :catch_b
    move-exception v0

    .line 1534
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1535
    goto/16 :goto_1

    .line 1538
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_20
    if-eqz p3, :cond_22

    .line 1540
    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_21

    .line 1541
    :try_start_c
    const-string v6, "phonepad_key_icon_floating_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1543
    :cond_21
    const-string v6, "phonepad_key_icon_floating_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v2

    goto/16 :goto_1

    .line 1545
    :catch_c
    move-exception v0

    .line 1546
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1547
    goto/16 :goto_1

    .line 1550
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_22
    :try_start_d
    const-string v6, "phonepad_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v2

    goto/16 :goto_1

    .line 1551
    :catch_d
    move-exception v0

    .line 1552
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1557
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "mInputRange":I
    :cond_23
    if-nez p3, :cond_24

    .line 1559
    :try_start_e
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v2

    goto/16 :goto_1

    .line 1560
    :catch_e
    move-exception v0

    .line 1561
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1562
    goto/16 :goto_1

    .line 1564
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_24
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_25

    const/16 v6, 0x8

    if-ne v5, v6, :cond_25

    .line 1566
    :try_start_f
    const-string v6, "floating_phonepad_key_icon_language_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v2

    goto/16 :goto_1

    .line 1567
    :catch_f
    move-exception v0

    .line 1568
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0205c8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1569
    goto/16 :goto_1

    .line 1571
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_25
    const v6, 0x7f0205c8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1576
    :cond_26
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_39

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1577
    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-eqz v6, :cond_2d

    .line 1578
    if-eqz p3, :cond_2a

    .line 1580
    :try_start_10
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1581
    const-string v6, "qwerty_key_icon_oh_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1582
    :cond_27
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_28

    const/16 v6, 0x8

    if-ne v5, v6, :cond_28

    .line 1583
    const-string v6, "qwerty_key_icon_floating_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1584
    :cond_28
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_29

    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_29

    .line 1585
    const-string v6, "handwriting_key_icon_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1587
    :cond_29
    const-string v6, "qwerty_key_icon_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v2

    goto/16 :goto_1

    .line 1589
    :catch_10
    move-exception v0

    .line 1590
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020776

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1591
    goto/16 :goto_1

    .line 1594
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2a
    :try_start_11
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1595
    const-string v6, "qwerty_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1596
    :cond_2b
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_2c

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2c

    .line 1597
    const-string v6, "qwerty_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1601
    :cond_2c
    const-string v6, "qwerty_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result-object v2

    goto/16 :goto_1

    .line 1603
    :catch_11
    move-exception v0

    .line 1604
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020777

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1605
    goto/16 :goto_1

    .line 1608
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2d
    if-eqz p3, :cond_35

    .line 1610
    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_31

    .line 1611
    :try_start_12
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1612
    const-string v6, "qwerty_key_icon_oh_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1613
    :cond_2e
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_2f

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2f

    .line 1614
    const-string v6, "qwerty_key_icon_floating_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1615
    :cond_2f
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1616
    const-string v6, "handwriting_key_icon_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1618
    :cond_30
    const-string v6, "qwerty_key_icon_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1621
    :cond_31
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1622
    const-string v6, "qwerty_key_icon_oh_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1623
    :cond_32
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_33

    const/16 v6, 0x8

    if-ne v5, v6, :cond_33

    .line 1624
    const-string v6, "qwerty_key_icon_floating_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1625
    :cond_33
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1626
    const-string v6, "handwriting_key_icon_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1628
    :cond_34
    const-string v6, "qwerty_key_icon_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-object v2

    goto/16 :goto_1

    .line 1631
    :catch_12
    move-exception v0

    .line 1632
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020776

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1633
    goto/16 :goto_1

    .line 1636
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_35
    :try_start_13
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1637
    const-string v6, "qwerty_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1638
    :cond_36
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_37

    const/16 v6, 0x8

    if-ne v5, v6, :cond_37

    .line 1639
    const-string v6, "qwerty_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1640
    :cond_37
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1641
    const-string v6, "handwriting_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1643
    :cond_38
    const-string v6, "qwerty_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result-object v2

    goto/16 :goto_1

    .line 1645
    :catch_13
    move-exception v0

    .line 1646
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020777

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1647
    goto/16 :goto_1

    .line 1651
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_39
    if-nez p3, :cond_3b

    .line 1653
    :try_start_14
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1654
    const-string v6, "handwriting_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 1657
    :cond_3a
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    goto/16 :goto_1

    .line 1660
    :catch_14
    move-exception v0

    .line 1661
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1663
    goto/16 :goto_1

    .line 1665
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3b
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_3c

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3c

    .line 1667
    :try_start_15
    const-string v6, "floating_qwerty_key_icon_language_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v2

    goto/16 :goto_1

    .line 1669
    :catch_15
    move-exception v0

    .line 1670
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1672
    goto/16 :goto_1

    .line 1673
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3c
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1675
    :try_start_16
    const-string v6, "handwriting_key_icon_language_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v2

    goto/16 :goto_1

    .line 1676
    :catch_16
    move-exception v0

    .line 1677
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1678
    goto/16 :goto_1

    .line 1680
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3d
    const v6, 0x7f020779

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private getLanguageChangeKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const v6, 0x7f0206be

    .line 1912
    const/4 v1, 0x0

    .line 1913
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 1914
    .local v3, "method":I
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, -0x10000

    and-int v2, v4, v5

    .line 1915
    .local v2, "langCode":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1916
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1918
    const/high16 v4, 0x6b6f0000

    if-ne v2, v4, :cond_1

    .line 1919
    :try_start_0
    const-string v4, "preview_qwerty_key_icon_language_kr"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1932
    :cond_0
    :goto_0
    return-object v1

    .line 1922
    :cond_1
    const-string v4, "preview_qwerty_key_icon_language_en"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1925
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1927
    goto :goto_0

    .line 1929
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private getMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "isEnabled"    # Z

    .prologue
    const v9, 0x7f02079b

    const v8, 0x7f020799

    const v7, 0x7f02071a

    const v6, 0x7f020773

    const v5, 0x7f02076c

    .line 700
    const/4 v2, 0x0

    .line 702
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v4, :cond_0

    .line 703
    const-string v4, "SamsungIME"

    const-string v5, "Failed to getMMKeyIcon becuase mInputModeManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v4, 0x0

    .line 925
    :goto_0
    return-object v4

    .line 707
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v3

    .line 708
    .local v3, "multimodalCode":I
    packed-switch v3, :pswitch_data_0

    .line 918
    :pswitch_0
    if-eqz p3, :cond_e

    .line 919
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    move-object v4, v2

    .line 925
    goto :goto_0

    .line 710
    :pswitch_1
    if-eqz p3, :cond_1

    .line 711
    const v4, 0x7f020740

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 714
    :cond_1
    :try_start_0
    const-string v4, "qwerty_key_icon_hwr_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f02073a

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 719
    goto :goto_1

    .line 721
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_2
    if-eqz p3, :cond_2

    .line 723
    :try_start_1
    const-string v4, "hwr_key_icon_keyboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 724
    :catch_1
    move-exception v0

    .line 725
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 726
    goto :goto_1

    .line 729
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :try_start_2
    const-string v4, "hwr_icon_ime_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_1

    .line 730
    :catch_2
    move-exception v0

    .line 732
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    const-string v4, "qwerty_key_icon_keyboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto :goto_1

    .line 733
    :catch_3
    move-exception v1

    .line 734
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 741
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    if-eqz p3, :cond_3

    .line 743
    :try_start_4
    const-string v4, "hwr_key_icon_keyboard_change_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    goto :goto_1

    .line 744
    :catch_4
    move-exception v0

    .line 745
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 746
    goto :goto_1

    .line 749
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_5
    const-string v4, "hwr_icon_keyboard_change_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto :goto_1

    .line 750
    :catch_5
    move-exception v0

    .line 752
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_6
    const-string v4, "qwerty_key_icon_keyboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    goto :goto_1

    .line 753
    :catch_6
    move-exception v1

    .line 754
    .restart local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 760
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :pswitch_4
    if-eqz p3, :cond_4

    .line 762
    :try_start_7
    const-string v4, "hwr_key_icon_voice_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    goto :goto_1

    .line 763
    :catch_7
    move-exception v0

    .line 764
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0207bf

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 765
    goto :goto_1

    .line 768
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :try_start_8
    const-string v4, "hwr_icon_voice_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v2

    goto :goto_1

    .line 769
    :catch_8
    move-exception v0

    .line 771
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_9
    const-string v4, "qwerty_key_icon_voice_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v2

    goto/16 :goto_1

    .line 772
    :catch_9
    move-exception v1

    .line 773
    .restart local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0207bc

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 779
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    if-eqz p3, :cond_5

    .line 781
    :try_start_a
    const-string v4, "hwr_key_icon_settings_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v2

    goto/16 :goto_1

    .line 782
    :catch_a
    move-exception v0

    .line 783
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 784
    goto/16 :goto_1

    .line 787
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_b
    const-string v4, "hwr_key_icon_setting_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v2

    goto/16 :goto_1

    .line 788
    :catch_b
    move-exception v0

    .line 789
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 792
    goto/16 :goto_1

    .line 794
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_6
    if-eqz p3, :cond_7

    .line 795
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 797
    :try_start_c
    const-string v4, "qwerty_key_icon_clipboard_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v2

    goto/16 :goto_1

    .line 799
    :catch_c
    move-exception v0

    .line 801
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_d
    const-string v4, "hwr_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v2

    goto/16 :goto_1

    .line 802
    :catch_d
    move-exception v1

    .line 803
    .restart local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 808
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    :try_start_e
    const-string v4, "hwr_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v2

    goto/16 :goto_1

    .line 809
    :catch_e
    move-exception v0

    .line 810
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 811
    goto/16 :goto_1

    .line 815
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_f
    const-string v4, "hwr_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v2

    goto/16 :goto_1

    .line 816
    :catch_f
    move-exception v0

    .line 818
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_10
    const-string v4, "qwerty_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v2

    goto/16 :goto_1

    .line 819
    :catch_10
    move-exception v1

    .line 820
    .restart local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020713

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 826
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :pswitch_7
    if-eqz p3, :cond_8

    .line 827
    const-string v4, "hwr_key_icon_ocr_xml"

    const v5, 0x7f02078a

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOCRIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 838
    :cond_8
    :try_start_11
    const-string v4, "hwr_key_icon_ocr_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result-object v2

    goto/16 :goto_1

    .line 839
    :catch_11
    move-exception v0

    .line 841
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "qwerty_key_icon_ocr_dim"

    const v5, 0x7f020787

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOCRIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 853
    goto/16 :goto_1

    .line 855
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_8
    if-eqz p3, :cond_9

    .line 856
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 859
    :cond_9
    :try_start_12
    const-string v4, "qwerty_key_icon_keyboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-object v2

    goto/16 :goto_1

    .line 860
    :catch_12
    move-exception v0

    .line 861
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 864
    goto/16 :goto_1

    .line 866
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_9
    if-eqz p3, :cond_a

    .line 868
    :try_start_13
    const-string v4, "hwr_key_icon_floating_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result-object v2

    goto/16 :goto_1

    .line 869
    :catch_13
    move-exception v0

    .line 870
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020738

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 871
    goto/16 :goto_1

    .line 874
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    :try_start_14
    const-string v4, "hwr_key_icon_floating_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    goto/16 :goto_1

    .line 875
    :catch_14
    move-exception v0

    .line 877
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_15
    const-string v4, "qwerty_key_icon_floating_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v2

    goto/16 :goto_1

    .line 878
    :catch_15
    move-exception v1

    .line 879
    .restart local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020735

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 885
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :pswitch_a
    if-eqz p3, :cond_b

    .line 886
    const v4, 0x7f0207bb

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 889
    :cond_b
    :try_start_16
    const-string v4, "qwerty_key_icon_split_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v2

    goto/16 :goto_1

    .line 890
    :catch_16
    move-exception v0

    .line 891
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0207b8

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 894
    goto/16 :goto_1

    .line 896
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_b
    if-eqz p3, :cond_c

    .line 897
    const v4, 0x7f0202b4

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 900
    :cond_c
    :try_start_17
    const-string v4, "hwr_icon_emoticon_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_17

    move-result-object v2

    goto/16 :goto_1

    .line 901
    :catch_17
    move-exception v0

    .line 902
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f02028b

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 905
    goto/16 :goto_1

    .line 907
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_c
    if-eqz p3, :cond_d

    .line 908
    const-string v4, "hwr_key_icon_chinesecharacter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 911
    :cond_d
    :try_start_18
    const-string v4, "hwr_key_icon_chinesecharacter_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_18

    move-result-object v2

    goto/16 :goto_1

    .line 912
    :catch_18
    move-exception v0

    .line 913
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f02070f

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 916
    goto/16 :goto_1

    .line 921
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 708
    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMMKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const v6, 0x7f0206c6

    const v5, 0x7f0206bd

    .line 1841
    const/4 v1, 0x0

    .line 1842
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 1843
    .local v2, "method":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v4, :cond_0

    .line 1844
    const-string v4, "SamsungIME"

    const-string v5, "Failed to getMMKeyPreviewIcon becuase mInputModeManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const/4 v4, 0x0

    .line 1909
    :goto_0
    return-object v4

    .line 1848
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v3

    .line 1849
    .local v3, "multimodalCode":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1850
    packed-switch v3, :pswitch_data_0

    .line 1902
    :pswitch_0
    :try_start_0
    const-string v4, "preview_hwr_icon_setting"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    :cond_1
    :goto_1
    :pswitch_1
    move-object v4, v1

    .line 1909
    goto :goto_0

    .line 1856
    :pswitch_2
    :try_start_1
    const-string v4, "preview_hwr_icon_ime"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1860
    goto :goto_1

    .line 1863
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    :try_start_2
    const-string v4, "preview_hwr_icon_voice"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    .line 1864
    :catch_1
    move-exception v0

    .line 1865
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0206cf

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1867
    goto :goto_1

    .line 1870
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_4
    :try_start_3
    const-string v4, "preview_hwr_icon_setting"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto :goto_1

    .line 1871
    :catch_2
    move-exception v0

    .line 1872
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1874
    goto :goto_1

    .line 1878
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    :try_start_4
    const-string v4, "preview_hwr_icon_clipboard"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    goto :goto_1

    .line 1879
    :catch_3
    move-exception v0

    .line 1880
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0206f3

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1882
    goto :goto_1

    .line 1885
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_6
    :try_start_5
    const-string v4, "preview_hwr_icon_ocr"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    goto :goto_1

    .line 1886
    :catch_4
    move-exception v0

    .line 1887
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .line 1889
    goto :goto_1

    .line 1891
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_7
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1892
    goto :goto_1

    .line 1895
    :pswitch_8
    :try_start_6
    const-string v4, "preview_hwr_icon_floating"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    goto :goto_1

    .line 1896
    :catch_5
    move-exception v0

    .line 1897
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0206b9

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1899
    goto :goto_1

    .line 1903
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_6
    move-exception v0

    .line 1904
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1850
    :pswitch_data_0
    .packed-switch -0x85
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRangeChangeIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x6b6f0000

    .line 607
    const/4 v1, 0x0

    .line 609
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v2, :cond_0

    .line 610
    const-string v2, "SamsungIME"

    const-string v3, "Failed to getRangeChangeIcon becuase mInputModeManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v2, 0x0

    .line 697
    :goto_0
    return-object v2

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 615
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_4

    .line 618
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v3, :cond_2

    .line 619
    if-eqz p1, :cond_1

    .line 620
    const-string v2, "floating_key_icon_handwriting_current_input_korean_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 697
    goto :goto_0

    .line 623
    :cond_1
    const-string v2, "floating_key_icon_handwriting_current_input_korean_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 626
    :cond_2
    if-eqz p1, :cond_3

    .line 627
    const-string v2, "floating_key_icon_handwriting_current_input_english_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 630
    :cond_3
    const-string v2, "floating_key_icon_handwriting_current_input_english_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 633
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 634
    if-eqz p1, :cond_5

    .line 635
    const-string v2, "floating_qwerty_key_icon_hwr_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 637
    :cond_5
    const-string v2, "floating_qwerty_key_icon_hwr_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 640
    :cond_6
    if-eqz p1, :cond_7

    .line 641
    const-string v2, "floating_key_icon_handwriting_current_input_number_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 644
    :cond_7
    const-string v2, "floating_key_icon_handwriting_current_input_number_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 648
    :cond_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_10

    .line 651
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 652
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v3, :cond_a

    .line 653
    if-eqz p1, :cond_9

    .line 654
    const-string v2, "vohwr_key_icon_handwriting_current_input_korean_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 656
    :cond_9
    const-string v2, "vohwr_key_icon_handwriting_current_input_korean_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 658
    :cond_a
    if-eqz p1, :cond_b

    .line 659
    const-string v2, "vohwr_key_icon_handwriting_current_input_english_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 661
    :cond_b
    const-string v2, "vohwr_key_icon_handwriting_current_input_english_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 664
    :cond_c
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v3, :cond_e

    .line 665
    if-eqz p1, :cond_d

    .line 666
    const-string v2, "sip_key_icon_handwriting_current_input_korean_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 668
    :cond_d
    const-string v2, "sip_key_icon_handwriting_current_input_korean_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 670
    :cond_e
    if-eqz p1, :cond_f

    .line 671
    const-string v2, "sip_key_icon_handwriting_current_input_english_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 673
    :cond_f
    const-string v2, "sip_key_icon_handwriting_current_input_english_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 676
    :cond_10
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-ne v2, v4, :cond_12

    .line 677
    if-eqz p1, :cond_11

    .line 678
    const-string v2, "sip_key_icon_handwriting_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 680
    :cond_11
    const-string v2, "sip_icon_handwriting_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 682
    :cond_12
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 683
    if-eqz p1, :cond_13

    .line 684
    const-string v2, "vohwr_key_icon_handwriting_current_input_number_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 686
    :cond_13
    const-string v2, "vohwr_key_icon_handwriting_current_input_number_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 688
    :cond_14
    if-eqz p1, :cond_15

    .line 689
    const-string v2, "sip_key_icon_handwriting_current_input_number_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 691
    :cond_15
    const-string v2, "sip_key_icon_handwriting_current_input_number_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getRangeChangePreviewIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/high16 v4, 0x6b6f0000

    .line 1807
    const/4 v1, 0x0

    .line 1808
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v2, :cond_0

    .line 1809
    const-string v2, "SamsungIME"

    const-string v3, "Failed to getRangeChangePreviewIcon becuase mInputModeManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const/4 v2, 0x0

    .line 1838
    :goto_0
    return-object v2

    .line 1814
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v2

    if-nez v2, :cond_5

    .line 1817
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1818
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v4, :cond_2

    .line 1819
    const-string v2, "vohwr_preview_handwriting_current_input_korean"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 1838
    goto :goto_0

    .line 1821
    :cond_2
    const-string v2, "vohwr_preview_handwriting_current_input_english"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1824
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v4, :cond_4

    .line 1825
    const-string v2, "preview_handwriting_current_input_korean"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1827
    :cond_4
    const-string v2, "preview_handwriting_current_input_english"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1830
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1831
    const-string v2, "vohwr_preview_handwriting_current_input_number"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1833
    :cond_6
    const-string v2, "preview_handwriting_current_input_number"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide v7, 0x3fe999999999999aL

    const v6, 0x7f02095e

    .line 135
    iput v10, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeyboardViewType:I

    .line 136
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 137
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "method":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v4, :cond_5

    .line 141
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 146
    :goto_0
    const v4, 0x7f0901ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    .line 147
    const v4, 0x7f0901ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    .line 148
    const v4, 0x7f0901f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    .line 152
    :try_start_0
    const-string v4, "preview_min_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 158
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v4, :cond_6

    .line 159
    iget v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    double-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    .line 167
    :cond_0
    :goto_2
    const v4, 0x7f0901f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    .line 168
    const v4, 0x7f090243

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    .line 169
    const v4, 0x7f090244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    .line 170
    const v4, 0x7f090247

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    .line 171
    const v4, 0x7f0901b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    .line 172
    const v4, 0x7f0901b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    .line 173
    const v4, 0x7f0901b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    .line 175
    :try_start_1
    const-string v4, "qwerty_non_extralabelkey_offset_y"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 182
    :try_start_2
    const-string v4, "sip_key_icon_longpressable_setting_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    :cond_1
    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 190
    :try_start_3
    const-string v4, "sip_key_icon_longpressableforpopup_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 195
    :cond_2
    :goto_5
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSmile:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 197
    :try_start_4
    const-string v4, "sip_key_icon_longpressable_smile_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSmile:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 203
    :cond_3
    :goto_6
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 205
    :try_start_5
    const-string v4, "sip_key_icon_longpressable_voice_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 210
    :cond_4
    :goto_7
    return-void

    .line 143
    :cond_5
    const-string v4, "SamsungIME"

    const-string v5, "Error! Cannot get ValidInputMethod from HwrKeyboardView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    iput v9, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I

    goto/16 :goto_1

    .line 160
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Sip_EnableLanguageToggleButton"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    array-length v4, v4

    if-le v4, v10, :cond_0

    .line 162
    iget v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    double-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    goto/16 :goto_2

    .line 176
    :catch_1
    move-exception v1

    .line 177
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    iput v9, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    goto :goto_3

    .line 183
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 184
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 191
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v0

    .line 192
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 198
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v0

    .line 199
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSmile:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 206
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_5
    move-exception v0

    .line 207
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_7
.end method

.method private isPopupKeyboard()Z
    .locals 2

    .prologue
    .line 5249
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSymbolPopupPageNum()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 4588
    const/4 v2, 0x0

    .line 4589
    .local v2, "maxPage":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 4591
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SYMBOLS_PAGE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 4592
    .local v0, "currentPage":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4593
    .local v1, "labelBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4594
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4596
    return-object v1
.end method


# virtual methods
.method protected adjustGestureGuideText(Landroid/view/View;)V
    .locals 5
    .param p1, "gestureGuide"    # Landroid/view/View;

    .prologue
    .line 2879
    const v3, 0x7f080035

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2880
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 2881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2883
    :cond_0
    const v3, 0x7f080036

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "tv":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 2884
    .restart local v2    # "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 2885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2887
    :cond_1
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v3, :cond_3

    .line 2907
    :cond_2
    :goto_0
    return-void

    .line 2890
    :cond_3
    const/4 v1, 0x0

    .line 2892
    .local v1, "id":I
    :try_start_0
    const-string v3, "popup_hwr_gesture_sub_enter_text1"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v1

    .line 2893
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 2894
    if-eqz v2, :cond_4

    .line 2895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2900
    :cond_4
    :goto_1
    :try_start_1
    const-string v3, "popup_hwr_gesture_sub_enter_text2"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v1

    .line 2901
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 2902
    if-eqz v2, :cond_2

    .line 2903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2905
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2897
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method protected drawCurrentInputRange(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 4314
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4315
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 4316
    .local v3, "text":Ljava/lang/String;
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    packed-switch v4, :pswitch_data_0

    .line 4340
    :pswitch_0
    const v4, 0x7f0d011b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4344
    :goto_0
    :pswitch_1
    if-eqz v3, :cond_0

    .line 4345
    const v4, 0x7f0b000e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4346
    const v4, 0x7f0901f3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4347
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v5, "SAMSUNGSANS_KEYPAD"

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4348
    const v4, 0x7f0900e9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4349
    .local v1, "leftGap":I
    const v4, 0x7f0900ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4350
    .local v0, "bottomGap":I
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4352
    .end local v0    # "bottomGap":I
    .end local v1    # "leftGap":I
    :cond_0
    return-void

    .line 4318
    :pswitch_2
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x6b6f0000

    if-ne v4, v5, :cond_1

    .line 4319
    const v4, 0x7f0d0123

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4320
    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x61720000

    if-ne v4, v5, :cond_2

    .line 4321
    const v4, 0x7f0d0124

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4322
    :cond_2
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x66610000

    if-ne v4, v5, :cond_3

    .line 4323
    const v4, 0x7f0d0125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4324
    :cond_3
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x75720000

    if-ne v4, v5, :cond_4

    .line 4325
    const v4, 0x7f0d0126

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4326
    :cond_4
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x69770000

    if-ne v4, v5, :cond_5

    .line 4327
    const v4, 0x7f0d0127

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 4328
    :cond_5
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_6

    .line 4329
    const v4, 0x7f0d012c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 4330
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4331
    const v4, 0x7f0d0122

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 4333
    :cond_7
    const v4, 0x7f0d0121

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4335
    goto/16 :goto_0

    .line 4316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawExceptionBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p4, "isEnabled"    # Z

    .prologue
    .line 5238
    return-void
.end method

.method protected drawExceptionIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p4, "isEnabled"    # Z

    .prologue
    const/16 v7, -0x6c

    const/16 v5, -0x75

    const/4 v6, 0x0

    .line 2340
    invoke-direct {p0, p3, p4}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeyExceptionIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2341
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 2342
    const/4 v0, 0x0

    .line 2343
    .local v0, "drawingPointX":I
    const/4 v1, 0x0

    .line 2344
    .local v1, "drawingPointY":I
    invoke-virtual {p3}, Lcom/diotek/ime/framework/view/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v3

    .line 2346
    .local v3, "stateSet":[I
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-eqz v4, :cond_0

    .line 2358
    :cond_0
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WQXGA:Z

    if-eqz v4, :cond_3

    iget-object v4, p3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    if-ne v4, v5, :cond_3

    .line 2359
    const/4 v0, -0x5

    .line 2367
    :cond_1
    :goto_0
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2368
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2369
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2370
    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2372
    .end local v0    # "drawingPointX":I
    .end local v1    # "drawingPointY":I
    .end local v3    # "stateSet":[I
    :cond_2
    return-void

    .line 2360
    .restart local v0    # "drawingPointX":I
    .restart local v1    # "drawingPointY":I
    .restart local v3    # "stateSet":[I
    :cond_3
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WSVGA:Z

    if-eqz v4, :cond_5

    iget-object v4, p3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    if-eq v4, v5, :cond_4

    iget-object v4, p3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    if-ne v4, v7, :cond_5

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 2361
    const/4 v0, -0x5

    .line 2362
    const/4 v1, 0x3

    goto :goto_0

    .line 2363
    :cond_5
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WSVGA:Z

    if-eqz v4, :cond_1

    iget-object v4, p3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    if-ne v4, v7, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    if-nez v4, :cond_1

    .line 2364
    const/4 v0, 0x1

    .line 2365
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected drawExceptionLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 2376
    return-void
.end method

.method protected drawKeyExtraLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z

    .prologue
    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    .line 2599
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 2600
    new-instance v0, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 2601
    .local v0, "labelPaint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2602
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2603
    invoke-virtual {p0, v0, p2, p4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setShadowLayer(Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V

    .line 2604
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090246

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2606
    .local v1, "labelPosX":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ua"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2607
    int-to-float v3, v1

    const v4, 0x3f99999a

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 2609
    :cond_0
    int-to-float v3, v1

    iget v4, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, p3, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2615
    const/4 v3, 0x0

    invoke-virtual {v0, v7, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2619
    .end local v0    # "labelPaint":Landroid/graphics/Paint;
    .end local v1    # "labelPosX":I
    .end local v2    # "padding":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 2617
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawKeyExtraLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected drawKeyLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;ZZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "hasExtraLebel"    # Z
    .param p5, "isEnabled"    # Z

    .prologue
    .line 2526
    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2527
    .local v5, "padding":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 2528
    .local v2, "labelPaint":Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 2529
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2530
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2531
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090245

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 2533
    .local v3, "labelPosX":I
    int-to-float v7, v3

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {p1, p3, v7, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2596
    .end local v3    # "labelPosX":I
    :goto_0
    return-void

    .line 2539
    :cond_0
    iget-object v7, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x6e

    if-eq v7, v8, :cond_1

    iget-object v7, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x137

    if-ne v7, v8, :cond_5

    .line 2540
    :cond_1
    const/4 v4, 0x0

    .line 2541
    .local v4, "labels":[Ljava/lang/String;
    const-string v7, "\n"

    invoke-virtual {p3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2542
    if-eqz v4, :cond_4

    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 2543
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2544
    move/from16 v0, p5

    invoke-virtual {p0, v2, p2, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setShadowLayer(Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V

    .line 2545
    const/4 v6, 0x0

    .line 2546
    .local v6, "tempLineLabelSize":I
    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 2548
    :try_start_0
    const-string v7, "floating_hwr_range_key_label_size"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    float-to-int v6, v7

    .line 2556
    :goto_1
    int-to-float v7, v6

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2558
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3f0a3d71

    mul-float/2addr v9, v10

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {p1, v7, v8, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2564
    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 2566
    :try_start_1
    const-string v7, "floating_hwr_range_key_second_label_size"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    float-to-int v6, v7

    .line 2580
    :goto_2
    int-to-float v7, v6

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2582
    const/4 v7, 0x1

    aget-object v7, v4, v7

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3f0a3d71

    mul-float/2addr v9, v10

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {p1, v7, v8, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2589
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 2550
    :catch_0
    move-exception v1

    .line 2551
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    iget v6, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    .line 2552
    goto :goto_1

    .line 2554
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget v6, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    goto/16 :goto_1

    .line 2568
    :catch_1
    move-exception v1

    .line 2569
    .restart local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901f2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 2571
    goto :goto_2

    .line 2573
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901f2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    goto :goto_2

    .line 2591
    .end local v6    # "tempLineLabelSize":I
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawKeyLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2594
    .end local v4    # "labels":[Ljava/lang/String;
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawKeyLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method protected getAccessibilityDescription(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const v8, 0x7f0d018d

    const v7, 0x7f0d018c

    const v6, 0x7f0d01a1

    const v5, 0x7f0d0195

    const v4, 0x7f0d01a3

    .line 4636
    const/4 v1, 0x0

    .line 4637
    .local v1, "description":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v2, :cond_0

    .line 4638
    const-string v2, "SamsungIME"

    const-string v3, " Failed to getAccessibilityDescription because  mInputModeManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    const/4 v2, 0x0

    .line 4812
    :goto_0
    return-object v2

    .line 4642
    :cond_0
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    move-object v2, v1

    .line 4812
    goto :goto_0

    .line 4644
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4645
    goto :goto_1

    .line 4647
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4648
    goto :goto_1

    .line 4650
    :sswitch_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v0

    .line 4651
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 4666
    :goto_2
    if-nez v1, :cond_1

    .line 4667
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4656
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;

    move-result-object v1

    .line 4657
    goto :goto_2

    .line 4659
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4660
    goto :goto_2

    .line 4671
    .end local v0    # "action":I
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4672
    goto :goto_1

    .line 4675
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4676
    goto :goto_1

    .line 4678
    :sswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4679
    goto :goto_1

    .line 4681
    :sswitch_6
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getNextInputLanguageName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4682
    goto :goto_1

    .line 4684
    :sswitch_7
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 4686
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4687
    goto :goto_1

    .line 4689
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4690
    goto/16 :goto_1

    .line 4692
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4697
    :sswitch_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_1

    .line 4729
    :pswitch_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4699
    :pswitch_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4700
    goto/16 :goto_1

    .line 4702
    :pswitch_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4703
    goto/16 :goto_1

    .line 4705
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4706
    goto/16 :goto_1

    .line 4708
    :pswitch_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4709
    goto/16 :goto_1

    .line 4711
    :pswitch_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4712
    goto/16 :goto_1

    .line 4714
    :pswitch_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4715
    goto/16 :goto_1

    .line 4717
    :pswitch_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4718
    goto/16 :goto_1

    .line 4720
    :pswitch_e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4721
    goto/16 :goto_1

    .line 4723
    :pswitch_f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4724
    goto/16 :goto_1

    .line 4726
    :pswitch_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4727
    goto/16 :goto_1

    .line 4734
    :sswitch_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4735
    goto/16 :goto_1

    .line 4737
    :sswitch_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4738
    goto/16 :goto_1

    .line 4740
    :sswitch_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4741
    goto/16 :goto_1

    .line 4743
    :sswitch_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4744
    goto/16 :goto_1

    .line 4746
    :sswitch_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4747
    goto/16 :goto_1

    .line 4749
    :sswitch_e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4750
    goto/16 :goto_1

    .line 4752
    :sswitch_f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4753
    goto/16 :goto_1

    .line 4755
    :sswitch_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4756
    goto/16 :goto_1

    .line 4758
    :sswitch_11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4759
    goto/16 :goto_1

    .line 4761
    :sswitch_12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4762
    goto/16 :goto_1

    .line 4764
    :sswitch_13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4765
    goto/16 :goto_1

    .line 4767
    :sswitch_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4768
    goto/16 :goto_1

    .line 4770
    :sswitch_15
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_1

    .line 4771
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4772
    const-string v1, "?"

    goto/16 :goto_1

    .line 4774
    :cond_2
    const-string v1, "."

    goto/16 :goto_1

    .line 4779
    :sswitch_16
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_1

    .line 4780
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4781
    const-string v1, "!"

    goto/16 :goto_1

    .line 4783
    :cond_3
    const-string v1, ","

    goto/16 :goto_1

    .line 4788
    :sswitch_17
    const-string v1, "-"

    .line 4789
    goto/16 :goto_1

    .line 4791
    :sswitch_18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4792
    goto/16 :goto_1

    .line 4794
    :sswitch_19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4795
    goto/16 :goto_1

    .line 4797
    :sswitch_1a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4798
    goto/16 :goto_1

    .line 4800
    :sswitch_1b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4801
    goto/16 :goto_1

    .line 4803
    :sswitch_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4804
    goto/16 :goto_1

    .line 4806
    :sswitch_1d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4807
    goto/16 :goto_1

    .line 4809
    :sswitch_1e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4642
    :sswitch_data_0
    .sparse-switch
        -0x3ee -> :sswitch_1e
        -0x3ed -> :sswitch_1d
        -0x3eb -> :sswitch_1
        -0x3ea -> :sswitch_1c
        -0x3e9 -> :sswitch_1b
        -0x3e8 -> :sswitch_19
        -0x19a -> :sswitch_4
        -0x190 -> :sswitch_4
        -0xe5 -> :sswitch_1a
        -0xe4 -> :sswitch_18
        -0x88 -> :sswitch_13
        -0x87 -> :sswitch_12
        -0x85 -> :sswitch_f
        -0x84 -> :sswitch_11
        -0x83 -> :sswitch_10
        -0x80 -> :sswitch_e
        -0x7d -> :sswitch_9
        -0x7c -> :sswitch_16
        -0x7a -> :sswitch_15
        -0x79 -> :sswitch_c
        -0x78 -> :sswitch_d
        -0x77 -> :sswitch_a
        -0x76 -> :sswitch_b
        -0x75 -> :sswitch_8
        -0x6e -> :sswitch_14
        -0x6c -> :sswitch_6
        -0x66 -> :sswitch_7
        -0x64 -> :sswitch_3
        -0x5 -> :sswitch_0
        0xa -> :sswitch_2
        0x20 -> :sswitch_5
        0x2d -> :sswitch_17
    .end sparse-switch

    .line 4651
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4684
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 4697
    :pswitch_data_2
    .packed-switch -0x88
        :pswitch_6
        :pswitch_10
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected getAlternativeCharPopupColumCount(Ljava/lang/StringBuilder;)I
    .locals 5
    .param p1, "alternativeChar"    # Ljava/lang/StringBuilder;

    .prologue
    .line 4030
    const/4 v1, -0x1

    .line 4031
    .local v1, "columnCount":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 4032
    .local v0, "charLength":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 4034
    .local v2, "maxColumn":I
    if-le v0, v2, :cond_0

    .line 4035
    div-int/lit8 v3, v0, 0x2

    rem-int/lit8 v4, v0, 0x2

    add-int v1, v3, v4

    .line 4037
    :cond_0
    return v1
.end method

.method protected getAlternativeChars(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "alternativeChar"    # Ljava/lang/StringBuilder;
    .param p2, "firstKeyIsLeft"    # Z

    .prologue
    .line 4042
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getSortAlternativeChars(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getArmenianUpperCaseLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 4585
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getArrowPositionY()I
    .locals 3

    .prologue
    .line 3657
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3659
    :try_start_0
    const-string v1, "floating_handwriting_space_key_arrow_top_margin"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3665
    :goto_0
    return v1

    .line 3661
    :catch_0
    move-exception v0

    .line 3662
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 3665
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getCMSymbolPopupFixedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4239
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCandidateViewHeight()I
    .locals 3

    .prologue
    .line 4530
    :try_start_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 4532
    :cond_0
    const-string v1, "popup_candidate_view_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    .line 4537
    :goto_0
    return v1

    .line 4534
    :cond_1
    const-string v1, "candidate_view_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4536
    :catch_0
    move-exception v0

    .line 4537
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCjiTurboKeyExtraLabelCode(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4600
    const/4 v0, -0x1

    return v0
.end method

.method protected getColorIdByIndex(I)I
    .locals 4
    .param p1, "colorIndex"    # I

    .prologue
    .line 3325
    const/4 v0, 0x0

    .line 3326
    .local v0, "colorId":I
    packed-switch p1, :pswitch_data_0

    .line 3343
    const v0, 0x7f0b0025

    .line 3344
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3345
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of pen color index error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - set default color blue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_0
    :goto_0
    return v0

    .line 3328
    :pswitch_0
    const v0, 0x7f0b0023

    .line 3329
    goto :goto_0

    .line 3331
    :pswitch_1
    const v0, 0x7f0b0024

    .line 3332
    goto :goto_0

    .line 3334
    :pswitch_2
    const v0, 0x7f0b0025

    .line 3335
    goto :goto_0

    .line 3337
    :pswitch_3
    const v0, 0x7f0b0026

    .line 3338
    goto :goto_0

    .line 3340
    :pswitch_4
    const v0, 0x7f0b0027

    .line 3341
    goto :goto_0

    .line 3326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getCommaSymbolPopupFixedValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 4926
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "!"

    aput-object v2, v0, v1

    .line 4929
    .local v0, "mCommaSymbolPopupFixedValuesForTablet":[Ljava/lang/String;
    return-object v0
.end method

.method protected getCurrentUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;IZ)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2, "keyIndex"    # I
    .param p3, "firstKeyIsLeft"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5336
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 5338
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5340
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCurrentUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;IZ)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultCandidateList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4625
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4626
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getDefaultSymbolFixedValues()[Ljava/lang/String;

    move-result-object v0

    .line 4627
    .local v0, "defaultSymList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4628
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4629
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4632
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getDefaultSymbolFixedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4261
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultSymbolFixedValues:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDialogTheme()I
    .locals 1

    .prologue
    .line 4608
    const/high16 v0, 0x7f0e0000

    return v0
.end method

.method protected getDisableFunctionKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "isDrawHoverKey"    # Z

    .prologue
    const v2, 0x7f02091d

    .line 3876
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 3878
    :try_start_0
    const-string v1, "handwriting_key_bg_option"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3890
    :goto_0
    return-object v1

    .line 3879
    :catch_0
    move-exception v0

    .line 3880
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 3883
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    if-eqz p1, :cond_1

    .line 3885
    :try_start_1
    const-string v1, "sip_key_bg_option_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 3886
    :catch_1
    move-exception v0

    .line 3887
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 3890
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDisableKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "isDrawHoverKey"    # Z

    .prologue
    const v2, 0x7f02090c

    .line 3897
    if-eqz p1, :cond_0

    .line 3899
    :try_start_0
    const-string v1, "sip_key_bg_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3916
    :goto_0
    return-object v1

    .line 3900
    :catch_0
    move-exception v0

    .line 3901
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 3903
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-nez v1, :cond_1

    .line 3905
    :try_start_1
    const-string v1, "sip_key_bg_normal_qwerty"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 3906
    :catch_1
    move-exception v0

    .line 3907
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 3909
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3911
    :try_start_2
    const-string v1, "btn_keyboard_key_normal_f"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    .line 3912
    :catch_2
    move-exception v0

    .line 3913
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 3916
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDisableKeyLabelColor()I
    .locals 2

    .prologue
    .line 2253
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getDomainPopupRowItemCount()I
    .locals 2

    .prologue
    .line 3823
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3824
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1
.end method

.method protected getDomainPopupStringValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 3816
    const/4 v0, 0x0

    .line 3817
    .local v0, "popupValues":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3818
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3819
    return-object v0
.end method

.method protected getDotComKeyPopupResId()I
    .locals 4

    .prologue
    const v1, 0x7f0501fb

    .line 3805
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 3807
    :try_start_0
    const-string v2, "floating_popup_domain_keyboard"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3812
    :cond_0
    :goto_0
    return v1

    .line 3808
    :catch_0
    move-exception v0

    .line 3809
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method protected getDotSymbolPopupFixedValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 4933
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    .line 4936
    .local v0, "mDotSymbolPopupFixedValuesForTablet":[Ljava/lang/String;
    return-object v0
.end method

.method protected getEmoticonPopupKeyLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4284
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLatelyUsedEmoticonText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4285
    .local v0, "latelyUsedEmoticon":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 4288
    .end local v0    # "latelyUsedEmoticon":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "latelyUsedEmoticon":Ljava/lang/CharSequence;
    :cond_0
    const-string v0, ":-)"

    goto :goto_0
.end method

.method protected getEmoticonPopupKeyboardId()I
    .locals 1

    .prologue
    .line 4280
    const v0, 0x7f0501fc

    return v0
.end method

.method protected getEmptyShortcutsGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 5299
    const v0, 0x7f080030

    return v0
.end method

.method protected getEmptyShortcutsGuideDialogContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5309
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0304

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEmptyShortcutsGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5304
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEmptyShortcutsGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 5294
    const v0, 0x7f03002e

    return v0
.end method

.method protected getExtraLabelPositionX(Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 3727
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtraLabelPositionY(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 1
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 3732
    const/4 v0, 0x0

    return v0
.end method

.method protected getFloatingKeyboardHeight()I
    .locals 3

    .prologue
    .line 4508
    :try_start_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 4510
    :try_start_1
    const-string v1, "floating_month_keyboard_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 4518
    :goto_0
    return v1

    .line 4511
    :catch_0
    move-exception v0

    .line 4512
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    const-string v1, "floating_keyboard_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4516
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string v1, "handwriting_floating_panel_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 4517
    :catch_1
    move-exception v0

    .line 4518
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getFloatingKeyboardLeftEdge()I
    .locals 1

    .prologue
    .line 5254
    const/4 v0, 0x0

    return v0
.end method

.method protected getFloatingKeyboardMoveButtonWidth()I
    .locals 1

    .prologue
    .line 4479
    const/4 v0, 0x0

    return v0
.end method

.method protected getFloatingKeyboardWidth()I
    .locals 3

    .prologue
    .line 4461
    const/4 v1, 0x0

    .line 4463
    .local v1, "width":I
    :try_start_0
    const-string v2, "floating_keyboard_width"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 4467
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4469
    :try_start_1
    const-string v2, "handwriting_floating_panel_width"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    float-to-int v1, v2

    .line 4474
    .end local v1    # "width":I
    :cond_0
    :goto_1
    return v1

    .line 4464
    .restart local v1    # "width":I
    :catch_0
    move-exception v0

    .line 4465
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 4470
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 4471
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    goto :goto_1
.end method

.method protected getFloatingQwertyKeyIconOffsetY()I
    .locals 3

    .prologue
    .line 5325
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mFloatingQwertyKeyIconOffsetY:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 5327
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mFloatingQwertyKeyIconOffsetY:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5332
    :cond_0
    :goto_0
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mFloatingQwertyKeyIconOffsetY:I

    return v1

    .line 5328
    :catch_0
    move-exception v0

    .line 5329
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mFloatingQwertyKeyIconOffsetY:I

    goto :goto_0
.end method

.method protected getFocusedKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 5242
    :try_start_0
    const-string v1, "sip_key_bg_focused"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5245
    :goto_0
    return-object v1

    .line 5244
    :catch_0
    move-exception v0

    .line 5245
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getFont(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "language"    # I

    .prologue
    .line 2936
    const/4 v0, 0x0

    .line 2937
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2938
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/FontManager;->getSystemFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 2946
    :goto_0
    return-object v0

    .line 2939
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2940
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v2, "SAMSUNGSANS_KEYPAD"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 2942
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v2, "ROBOTO_KEYPAD_MEDIUM"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFunctionKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f020927

    .line 2152
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 2154
    :try_start_0
    const-string v1, "sip_key_bg_option_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2159
    :goto_0
    return-object v1

    .line 2155
    :catch_0
    move-exception v0

    .line 2156
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 2159
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFunctionKeyBackgroundForQwerty()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f020927

    .line 2164
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 2166
    :try_start_0
    const-string v1, "sip_key_bg_option_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2171
    :goto_0
    return-object v1

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 2171
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFunctionKeyHoverBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2187
    :try_start_0
    const-string v1, "sip_key_bg_option_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2190
    :goto_0
    return-object v1

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getFunctionKeyLabelColor()I
    .locals 2

    .prologue
    .line 2245
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getFunctionKeyShadowColor()I
    .locals 2

    .prologue
    .line 2233
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getGestureGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 2918
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    .line 2919
    const/4 v0, 0x0

    .line 2921
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080037

    goto :goto_0
.end method

.method protected getGestureGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2867
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    .line 2868
    const/4 v0, 0x0

    .line 2870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getGestureGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 2910
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    .line 2911
    const/4 v0, 0x0

    .line 2913
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030031

    goto :goto_0
.end method

.method protected getHorizontalLine()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3836
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020653

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    .line 3838
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getHoverLayoutRscId()I
    .locals 1

    .prologue
    .line 5182
    const v0, 0x7f030018

    return v0
.end method

.method protected getHwrPanelGap()I
    .locals 2

    .prologue
    .line 4951
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getHwrSymPoupBtnLabelPressedColor()I
    .locals 3

    .prologue
    .line 5174
    :try_start_0
    const-string v1, "hwr_sympopup_pressed_labelcolor"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5176
    :goto_0
    return v1

    .line 5175
    :catch_0
    move-exception v0

    .line 5176
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getHwrSymbolPopupButtonBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "isDrawHoverKey"    # Z

    .prologue
    .line 5163
    if-eqz p1, :cond_0

    .line 5164
    :try_start_0
    const-string v1, "handwriting_popup_btn_bg_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5168
    :goto_0
    return-object v1

    .line 5166
    :cond_0
    const-string v1, "sip_hwr_sympopup_btn_bg_xml"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 5167
    :catch_0
    move-exception v0

    .line 5168
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020927

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getInvisibleKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02090b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "isEnabled"    # Z
    .param p3, "isDrawHoverKey"    # Z

    .prologue
    const/4 v5, 0x2

    .line 2763
    :try_start_0
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 2764
    .local v1, "keyCode":I
    const/16 v3, -0x6b

    if-ne v1, v3, :cond_0

    .line 2765
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2766
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02090b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2859
    .end local v1    # "keyCode":I
    :goto_0
    return-object v3

    .line 2768
    .restart local v1    # "keyCode":I
    :cond_0
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 2769
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 2770
    .local v2, "recogMode":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    if-nez v3, :cond_2

    .line 2774
    if-eqz p3, :cond_1

    .line 2775
    const-string v3, "handwriting_enter_btn_hover"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 2777
    :cond_1
    const-string v3, "handwriting_enter_btn_bg"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 2779
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2780
    const-string v3, "btn_keyboard_key_trans_01_f_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 2781
    :cond_3
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletNoteMode:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isEnterButtonDefaultBule()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2782
    const-string v3, "handwriting_next_enter_key_bg_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 2787
    :cond_4
    const-string v3, "handwriting_key_bg_normal_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 2790
    .end local v2    # "recogMode":I
    :cond_5
    const/16 v3, 0x20

    if-ne v1, v3, :cond_7

    .line 2791
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2792
    const-string v3, "btn_keyboard_key_normal_f_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 2797
    :cond_6
    const-string v3, "handwriting_key_bg_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 2799
    :cond_7
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WQXGA:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WSVGA:Z

    if-eqz v3, :cond_13

    .line 2800
    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v5, :cond_a

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2801
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2802
    const-string v3, "btn_keyboard_key_number_f_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2804
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02091c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2806
    :cond_a
    const/16 v3, -0x6d

    if-eq v1, v3, :cond_b

    const/16 v3, -0xbe

    if-ne v1, v3, :cond_d

    .line 2807
    :cond_b
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2808
    const-string v3, "btn_keyboard_key_trans_01_f_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2810
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020927

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2812
    :cond_d
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2813
    if-eqz p2, :cond_f

    .line 2814
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2815
    const-string v3, "btn_keyboard_key_trans_01_f_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2820
    :cond_e
    const-string v3, "handwriting_key_bg_normal_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2823
    :cond_f
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2824
    const-string v3, "btn_keyboard_key_trans_01_f"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2826
    :cond_10
    const-string v3, "handwriting_btn_bg_01"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2830
    :cond_11
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2831
    const-string v3, "btn_keyboard_key_normal_f_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2833
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2836
    :cond_13
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_HD:Z

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsNoteMode:Z

    if-nez v3, :cond_15

    :cond_14
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_18

    :cond_15
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v5, :cond_18

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2837
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2838
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2840
    :cond_16
    if-eqz p3, :cond_17

    .line 2841
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyHoverBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 2843
    :cond_17
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 2847
    :cond_18
    if-eqz p2, :cond_19

    .line 2851
    const-string v3, "handwriting_key_bg_normal_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2853
    :cond_19
    const-string v3, "handwriting_btn_bg"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 2856
    .end local v1    # "keyCode":I
    :catch_0
    move-exception v0

    .line 2857
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 2859
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "keyCode":I
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected getKeyDrawingType(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 5
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1952
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1953
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1972
    :goto_0
    return v0

    .line 1956
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1961
    goto :goto_0

    .line 1968
    :cond_1
    iget-object v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1970
    goto :goto_0

    .line 1972
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1956
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getKeyExtraLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;
    .locals 3
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 1936
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1937
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getMonthText(I)Ljava/lang/String;

    move-result-object v0

    .line 1940
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyExtraLabelColor(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 2
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3749
    iget-boolean v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_0

    .line 3750
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPressedKeyLabelColor:I

    .line 3755
    :goto_0
    return v0

    .line 3752
    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyLabelColor:I

    goto :goto_0

    .line 3755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyExtraLabelFont()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 3737
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getKeyExtraLabelSize()F
    .locals 2

    .prologue
    .line 3741
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3742
    iget v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    int-to-float v0, v0

    .line 3744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "isEnabled"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 216
    .local v3, "res":Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v4, :cond_0

    .line 217
    const-string v4, "SamsungIME"

    const-string v5, "Fail to getKeyIcon becuase mInputModeManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v4, 0x0

    .line 604
    :goto_0
    return-object v4

    .line 221
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 222
    iget-object v4, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_14

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    move-object v4, v2

    .line 604
    goto :goto_0

    .line 225
    :sswitch_0
    if-eqz p2, :cond_2

    .line 226
    :try_start_1
    const-string v4, "floating_qwerty_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 229
    :cond_2
    const-string v4, "floating_qwerty_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f02071a

    :try_start_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 235
    goto :goto_1

    .line 237
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_8

    .line 238
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_14

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    if-eqz p2, :cond_3

    .line 241
    :try_start_3
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_1

    .line 243
    :catch_1
    move-exception v0

    .line 244
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020734

    :try_start_4
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_14

    move-result-object v2

    .line 246
    goto :goto_1

    .line 249
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_5
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    goto :goto_1

    .line 251
    :catch_2
    move-exception v0

    .line 252
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020731

    :try_start_6
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 253
    goto :goto_1

    .line 255
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_14

    move-result v4

    if-ne v4, v7, :cond_6

    .line 256
    if-eqz p2, :cond_5

    .line 258
    :try_start_7
    const-string v4, "floating_qwerty_key_icon_search_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v2

    goto :goto_1

    .line 260
    :catch_3
    move-exception v0

    .line 261
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020795

    :try_start_8
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_14

    move-result-object v2

    .line 263
    goto :goto_1

    .line 266
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_9
    const-string v4, "floating_qwerty_key_icon_search"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v2

    goto :goto_1

    .line 268
    :catch_4
    move-exception v0

    .line 269
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020792

    :try_start_a
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_14

    move-result-object v2

    .line 270
    goto :goto_1

    .line 273
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    if-eqz p2, :cond_7

    .line 275
    :try_start_b
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v2

    goto :goto_1

    .line 277
    :catch_5
    move-exception v0

    .line 278
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020734

    :try_start_c
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_14

    move-result-object v2

    .line 280
    goto/16 :goto_1

    .line 283
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_d
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v2

    goto/16 :goto_1

    .line 285
    :catch_6
    move-exception v0

    .line 286
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020731

    :try_start_e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 287
    goto/16 :goto_1

    .line 291
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_14

    move-result v4

    if-eqz v4, :cond_a

    .line 292
    if-eqz p2, :cond_9

    .line 294
    :try_start_f
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_7

    move-result-object v2

    goto/16 :goto_1

    .line 296
    :catch_7
    move-exception v0

    .line 297
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020734

    :try_start_10
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_14

    move-result-object v2

    .line 299
    goto/16 :goto_1

    .line 302
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    :try_start_11
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_8

    move-result-object v2

    goto/16 :goto_1

    .line 304
    :catch_8
    move-exception v0

    .line 305
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020731

    :try_start_12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 306
    goto/16 :goto_1

    .line 308
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_14

    move-result v4

    if-ne v4, v7, :cond_c

    .line 309
    if-eqz p2, :cond_b

    .line 311
    :try_start_13
    const-string v4, "floating_qwerty_key_icon_search_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_9

    move-result-object v2

    goto/16 :goto_1

    .line 313
    :catch_9
    move-exception v0

    .line 314
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020795

    :try_start_14
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    .line 316
    goto/16 :goto_1

    .line 319
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_15
    const-string v4, "floating_qwerty_key_icon_search"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_a

    move-result-object v2

    goto/16 :goto_1

    .line 321
    :catch_a
    move-exception v0

    .line 322
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020792

    :try_start_16
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result-object v2

    .line 323
    goto/16 :goto_1

    .line 343
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    if-eqz p2, :cond_d

    .line 345
    :try_start_17
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_b

    move-result-object v2

    goto/16 :goto_1

    .line 347
    :catch_b
    move-exception v0

    .line 348
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020734

    :try_start_18
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_14

    move-result-object v2

    .line 350
    goto/16 :goto_1

    .line 353
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    :try_start_19
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_c

    move-result-object v2

    goto/16 :goto_1

    .line 355
    :catch_c
    move-exception v0

    .line 356
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020731

    :try_start_1a
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 361
    goto/16 :goto_1

    .line 364
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2
    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getFloatingMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 365
    goto/16 :goto_1

    .line 368
    :sswitch_3
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    or-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 369
    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getLanguageChangeKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_14

    move-result-object v2

    goto/16 :goto_1

    .line 371
    :cond_e
    if-nez p2, :cond_1

    .line 373
    :try_start_1b
    const-string v4, "qwerty_key_icon_language_change_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_d

    move-result-object v2

    goto/16 :goto_1

    .line 375
    :catch_d
    move-exception v0

    .line 376
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020777

    :try_start_1c
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 378
    goto/16 :goto_1

    .line 384
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDaMode()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 385
    if-eqz p2, :cond_f

    .line 386
    const-string v4, "floating_qwerty_key_icon_space_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 389
    :cond_f
    const-string v4, "floating_qwerty_key_icon_space_center"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 392
    :cond_10
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_14

    move-result-object v4

    if-nez v4, :cond_12

    .line 393
    if-eqz p2, :cond_11

    .line 395
    :try_start_1d
    const-string v4, "floating_qwerty_key_icon_space_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_e

    move-result-object v2

    goto/16 :goto_1

    .line 397
    :catch_e
    move-exception v0

    .line 398
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0207a9

    :try_start_1e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 400
    goto/16 :goto_1

    .line 402
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    const-string v4, "floating_qwerty_key_icon_space_center"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_14

    move-result-object v2

    goto/16 :goto_1

    .line 406
    :cond_12
    if-eqz p2, :cond_13

    .line 408
    :try_start_1f
    const-string v4, "floating_qwerty_key_icon_space_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_f

    move-result-object v2

    goto/16 :goto_1

    .line 410
    :catch_f
    move-exception v0

    .line 411
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0207b7

    :try_start_20
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_14

    move-result-object v2

    .line 412
    goto/16 :goto_1

    .line 415
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_13
    :try_start_21
    const-string v4, "floating_qwerty_key_icon_space"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_10

    move-result-object v2

    goto/16 :goto_1

    .line 417
    :catch_10
    move-exception v0

    .line 418
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0207b7

    :try_start_22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 422
    goto/16 :goto_1

    .line 424
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    invoke-direct {p0, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getRangeChangeIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 425
    goto/16 :goto_1

    .line 427
    :sswitch_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 428
    if-eqz p2, :cond_14

    .line 429
    const-string v4, "hwr_symbol_mode_key_icon_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 431
    :cond_14
    const-string v4, "handwriting_icon_text_d.png"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 436
    :sswitch_7
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_14

    if-ne v4, v6, :cond_1

    .line 438
    if-eqz p2, :cond_15

    .line 439
    :try_start_23
    const-string v4, "floating_qwerty_key_icon_hwr_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 442
    :cond_15
    const-string v4, "floating_qwerty_key_icon_hwr_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_11

    move-result-object v2

    goto/16 :goto_1

    .line 444
    :catch_11
    move-exception v0

    .line 445
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020740

    :try_start_24
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 446
    goto/16 :goto_1

    .line 450
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    if-eqz p2, :cond_16

    .line 451
    const-string v4, "sip_floating_icon_arrow_l"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 453
    :cond_16
    const-string v4, "sip_floating_icon_arrow_l_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 455
    goto/16 :goto_1

    .line 457
    :sswitch_9
    if-eqz p2, :cond_17

    .line 458
    const-string v4, "sip_floating_icon_arrow_r"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 460
    :cond_17
    const-string v4, "sip_floating_icon_arrow_r_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 462
    goto/16 :goto_1

    .line 467
    :cond_18
    iget-object v4, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_1

    .line 581
    :sswitch_a
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_14

    if-ne v4, v6, :cond_2f

    .line 583
    if-eqz p2, :cond_2e

    .line 584
    :try_start_25
    const-string v4, "qwerty_key_icon_hwr_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_13

    move-result-object v2

    goto/16 :goto_1

    .line 470
    :sswitch_b
    if-eqz p2, :cond_1a

    .line 471
    :try_start_26
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 472
    const-string v4, "qwerty_key_icon_clipboard_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 475
    :cond_19
    const v4, 0x7f02071a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 478
    :cond_1a
    const-string v4, "qwerty_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_12

    move-result-object v2

    goto/16 :goto_1

    .line 481
    :catch_12
    move-exception v0

    .line 482
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f02071a

    :try_start_27
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 484
    goto/16 :goto_1

    .line 486
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_20

    .line 487
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 488
    if-eqz p2, :cond_1b

    .line 489
    const v4, 0x7f02024a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 492
    :cond_1b
    const v4, 0x7f020248

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 494
    :cond_1c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v4

    if-ne v4, v7, :cond_1e

    .line 495
    if-eqz p2, :cond_1d

    .line 496
    const v4, 0x7f020795

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 498
    :cond_1d
    const v4, 0x7f020792

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 501
    :cond_1e
    if-eqz p2, :cond_1f

    .line 502
    const v4, 0x7f020734

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 504
    :cond_1f
    const v4, 0x7f020731

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 508
    :cond_20
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 509
    if-eqz p2, :cond_21

    .line 510
    const v4, 0x7f0205ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 512
    :cond_21
    const v4, 0x7f0205ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 514
    :cond_22
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v4

    if-ne v4, v7, :cond_24

    .line 515
    if-eqz p2, :cond_23

    .line 516
    const v4, 0x7f0205f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 518
    :cond_23
    const v4, 0x7f0205f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 521
    :cond_24
    if-eqz p2, :cond_25

    .line 522
    const v4, 0x7f0205ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 524
    :cond_25
    const v4, 0x7f0205ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 528
    goto/16 :goto_1

    .line 531
    :sswitch_d
    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 532
    goto/16 :goto_1

    .line 535
    :sswitch_e
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-nez v4, :cond_26

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_27

    .line 536
    :cond_26
    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getLanguageChangeKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 538
    :cond_27
    if-nez p2, :cond_1

    .line 539
    const v4, 0x7f020777

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 546
    :sswitch_f
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDaMode()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 547
    if-eqz p2, :cond_28

    .line 548
    const v4, 0x7f0207a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 550
    :cond_28
    const v4, 0x7f0207a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 552
    :cond_29
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 553
    if-eqz p2, :cond_2a

    .line 555
    const v4, 0x7f0207a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 557
    :cond_2a
    const v4, 0x7f0207a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 560
    :cond_2b
    if-eqz p2, :cond_2c

    .line 561
    const v4, 0x7f0207b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 563
    :cond_2c
    const v4, 0x7f0207a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 566
    goto/16 :goto_1

    .line 569
    :sswitch_10
    invoke-direct {p0, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getRangeChangeIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 570
    goto/16 :goto_1

    .line 572
    :sswitch_11
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 573
    if-eqz p2, :cond_2d

    .line 574
    const-string v4, "hwr_symbol_mode_key_icon_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 576
    :cond_2d
    const-string v4, "handwriting_icon_text_d.png"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_14

    move-result-object v2

    goto/16 :goto_1

    .line 587
    :cond_2e
    :try_start_28
    const-string v4, "sip_icon_handwriting_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_13

    move-result-object v2

    goto/16 :goto_1

    .line 589
    :catch_13
    move-exception v0

    .line 590
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f020740

    :try_start_29
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_14

    move-result-object v2

    .line 591
    goto/16 :goto_1

    .line 593
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2f
    const/4 v2, 0x0

    .line 595
    goto/16 :goto_1

    .line 600
    :catch_14
    move-exception v1

    .line 601
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "SamsungIME"

    const-string v5, "getKeyIcon() : return value not found exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ea -> :sswitch_9
        -0x3e9 -> :sswitch_8
        -0x137 -> :sswitch_7
        -0xe4 -> :sswitch_0
        -0x75 -> :sswitch_2
        -0x6e -> :sswitch_6
        -0x6c -> :sswitch_3
        -0x66 -> :sswitch_5
        0xa -> :sswitch_1
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 467
    :sswitch_data_1
    .sparse-switch
        -0x137 -> :sswitch_a
        -0xe4 -> :sswitch_b
        -0x75 -> :sswitch_d
        -0x6e -> :sswitch_11
        -0x6c -> :sswitch_e
        -0x66 -> :sswitch_10
        0xa -> :sswitch_c
        0x20 -> :sswitch_f
    .end sparse-switch
.end method

.method protected getKeyLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/4 v4, 0x0

    .line 2950
    const/4 v1, 0x0

    .line 2951
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 2952
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x8d

    if-gt v2, v3, :cond_3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x98

    if-lt v2, v3, :cond_3

    .line 2954
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    add-int/lit16 v2, v2, 0x8d

    neg-int v0, v2

    .line 2955
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2965
    .end local v0    # "index":I
    :goto_0
    return-object v2

    .line 2958
    :cond_0
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x6d

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0xbe

    if-ne v2, v3, :cond_2

    .line 2959
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->makeSymbolsPageLabelString()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    .line 2960
    goto :goto_0

    .line 2961
    :cond_2
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x66

    if-ne v2, v3, :cond_3

    .line 2962
    const/4 v2, 0x0

    goto :goto_0

    .line 2965
    :cond_3
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected getKeyLabelSize(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 5
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 3364
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 3365
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3366
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    .line 3455
    :goto_0
    return v1

    .line 3368
    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 3371
    :cond_1
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3372
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    goto :goto_0

    .line 3375
    :cond_2
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 3414
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v1

    if-nez v1, :cond_e

    .line 3416
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_a

    .line 3418
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_7

    .line 3420
    :try_start_0
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 3422
    const-string v1, "split_floating_number_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 3377
    :sswitch_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_3

    .line 3379
    :try_start_1
    const-string v1, "floating_hwr_range_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 3380
    :catch_0
    move-exception v0

    .line 3381
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTextFontSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v1

    goto :goto_0

    .line 3384
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTextFontSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v1

    goto :goto_0

    .line 3387
    :sswitch_1
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    goto :goto_0

    .line 3389
    :sswitch_2
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseGlobalKey()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-eq v1, v2, :cond_4

    .line 3392
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTextFontSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v1

    goto/16 :goto_0

    .line 3394
    :cond_4
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    goto/16 :goto_0

    .line 3397
    :sswitch_3
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    goto/16 :goto_0

    .line 3404
    :sswitch_4
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_5

    .line 3406
    :try_start_2
    const-string v1, "split_floating_range_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_0

    .line 3408
    :catch_1
    move-exception v0

    .line 3409
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    goto/16 :goto_0

    .line 3412
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    goto/16 :goto_0

    .line 3425
    :cond_6
    :try_start_3
    const-string v1, "split_floating_default_small_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_0

    .line 3428
    :catch_2
    move-exception v0

    .line 3429
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    .line 3432
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x3eb

    if-ne v1, v2, :cond_9

    .line 3433
    :cond_8
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    goto/16 :goto_0

    .line 3435
    :cond_9
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    .line 3437
    :cond_a
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_c

    .line 3439
    :cond_b
    const-string v1, "one_hand_qwerty_default_normal_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    .line 3442
    :cond_c
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3443
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    goto/16 :goto_0

    .line 3446
    :cond_d
    :try_start_4
    const-string v1, "qwerty_default_symbol_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 3448
    :catch_3
    move-exception v0

    .line 3449
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    .line 3455
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    goto/16 :goto_0

    .line 3375
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3eb -> :sswitch_4
        -0x3e8 -> :sswitch_4
        -0x137 -> :sswitch_3
        -0xe2 -> :sswitch_4
        -0xbe -> :sswitch_4
        -0x6f -> :sswitch_4
        -0x6e -> :sswitch_3
        -0x6d -> :sswitch_4
        -0x66 -> :sswitch_2
        0xa -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getKeyLongPressExtraLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;I)Ljava/lang/String;
    .locals 3
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "index"    # I

    .prologue
    .line 1944
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1945
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getMonthText(I)Ljava/lang/String;

    move-result-object v0

    .line 1948
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyPreviewHeight(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 4
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const v3, 0x7f0901f5

    .line 3112
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 3113
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 3114
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 3135
    :goto_0
    return v1

    .line 3116
    :cond_0
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 3118
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 3120
    :try_start_0
    const-string v1, "floating_qwerty_key_preview_default_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 3122
    :catch_0
    move-exception v0

    .line 3123
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 3127
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    sget-boolean v1, Lcom/diotek/ime/framework/view/PreviewController;->USE_TEXT_BALLOON_DRAWABLE:Z

    if-eqz v1, :cond_3

    .line 3128
    const-string v1, "qwerty_key_preview_balloon_default_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 3132
    :cond_3
    :try_start_1
    const-string v1, "hwr_space_key_preview_default_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 3134
    :catch_1
    move-exception v0

    .line 3135
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method protected getKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const v9, 0x7f0206c8

    const v8, 0x7f0206b7

    const/4 v7, 0x2

    .line 1690
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 1691
    .local v2, "method":I
    iget-object v5, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 1692
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1803
    :cond_0
    :goto_0
    return-object v3

    .line 1694
    :cond_1
    const/4 v3, 0x0

    .line 1695
    .local v3, "previewIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1696
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1794
    :sswitch_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1796
    :try_start_0
    const-string v5, "preview_hwr_icon_hwr"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v3

    goto :goto_0

    .line 1699
    :sswitch_1
    :try_start_1
    const-string v5, "preview_hwr_icon_backspace"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0206b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1703
    goto :goto_0

    .line 1705
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1707
    :try_start_2
    const-string v5, "preview_hwr_icon_enter"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    .line 1708
    :catch_1
    move-exception v0

    .line 1709
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1710
    goto :goto_0

    .line 1711
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 1713
    :try_start_3
    const-string v5, "preview_hwr_icon_search"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto :goto_0

    .line 1714
    :catch_2
    move-exception v0

    .line 1715
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0206c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1716
    goto :goto_0

    .line 1717
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v5

    const/high16 v6, 0x40000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 1719
    :try_start_4
    const-string v5, "preview_hwr_icon_enter"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v3

    goto :goto_0

    .line 1720
    :catch_3
    move-exception v0

    .line 1721
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1722
    goto :goto_0

    .line 1726
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    .line 1728
    :try_start_5
    const-string v5, "floating_preview_qwerty_key_icon_space"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v3

    goto :goto_0

    .line 1730
    :catch_4
    move-exception v0

    .line 1731
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v5, :cond_4

    .line 1732
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 1735
    :cond_4
    const-string v5, "preview_hwr_icon_space"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 1740
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_6
    const-string v5, "preview_hwr_icon_space"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v3

    goto/16 :goto_0

    .line 1741
    :catch_5
    move-exception v0

    .line 1742
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1745
    goto/16 :goto_0

    .line 1748
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    :try_start_7
    const-string v5, "preview_hwr_icon_setting"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v3

    goto/16 :goto_0

    .line 1749
    :catch_6
    move-exception v0

    .line 1750
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0206c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1752
    goto/16 :goto_0

    .line 1754
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v5, :cond_6

    .line 1755
    invoke-direct {p0, p1, v4}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getLanguageChangeKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 1758
    :cond_6
    :try_start_8
    const-string v5, "preview_hwr_icon_language"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v3

    goto/16 :goto_0

    .line 1759
    :catch_7
    move-exception v0

    .line 1760
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0206be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1763
    goto/16 :goto_0

    .line 1767
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    :try_start_9
    const-string v5, "preview_hwr_icon_clipboard"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result-object v3

    goto/16 :goto_0

    .line 1768
    :catch_8
    move-exception v0

    .line 1770
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_a
    const-string v5, "qwerty_icon_clipboard_bubble"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result-object v3

    goto/16 :goto_0

    .line 1771
    :catch_9
    move-exception v1

    .line 1772
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1778
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    invoke-direct {p0, p1, v4}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getMMKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1779
    goto/16 :goto_0

    .line 1782
    :sswitch_8
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getRangeChangePreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1783
    goto/16 :goto_0

    .line 1786
    :sswitch_9
    :try_start_b
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1787
    const-string v5, "handwriting_icon_text_bubble"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result-object v3

    goto/16 :goto_0

    .line 1789
    :catch_a
    move-exception v0

    .line 1790
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    .line 1792
    goto/16 :goto_0

    .line 1797
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_b
    move-exception v1

    .line 1798
    .restart local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0206bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 1696
    nop

    :sswitch_data_0
    .sparse-switch
        -0x137 -> :sswitch_0
        -0xe4 -> :sswitch_6
        -0x75 -> :sswitch_7
        -0x6e -> :sswitch_9
        -0x6c -> :sswitch_5
        -0x66 -> :sswitch_8
        -0x64 -> :sswitch_4
        -0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getKeyPreviewWidth(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 2
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 2969
    invoke-static {p1}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->clone(Lcom/diotek/ime/framework/view/Keyboard$Key;)Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeyPreviewWidth(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)I

    move-result v0

    .line 2971
    .local v0, "previewWidth":I
    return v0
.end method

.method protected getKeyPreviewXPosition(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I
    .locals 2
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "popupWidth"    # I

    .prologue
    .line 3143
    iget v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getKeyPreviewYPosition(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I
    .locals 2
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "popupHeight"    # I

    .prologue
    .line 3147
    iget v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getPreviewOffset()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getKeySecondaryCharacter(Lcom/diotek/ime/framework/view/Keyboard$Key;)C
    .locals 1
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 3842
    const/4 v0, 0x0

    return v0
.end method

.method protected getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;
    .locals 7
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const v6, 0x7f0d011f

    const/4 v5, 0x0

    .line 2029
    const/4 v0, 0x0

    .line 2030
    .local v0, "label":Ljava/lang/String;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v3, :cond_0

    .line 2031
    const-string v3, "SamsungIME"

    const-string v4, "Failed to getKeySpecialLabel becuase mInputModeManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const/4 v3, 0x0

    .line 2109
    :goto_0
    return-object v3

    .line 2035
    :cond_0
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 2036
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2037
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    :pswitch_0
    move-object v3, v0

    .line 2109
    goto :goto_0

    .line 2039
    .restart local v2    # "res":Landroid/content/res/Resources;
    :pswitch_1
    const v3, 0x7f0d0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2040
    goto :goto_1

    .line 2042
    :pswitch_2
    const v3, 0x7f0d0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2043
    goto :goto_1

    .line 2045
    :pswitch_3
    const v3, 0x7f0d0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2046
    goto :goto_1

    .line 2048
    :pswitch_4
    const v3, 0x7f0d0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2049
    goto :goto_1

    .line 2056
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x66

    if-ne v3, v4, :cond_c

    .line 2057
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2058
    .restart local v2    # "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 2059
    .local v1, "method":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 2061
    :pswitch_5
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x6b6f0000

    if-ne v3, v4, :cond_3

    .line 2062
    const v3, 0x7f0d0123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2063
    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x61720000

    if-ne v3, v4, :cond_4

    .line 2064
    const v3, 0x7f0d0124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2065
    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x66610000

    if-ne v3, v4, :cond_5

    .line 2066
    const v3, 0x7f0d0125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2067
    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x75720000

    if-ne v3, v4, :cond_6

    .line 2068
    const v3, 0x7f0d0126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2069
    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x69770000

    if-ne v3, v4, :cond_7

    .line 2070
    const v3, 0x7f0d0127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2071
    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x74680000

    if-ne v3, v4, :cond_8

    .line 2072
    const v3, 0x7f0d012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2073
    :cond_8
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2074
    const v3, 0x7f0d0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2076
    :cond_9
    const v3, 0x7f0d0121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2078
    goto/16 :goto_1

    .line 2080
    :pswitch_6
    if-nez v1, :cond_a

    .line 2081
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2083
    :cond_a
    const v3, 0x7f0d011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2085
    goto/16 :goto_1

    .line 2087
    :pswitch_7
    if-nez v1, :cond_b

    .line 2088
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2090
    :cond_b
    const v3, 0x7f0d011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2092
    goto/16 :goto_1

    .line 2096
    .end local v1    # "method":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_c
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x6e

    if-eq v3, v4, :cond_1

    .line 2101
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x6d

    if-ne v3, v4, :cond_d

    .line 2102
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->makeSymbolsPageLabelString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2103
    :cond_d
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WQXGA:Z

    if-eqz v3, :cond_f

    :cond_e
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x137

    if-ne v3, v4, :cond_f

    .line 2105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2107
    :cond_f
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2037
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2059
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected getKeyboardHideIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 5052
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020739

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyboardHidePreviewIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 5057
    :try_start_0
    const-string v1, "preview_qwerty_key_icon_hide"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5059
    :goto_0
    return-object v1

    .line 5058
    :catch_0
    move-exception v0

    .line 5059
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getKeypadBackground()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const v6, 0x7f0207c6

    .line 1976
    const/4 v0, 0x0

    .line 1978
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 1979
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2013
    :goto_0
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v4, :cond_0

    .line 2014
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    .line 2015
    .local v3, "privateImeOptionsInputType":I
    const/16 v4, 0xa

    if-ne v3, v4, :cond_7

    .line 2016
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2025
    .end local v3    # "privateImeOptionsInputType":I
    :cond_0
    :goto_1
    return-object v0

    .line 1981
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1982
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1983
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    if-eqz v4, :cond_2

    .line 1985
    :try_start_1
    const-string v4, "vohwr_floating_keypad_symbol_mode_bg"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1986
    :catch_0
    move-exception v2

    .line 1987
    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 1988
    goto :goto_0

    .line 1991
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :try_start_3
    const-string v4, "vohwr_keypad_symbol_mode_bg"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1992
    :catch_1
    move-exception v2

    .line 1993
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1994
    goto :goto_0

    .line 1997
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const-string v4, "qwerty_keypad_bg"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1999
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2000
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    if-eqz v4, :cond_5

    .line 2002
    :try_start_5
    const-string v4, "floating_vohwr_keypad_bg"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_0

    .line 2003
    :catch_2
    move-exception v1

    .line 2004
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020a8a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2005
    goto/16 :goto_0

    .line 2007
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020a8a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2010
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2017
    .restart local v3    # "privateImeOptionsInputType":I
    :cond_7
    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    .line 2019
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_1

    .line 2022
    .end local v3    # "privateImeOptionsInputType":I
    :catch_3
    move-exception v2

    .line 2023
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected getLabelShiftDistance(Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "outShiftDistance"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3759
    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 3760
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 3761
    .local v0, "method":I
    if-ne v0, v4, :cond_1

    .line 3762
    aput v3, p3, v3

    .line 3763
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getExtraLabelPositionY(Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    aput v1, p3, v4

    .line 3769
    .end local v0    # "method":I
    :cond_0
    :goto_0
    return-void

    .line 3764
    .restart local v0    # "method":I
    :cond_1
    if-nez v0, :cond_0

    .line 3765
    aput v3, p3, v3

    .line 3766
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getExtraLabelPositionY(Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    aput v1, p3, v4

    goto :goto_0
.end method

.method protected getLanguageArrowGap()I
    .locals 4

    .prologue
    .line 3671
    :try_start_0
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 3672
    :cond_0
    const-string v2, "handwriting_floating_space_language_arrow_gap"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    .line 3678
    :goto_0
    return v1

    .line 3674
    :cond_1
    const-string v2, "handwriting_space_language_arrow_gap"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "gap":I
    goto :goto_0

    .line 3675
    .end local v1    # "gap":I
    :catch_0
    move-exception v0

    .line 3676
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "gap":I
    goto :goto_0
.end method

.method protected getLanguageSelectDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLatelySymbolPopupDefaultValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4267
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLatelySymbolPopupFixedValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 4244
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4245
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

    .line 4254
    :goto_0
    return-object v0

    .line 4247
    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_1

    .line 4248
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

    goto :goto_0

    .line 4249
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4250
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

    goto :goto_0

    .line 4251
    :cond_2
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v1, 0x6a610000

    if-ne v0, v1, :cond_3

    .line 4252
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

    goto :goto_0

    .line 4254
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValues:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected getLatelyUsedSymbolPopupRowItemCount()I
    .locals 1

    .prologue
    .line 4276
    const/4 v0, 0x6

    return v0
.end method

.method protected getLeftArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const v3, 0x7f0207ad

    .line 3710
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 3711
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3712
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3714
    :try_start_0
    const-string v2, "floating_qwerty_key_icon_space_left_arrow_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3722
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 3715
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3716
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3719
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getLineCountPopupKeyboard(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)[I
    .locals 12
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 3922
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 3923
    .local v0, "LineCount":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3925
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v7, :cond_0

    .line 3926
    const-string v7, "SamsungIME"

    const-string v8, "Failed to getLineCountPopupKeyboard because mInputModeManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    const/4 v7, 0x0

    .line 4026
    :goto_0
    return-object v7

    .line 3932
    :cond_0
    :try_start_0
    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    .line 3990
    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x301

    if-eq v7, v8, :cond_1

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x302

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v7}, Lcom/diotek/ime/framework/util/Utils;->isIndoChineseLanguage(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v7, v9, :cond_9

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3997
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCurrentUmlautString()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3998
    .local v1, "currentUmlautString":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 3999
    .local v6, "umlautStringLength":I
    :cond_2
    if-le v6, v9, :cond_8

    .line 4000
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 4002
    .local v3, "maxColumn":I
    if-ge v3, v6, :cond_6

    .line 4003
    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v0, v7

    .line 4007
    :goto_1
    const/4 v7, 0x0

    aget v7, v0, v7

    if-eqz v7, :cond_7

    .line 4008
    const/4 v7, 0x0

    aget v7, v0, v7

    add-int/lit8 v7, v7, 0x1

    div-int v7, v6, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    rem-int v8, v6, v8

    add-int v4, v7, v8

    .line 4009
    .local v4, "numColumn":I
    const/4 v7, 0x1

    add-int/lit8 v8, v4, -0x1

    aput v8, v0, v7

    .end local v1    # "currentUmlautString":Ljava/lang/StringBuilder;
    .end local v3    # "maxColumn":I
    .end local v4    # "numColumn":I
    .end local v6    # "umlautStringLength":I
    :cond_3
    :goto_2
    move-object v7, v0

    .line 4026
    goto/16 :goto_0

    .line 3937
    :sswitch_0
    const/4 v7, 0x0

    const v8, 0x7f0a000a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    aput v8, v0, v7

    .line 3939
    const/4 v7, 0x1

    const v8, 0x7f0a0009

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    aput v8, v0, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4022
    :catch_0
    move-exception v2

    .line 4023
    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "SamsungIME"

    const-string v8, "getLineCountPopupKeyboard() : return value not found exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    const/4 v0, 0x0

    goto :goto_2

    .line 3949
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "qwerty_emoticons_popup_horizontal_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    .line 3950
    const/4 v7, 0x1

    const-string v8, "qwerty_emoticons_popup_vertical_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    goto :goto_2

    .line 3953
    :sswitch_2
    const/4 v7, 0x0

    const-string v8, "qwerty_quick_symbol_popup_horizontal_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    .line 3955
    const/4 v7, 0x1

    const-string v8, "qwerty_quick_symbol_popup_vertical_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    goto :goto_2

    .line 3960
    :sswitch_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 3961
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v0, v7

    goto :goto_2

    .line 3970
    :sswitch_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMultimodalKeyIncludesCMSymbol()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getCMSymbolPopupFixedValues()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3971
    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v0, v7

    .line 3972
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getCMSymbolPopupFixedValues()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v10, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v9, v10, v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v0, v7

    goto :goto_2

    .line 3974
    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 3975
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v10, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v8, v9, v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aput v8, v0, v7

    goto/16 :goto_2

    .line 3980
    :sswitch_5
    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-eq v7, v9, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_5
    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v8, 0x6b6f0000

    if-ne v7, v8, :cond_3

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    array-length v7, v7

    if-lt v7, v9, :cond_3

    .line 3983
    const/4 v7, 0x0

    const-string v8, "qwerty_quick_symbol_popup_horizontal_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    .line 3985
    const/4 v7, 0x1

    const-string v8, "qwerty_quick_symbol_popup_vertical_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    goto/16 :goto_2

    .line 4005
    .restart local v1    # "currentUmlautString":Ljava/lang/StringBuilder;
    .restart local v3    # "maxColumn":I
    .restart local v6    # "umlautStringLength":I
    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    goto/16 :goto_1

    .line 4011
    :cond_7
    const/4 v7, 0x1

    add-int/lit8 v8, v6, -0x1

    aput v8, v0, v7
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 4015
    .end local v3    # "maxColumn":I
    :cond_8
    const/4 v0, 0x0

    .line 4017
    goto/16 :goto_2

    .line 4018
    .end local v1    # "currentUmlautString":Ljava/lang/StringBuilder;
    .end local v6    # "umlautStringLength":I
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 3932
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c -> :sswitch_3
        -0x7b -> :sswitch_1
        -0x7a -> :sswitch_2
        -0x75 -> :sswitch_4
        -0x74 -> :sswitch_0
        -0x72 -> :sswitch_0
        0x2e -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method protected getModeChangePopoupKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 4454
    :try_start_0
    const-string v1, "sip_dialog_full_holo_dark"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4456
    :goto_0
    return-object v1

    .line 4455
    :catch_0
    move-exception v0

    .line 4456
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardFloatingButtonRscId()I
    .locals 2

    .prologue
    .line 4435
    :try_start_0
    const-string v1, "popup_keyboard_floating"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4437
    :goto_0
    return v1

    .line 4436
    :catch_0
    move-exception v0

    .line 4437
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardFloatingButtonRscId(I)I
    .locals 2
    .param p1, "symbolPage"    # I

    .prologue
    .line 4419
    :try_start_0
    const-string v1, "popup_keyboard_floating"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4421
    :goto_0
    return v1

    .line 4420
    :catch_0
    move-exception v0

    .line 4421
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardLayoutRscId()I
    .locals 2

    .prologue
    .line 4388
    :try_start_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_1

    .line 4389
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUsedSplitKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4390
    const-string v1, "popup_modechange_layout"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I

    move-result v1

    .line 4405
    :goto_0
    return v1

    .line 4392
    :cond_0
    const-string v1, "popup_not_split_modechange_layout"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 4401
    :cond_1
    const-string v1, "popup_not_split_modechange_layout"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4404
    :catch_0
    move-exception v0

    .line 4405
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardOnehandButtonRscId()I
    .locals 2

    .prologue
    .line 4445
    :try_start_0
    const-string v1, "popup_keyboard_onehand"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4447
    :goto_0
    return v1

    .line 4446
    :catch_0
    move-exception v0

    .line 4447
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardQwertyButtonRscId()I
    .locals 2

    .prologue
    .line 4411
    :try_start_0
    const-string v1, "popup_keyboard_qwerty"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4413
    :goto_0
    return v1

    .line 4412
    :catch_0
    move-exception v0

    .line 4413
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardSplitButtonRscId()I
    .locals 2

    .prologue
    .line 4427
    :try_start_0
    const-string v1, "popup_keyboard_split"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4429
    :goto_0
    return v1

    .line 4428
    :catch_0
    move-exception v0

    .line 4429
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupQwertyKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 4484
    :try_start_0
    const-string v1, "sip_select_keypad_type_qwerty_focus"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4486
    :goto_0
    return-object v1

    .line 4485
    :catch_0
    move-exception v0

    .line 4486
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopupFloatingKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 4562
    :try_start_0
    const-string v1, "sip_select_keypad_type_floating_focus"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4564
    :goto_0
    return-object v1

    .line 4563
    :catch_0
    move-exception v0

    .line 4564
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopupOnehandKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 4577
    :try_start_0
    const-string v1, "sip_select_keypad_type_onehand_focus"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4579
    :goto_0
    return-object v1

    .line 4578
    :catch_0
    move-exception v0

    .line 4579
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopupSplitKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4570
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMovableSignColor()I
    .locals 1

    .prologue
    .line 4978
    const/4 v0, 0x0

    return v0
.end method

.method protected getMoveHandlerHeight()I
    .locals 2

    .prologue
    .line 4544
    :try_start_0
    const-string v1, "popup_candidate_view_handler_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4546
    :goto_0
    return v1

    .line 4545
    :catch_0
    move-exception v0

    .line 4546
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMovingGuideAnimationDrawbleRscId()I
    .locals 1

    .prologue
    .line 4840
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    .line 4841
    const/4 v0, 0x0

    .line 4843
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080051

    goto :goto_0
.end method

.method protected getMultiModalPopupKeyboardKeyIcons([I)[Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "validMMCodes"    # [I

    .prologue
    const v10, 0x7f020671

    const v9, 0x7f02066d

    const v8, 0x7f02066a

    const v7, 0x7f020667

    const v6, 0x7f02067e

    .line 4046
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 4047
    :cond_0
    const/4 v2, 0x0

    .line 4214
    :cond_1
    return-object v2

    .line 4049
    :cond_2
    array-length v4, p1

    new-array v2, v4, [Landroid/graphics/drawable/Drawable;

    .line 4050
    .local v2, "icons":[Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4051
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 4053
    :try_start_0
    const-string v4, "floating_popup_key_icon_hwr_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4058
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 4060
    :try_start_1
    const-string v4, "floating_popup_key_icon_keyboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4066
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 4068
    :try_start_2
    const-string v4, "floating_popup_key_icon_keyboard_change_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4073
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    .line 4075
    :try_start_3
    const-string v4, "floating_popup_key_icon_voice_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4080
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    .line 4082
    :try_start_4
    const-string v4, "floating_popup_key_icon_settings_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4087
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 4089
    :try_start_5
    const-string v4, "floating_popup_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4094
    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_9

    .line 4095
    const-string v4, "floating_popup_key_icon_ocr_xml"

    const v5, 0x7f020684

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOCRIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    .line 4102
    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_a

    .line 4104
    :try_start_6
    const-string v4, "floating_popup_key_icon_floating_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4110
    :cond_a
    :goto_6
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_b

    .line 4112
    :try_start_7
    const-string v4, "floating_popup_key_icon_emoticon_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 4117
    :cond_b
    :goto_7
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_c

    .line 4119
    :try_start_8
    const-string v4, "floating_popup_key_icon_chinesecharacter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    .line 4166
    :cond_c
    :goto_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 4167
    aget v4, p1, v1

    packed-switch v4, :pswitch_data_0

    .line 4166
    :goto_a
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4054
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 4055
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020676

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 4061
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 4062
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 4069
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 4070
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 4076
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v0

    .line 4077
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020694

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 4083
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v0

    .line 4084
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02068d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 4090
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_5
    move-exception v0

    .line 4091
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 4105
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_6
    move-exception v0

    .line 4106
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .line 4113
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_7
    move-exception v0

    .line 4114
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    .line 4120
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_8
    move-exception v0

    .line 4121
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 4125
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_e

    .line 4126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020676

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    .line 4128
    :cond_e
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_f

    .line 4129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    .line 4132
    :cond_f
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_10

    .line 4133
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02067c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    .line 4135
    :cond_10
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_11

    .line 4136
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020694

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    .line 4138
    :cond_11
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_12

    .line 4139
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02068d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    .line 4141
    :cond_12
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_13

    .line 4142
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    .line 4145
    :cond_13
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_14

    .line 4146
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    .line 4147
    .local v3, "ocrHelper":Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-virtual {v3}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4148
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020684

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    .line 4151
    .end local v3    # "ocrHelper":Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    :cond_14
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_15

    .line 4152
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    .line 4156
    :cond_15
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_16

    .line 4157
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    .line 4159
    :cond_16
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_17

    .line 4160
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020691

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    .line 4162
    :cond_17
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_c

    .line 4163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 4169
    .restart local v1    # "i":I
    :pswitch_1
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4172
    :pswitch_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4176
    :pswitch_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4179
    :pswitch_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4182
    :pswitch_5
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4185
    :pswitch_6
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4188
    :pswitch_7
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_18

    .line 4189
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4191
    :cond_18
    const-string v4, "SamsungIME"

    const-string v5, "Skip set a drawable of OCR icon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4195
    :pswitch_8
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4198
    :pswitch_9
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4201
    :pswitch_a
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4205
    :pswitch_b
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4208
    :pswitch_c
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    .line 4167
    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getNextEnterKeyLabelColor()I
    .locals 3

    .prologue
    .line 5065
    :try_start_0
    const-string v1, "handwriting_next_enter_text_color"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5067
    :goto_0
    return v1

    .line 5066
    :catch_0
    move-exception v0

    .line 5067
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getNextEnterKeyShadowDistanceY()I
    .locals 1

    .prologue
    .line 5080
    const/4 v0, -0x1

    return v0
.end method

.method protected getNextEnterKeyShadowLabelColor()I
    .locals 3

    .prologue
    .line 5073
    :try_start_0
    const-string v1, "hwr_functionkey_shadowcolor"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5075
    :goto_0
    return v1

    .line 5074
    :catch_0
    move-exception v0

    .line 5075
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getNonExtraLabelKeyOffsetY(Ljava/lang/String;)I
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 5084
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WSVGA:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 5085
    const/4 v1, 0x1

    .line 5090
    :goto_0
    return v1

    .line 5088
    :cond_0
    :try_start_0
    const-string v1, "handwriting_non_extralabelkey_offset_y"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5089
    :catch_0
    move-exception v0

    .line 5090
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    goto :goto_0
.end method

.method protected getNormalKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f020914

    .line 2113
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 2118
    :try_start_0
    const-string v1, "sip_key_bg_normal_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2124
    :goto_0
    return-object v1

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 2124
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getNormalKeyBackgroundForQwerty()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f020914

    .line 2141
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 2143
    :try_start_0
    const-string v1, "sip_key_bg_normal_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2148
    :goto_0
    return-object v1

    .line 2144
    :catch_0
    move-exception v0

    .line 2145
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 2148
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getNormalKeyHoverBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2177
    :try_start_0
    const-string v1, "sip_key_bg_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2180
    :goto_0
    return-object v1

    .line 2179
    :catch_0
    move-exception v0

    .line 2180
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getNormalKeyLabelColor()I
    .locals 2

    .prologue
    .line 2241
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getNormalKeyShadowColor()I
    .locals 2

    .prologue
    .line 2229
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getNumberKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 5201
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsNoteMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-eqz v0, :cond_1

    .line 5202
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02091c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5204
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNumberKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "isDrawHoverKey"    # Z

    .prologue
    .line 5208
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsNoteMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-eqz v0, :cond_1

    .line 5209
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 5214
    :goto_0
    return-object v0

    .line 5211
    :cond_1
    if-eqz p1, :cond_2

    .line 5212
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyHoverBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 5214
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getOneHandGuideAnimationDrawbleRscId()I
    .locals 1

    .prologue
    .line 4910
    const v0, 0x7f080057

    return v0
.end method

.method protected getOneHandKeyboardFirstHorizontalGap()I
    .locals 1

    .prologue
    .line 5107
    const/4 v0, 0x0

    return v0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 1

    .prologue
    .line 5006
    const/4 v0, 0x0

    return v0
.end method

.method protected getOneHandLeftRightViewWidth(Z)I
    .locals 1
    .param p1, "bAddMargin"    # Z

    .prologue
    .line 5002
    const/4 v0, 0x0

    return v0
.end method

.method protected getOneHandedGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 4906
    const v0, 0x7f080058

    return v0
.end method

.method protected getOneHandedGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOneHandedGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 4902
    const v0, 0x7f03003d

    return v0
.end method

.method protected getPenDetectionGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 4922
    const v0, 0x7f080059

    return v0
.end method

.method protected getPenDetectionGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4914
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPenDetectionGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 4918
    const v0, 0x7f03003f

    return v0
.end method

.method protected getPhonePadShadowDistanceY()F
    .locals 2

    .prologue
    .line 2297
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    .line 2298
    const/high16 v0, 0x3f800000

    .line 2308
    :goto_0
    return v0

    .line 2300
    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v0, :cond_3

    .line 2301
    const-string v0, "DARK"

    const-string v1, "LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DARK"

    const-string v1, "LIGHT_SIP_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2303
    :cond_1
    const/high16 v0, 0x40000000

    goto :goto_0

    .line 2305
    :cond_2
    const/high16 v0, -0x40000000

    goto :goto_0

    .line 2308
    :cond_3
    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method protected getPhonepadArrowGap()I
    .locals 1

    .prologue
    .line 4947
    const/4 v0, 0x0

    return v0
.end method

.method protected getPhonepadExtraLabelColor()I
    .locals 1

    .prologue
    .line 5186
    const/4 v0, 0x0

    return v0
.end method

.method protected getPhonepadExtraLabelPressedColor()I
    .locals 1

    .prologue
    .line 5190
    const/4 v0, 0x0

    return v0
.end method

.method protected getPhoneticSpellKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "isDrawHoverKey"    # Z

    .prologue
    .line 4372
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPinchZoomGuideAnimationDrawbleRscId()I
    .locals 1

    .prologue
    .line 4832
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    .line 4833
    const/4 v0, 0x0

    .line 4835
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080050

    goto :goto_0
.end method

.method protected getPinchZoomGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4816
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    .line 4817
    const/4 v0, 0x0

    .line 4819
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPinchZoomGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 4824
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    .line 4825
    const/4 v0, 0x0

    .line 4827
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030040

    goto :goto_0
.end method

.method protected getPopupKeyboardPosX(Lcom/diotek/ime/framework/view/KeboardKeyInfo;I)I
    .locals 5
    .param p1, "key"    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2, "popupKeybaordType"    # I

    .prologue
    .line 3287
    const/4 v1, 0x0

    .line 3288
    .local v1, "posX":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    .line 3289
    .local v0, "isLandscape":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    .line 3290
    .local v2, "screenWidth":I
    :goto_0
    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    div-int/lit8 v4, v2, 0x2

    if-ge v3, v4, :cond_3

    .line 3291
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x6e

    if-ne v3, v4, :cond_1

    .line 3292
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v1, v3, 0x2

    .line 3305
    :goto_1
    return v1

    .line 3289
    .end local v2    # "screenWidth":I
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    goto :goto_0

    .line 3294
    .restart local v2    # "screenWidth":I
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3295
    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int v1, v3, v4

    goto :goto_1

    .line 3297
    :cond_2
    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_1

    .line 3301
    :cond_3
    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_1
.end method

.method protected getPopupKeyboardPosY(Lcom/diotek/ime/framework/view/KeboardKeyInfo;I)I
    .locals 7
    .param p1, "key"    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2, "popupKeyboardType"    # I

    .prologue
    const/16 v6, -0x6e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3174
    iget v0, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->y:I

    .line 3176
    .local v0, "posY":I
    iget-boolean v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    if-eqz v1, :cond_0

    .line 3177
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos Y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v1, v1, v5

    if-ne v1, v6, :cond_1

    .line 3181
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getCurrentLocationY()I

    move-result v0

    .line 3184
    :cond_1
    iget-object v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v1, v1, v5

    if-ne v1, v6, :cond_4

    .line 3188
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3191
    iget v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    add-int/2addr v0, v1

    .line 3283
    :cond_2
    :goto_0
    return v0

    .line 3193
    :cond_3
    iget v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 3200
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3201
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3202
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3203
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3205
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3216
    :goto_1
    iget-object v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v1, v1, v5

    const/16 v2, -0x74

    if-ne v1, v2, :cond_7

    .line 3217
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getDotComPopupKeyboardGap()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 3218
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3219
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3220
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3224
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 3208
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3209
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3210
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3212
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 3227
    :cond_6
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseDHWRPanel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3228
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 3233
    :cond_7
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_9

    .line 3234
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3235
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 3238
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 3244
    :cond_9
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3246
    iget-boolean v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    if-eqz v1, :cond_a

    .line 3248
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Magni On mMiniKeyboardContainer  getPaddingTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMiniKeyboardContainer  getMeasuredHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMiniKeyboardContainer  getPaddingBottom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Magni On , Relocate popup position posY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMiniKeyboardContainer  getPaddingBottom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowOffset[1] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_a
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsLandscape:Z

    if-eqz v1, :cond_b

    .line 3269
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 3272
    :cond_b
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    iget v2, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 3278
    :cond_c
    add-int/lit8 v0, v0, 0x14

    goto/16 :goto_0
.end method

.method protected getPopupKeyboardRscId()I
    .locals 3

    .prologue
    const v1, 0x7f050203

    .line 3151
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3153
    :try_start_0
    const-string v2, "popup_split_floating_template_keyboard"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3158
    :cond_0
    :goto_0
    return v1

    .line 3154
    :catch_0
    move-exception v0

    .line 3155
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method protected getPopupKeyboardViewRscId()I
    .locals 1

    .prologue
    .line 3162
    const v0, 0x7f080033

    return v0
.end method

.method protected getPopupLayoutBackground(Lcom/diotek/ime/framework/view/KeboardKeyInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2, "poupKeyboardType"    # I

    .prologue
    const v8, 0x7f020650

    const v7, 0x7f02064e

    .line 3773
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v5, :cond_5

    .line 3774
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    .line 3775
    .local v2, "isLandscape":Z
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v4

    .line 3776
    .local v4, "screenWidth":I
    :goto_0
    iget v5, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    div-int/lit8 v6, v4, 0x2

    if-ge v5, v6, :cond_1

    const/4 v3, 0x1

    .line 3777
    .local v3, "isThisKeyLeftPosition":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 3778
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3780
    :try_start_0
    const-string v5, "sip_keyboard_floating_bubble_bg_right"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3801
    .end local v2    # "isLandscape":Z
    .end local v3    # "isThisKeyLeftPosition":Z
    .end local v4    # "screenWidth":I
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v0

    .line 3775
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "isLandscape":Z
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v4

    goto :goto_0

    .line 3776
    .restart local v4    # "screenWidth":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3781
    .restart local v3    # "isThisKeyLeftPosition":Z
    :catch_0
    move-exception v1

    .line 3782
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3783
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 3785
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 3788
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3790
    :try_start_1
    const-string v5, "sip_keyboard_floating_bubble_bg_left"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 3791
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v1

    .line 3792
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3793
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 3795
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 3799
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "isLandscape":Z
    .end local v3    # "isThisKeyLeftPosition":Z
    .end local v4    # "screenWidth":I
    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02064c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method protected getPopupLayoutRscId()I
    .locals 1

    .prologue
    .line 2225
    const v0, 0x7f030037

    return v0
.end method

.method protected getPressedKeyLabelColor()I
    .locals 2

    .prologue
    .line 2249
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getPressedKeyShadowColor()I
    .locals 1

    .prologue
    .line 2237
    const/4 v0, 0x0

    return v0
.end method

.method protected getPreviewArrowGap()I
    .locals 2

    .prologue
    .line 3502
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewArrowPositionY()I
    .locals 3

    .prologue
    const v2, 0x7f0a000d

    .line 3490
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3492
    :try_start_0
    const-string v1, "floating_preview_arrow_position_y"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3497
    :goto_0
    return v1

    .line 3493
    :catch_0
    move-exception v0

    .line 3494
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 3497
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPreviewBackgroung(Lcom/diotek/ime/framework/view/Keyboard$Key;II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "index"    # I
    .param p3, "position"    # I

    .prologue
    const v3, 0x7f0206b1

    const v2, 0x7f0206ad

    .line 3846
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 3847
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3849
    :try_start_0
    const-string v1, "floating_preview_qwerty_key_bg_longpressable"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3857
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 3858
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3860
    :try_start_1
    const-string v1, "floating_preview_qwerty_key_bg_normal"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3868
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->hasLongpressOperation(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3869
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    .line 3871
    :goto_2
    return-object v1

    .line 3850
    :catch_0
    move-exception v0

    .line 3851
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3854
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3861
    :catch_1
    move-exception v0

    .line 3862
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 3865
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 3871
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method protected getPreviewKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 5279
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreviewKeyBottomPadding()I
    .locals 1

    .prologue
    .line 5289
    const/4 v0, 0x0

    return v0
.end method

.method protected getPreviewLabelColor(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 2
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewLabelSize(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 10
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f090200

    const v7, 0x7f0901fe

    const/16 v6, 0x8

    const v5, 0x7f0901fd

    .line 2622
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2623
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2680
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_8

    .line 2681
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x74610000

    if-ne v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_7

    .line 2682
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v9, :cond_6

    .line 2683
    const v3, 0x7f0905ec

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 2726
    :goto_0
    return v3

    .line 2629
    :sswitch_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_0

    .line 2630
    const v3, 0x7f0901ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2632
    :cond_0
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2635
    :sswitch_1
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v3, :cond_1

    .line 2636
    const v3, 0x7f0901ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2638
    :cond_1
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2642
    :sswitch_2
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 2645
    :cond_2
    :try_start_0
    const-string v3, "floating_key_preview_enter_label_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2652
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QVGA:Z

    if-eqz v3, :cond_4

    .line 2653
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2655
    :cond_4
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2657
    .local v2, "size":I
    invoke-virtual {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPreviewEnterLabelSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v3

    goto :goto_0

    .line 2662
    .end local v2    # "size":I
    :sswitch_3
    const v3, 0x7f090202

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2664
    :sswitch_4
    const v3, 0x7f090201

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2666
    :sswitch_5
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_5

    .line 2668
    :try_start_1
    const-string v3, "floating_qwerty_key_preview_space_label_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2670
    :catch_1
    move-exception v0

    .line 2671
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f090204

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 2674
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const v3, 0x7f090204

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2678
    :sswitch_6
    const v3, 0x7f090203

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2687
    :cond_6
    :try_start_2
    const-string v3, "floating_key_preview_label_size_ta"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2689
    :catch_2
    move-exception v0

    .line 2690
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0905eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2696
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_3
    const-string v3, "floating_key_preview_default_label_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2698
    :catch_3
    move-exception v0

    .line 2699
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2704
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x74610000

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_HVGA:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_b

    .line 2705
    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v9, :cond_a

    .line 2706
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2710
    :cond_a
    :try_start_4
    const-string v3, "qwerty_key_preview_label_size_ta"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2712
    :catch_4
    move-exception v0

    .line 2713
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2717
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2719
    :try_start_5
    const-string v3, "qwerty_key_preview_label_size_indian"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2721
    :catch_5
    move-exception v0

    .line 2722
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2726
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    .line 2623
    :sswitch_data_0
    .sparse-switch
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x137 -> :sswitch_0
        -0x7e -> :sswitch_6
        -0x7b -> :sswitch_2
        -0x73 -> :sswitch_6
        -0x72 -> :sswitch_4
        -0x71 -> :sswitch_3
        -0x6e -> :sswitch_1
        -0x66 -> :sswitch_0
        0xa -> :sswitch_2
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method protected getPreviewLanguageDistance()I
    .locals 2

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    .line 3508
    const/16 v0, 0x50

    .line 3510
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getPreviewLanguageTopPadding()I
    .locals 4

    .prologue
    const/4 v1, 0x7

    .line 4983
    :try_start_0
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 4984
    :cond_0
    const-string v2, "floating_preview_language_top_padding"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    .line 4991
    :cond_1
    :goto_0
    return v1

    .line 4986
    :cond_2
    const-string v2, "preview_language_top_padding"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4987
    :catch_0
    move-exception v0

    .line 4988
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_1

    .line 4989
    const/16 v1, 0xa

    goto :goto_0
.end method

.method protected getPreviewNumberKeyTopPadding()I
    .locals 1

    .prologue
    .line 5283
    const/4 v0, 0x0

    return v0
.end method

.method protected getPreviewOffset()I
    .locals 4

    .prologue
    const v3, 0x7f0901f7

    .line 2212
    :try_start_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2213
    const-string v1, "floating_qwerty_key_preview_vertical_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 2220
    :goto_0
    return v1

    .line 2216
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPreviewSpaceLeftArrow()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f0206c9

    .line 3475
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 3476
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3478
    :try_start_0
    const-string v1, "floating_preview_qwerty_key_icon_space_left_arrow"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3485
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 3479
    :catch_0
    move-exception v0

    .line 3480
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3483
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getPreviewSpaceRightArrow()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f0206cb

    .line 3461
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 3462
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3464
    :try_start_0
    const-string v1, "floating_preview_qwerty_key_icon_space_right_arrow"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3471
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 3465
    :catch_0
    move-exception v0

    .line 3466
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3469
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getPreviewSymbolPageArrowPadding()I
    .locals 1

    .prologue
    .line 4970
    const/4 v0, 0x0

    return v0
.end method

.method protected getQuickCangjieLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2758
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getQuickSymbolPopupSecondary1st()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4939
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQuickSymbolPopupSecondary1st:[Ljava/lang/String;

    return-object v0
.end method

.method protected getQuickSymbolPopupSecondary2nd()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4942
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQuickSymbolPopupSecondary2nd:[Ljava/lang/String;

    return-object v0
.end method

.method protected getQwertyKeyIconOffsetY()I
    .locals 3

    .prologue
    .line 5314
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyKeyIconOffsetY:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 5316
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e29

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyKeyIconOffsetY:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5321
    :cond_0
    :goto_0
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyKeyIconOffsetY:I

    return v1

    .line 5317
    :catch_0
    move-exception v0

    .line 5318
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyKeyIconOffsetY:I

    goto :goto_0
.end method

.method protected getQwertyRectVerticalGap()I
    .locals 2

    .prologue
    .line 2203
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected getRightArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const v3, 0x7f0207b3

    .line 3694
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 3695
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3696
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3698
    :try_start_0
    const-string v2, "floating_qwerty_key_icon_space_right_arrow_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3706
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 3699
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3700
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3703
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getSelectedKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2129
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2131
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02092c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2134
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02092d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected getShadowDistanceX()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2265
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_1

    .line 2273
    :cond_0
    :goto_0
    return v0

    .line 2268
    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v1, :cond_0

    .line 2270
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_HD:Z

    if-nez v1, :cond_0

    .line 2273
    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method protected getShadowDistanceY()F
    .locals 2

    .prologue
    .line 2279
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    .line 2280
    const/high16 v0, 0x3f800000

    .line 2290
    :goto_0
    return v0

    .line 2282
    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v0, :cond_3

    .line 2283
    const-string v0, "DARK"

    const-string v1, "LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DARK"

    const-string v1, "LIGHT_SIP_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2285
    :cond_1
    const/high16 v0, 0x40000000

    goto :goto_0

    .line 2287
    :cond_2
    const/high16 v0, -0x40000000

    goto :goto_0

    .line 2290
    :cond_3
    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method protected getShadowRadius()F
    .locals 1

    .prologue
    .line 2257
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    .line 2258
    const v0, 0x3f19999a

    .line 2260
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method protected getShortcutNumberKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 5220
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isDragStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShortcutsController:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->checkEmptyNumberKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5221
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020930

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 5225
    :goto_0
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isSelectedNumber:I

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 5226
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020931

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 5228
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 5223
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getNumberKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getSoftFuncPageLabelColor()I
    .locals 1

    .prologue
    .line 5274
    const/4 v0, 0x0

    return v0
.end method

.method protected getSoftFuncPageLabelSize()I
    .locals 1

    .prologue
    .line 5264
    const/4 v0, 0x0

    return v0
.end method

.method protected getSoftFuncSymbolLabelColor()I
    .locals 1

    .prologue
    .line 5269
    const/4 v0, 0x0

    return v0
.end method

.method protected getSoftFuncSymbolLabelSize()I
    .locals 1

    .prologue
    .line 5259
    const/4 v0, 0x0

    return v0
.end method

.method protected getSortAlternativeChars(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "alternativeChar"    # Ljava/lang/StringBuilder;
    .param p2, "firstKeyIsLeft"    # Z

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 5014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5015
    .local v0, "adjustChar":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 5016
    .local v1, "charLength":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 5018
    .local v2, "maxColumn":I
    if-gt v1, v2, :cond_1

    .line 5019
    if-eqz p2, :cond_0

    .line 5042
    .end local p1    # "alternativeChar":Ljava/lang/StringBuilder;
    :goto_0
    return-object p1

    .line 5022
    .restart local p1    # "alternativeChar":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    .line 5025
    :cond_1
    if-eqz p2, :cond_3

    .line 5026
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5028
    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    .line 5029
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5031
    :cond_2
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object p1, v0

    .line 5042
    goto :goto_0

    .line 5034
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5035
    .local v3, "reverseChar":Ljava/lang/StringBuilder;
    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 5036
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5038
    :cond_4
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5039
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected getSpaceLanguageLabelPositionY()I
    .locals 4

    .prologue
    .line 3643
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    .line 3644
    .local v1, "method":I
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsUseSplitFloat:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 3647
    :cond_1
    :try_start_0
    const-string v2, "floating_handwriting_space_key_label_top_margin"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3653
    :goto_0
    return v2

    .line 3649
    :catch_0
    move-exception v0

    .line 3650
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 3653
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method

.method protected getSplitFloatingIconScale()F
    .locals 1

    .prologue
    .line 4998
    const/high16 v0, 0x3f800000

    return v0
.end method

.method protected getSplitFloatingKeyboardPadding()I
    .locals 1

    .prologue
    .line 5048
    const/4 v0, 0x0

    return v0
.end method

.method protected getSplitFloatingPopupBg(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "isLeftExtend"    # Z

    .prologue
    .line 5010
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02064c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getSplitKeyboardHeight()I
    .locals 1

    .prologue
    .line 4502
    const/4 v0, 0x0

    return v0
.end method

.method protected getSplitLeftKeyboardWidth()I
    .locals 1

    .prologue
    .line 4497
    const/4 v0, 0x0

    return v0
.end method

.method public getSplitRightKeyboardWidth()I
    .locals 1

    .prologue
    .line 4492
    const/4 v0, 0x0

    return v0
.end method

.method protected getStatusBarHeight()I
    .locals 1

    .prologue
    .line 4524
    const/4 v0, 0x0

    return v0
.end method

.method protected getSwiftkeyDialogButtonSetting()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSwiftkeyGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4856
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSwiftkeyGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 4860
    const v0, 0x7f030043

    return v0
.end method

.method protected getSwiftkeyRemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "term"    # Ljava/lang/String;

    .prologue
    .line 4886
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSwiftkeyRemoveTermDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4868
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSwiftkeyRemoveTermToastMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4877
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSymbolPageKeyLabel()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4960
    const/4 v0, 0x0

    .line 4961
    .local v0, "label":Ljava/lang/String;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SYMBOLS_PAGE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 4962
    .local v2, "page":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4963
    .local v1, "maxPage":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4964
    return-object v0
.end method

.method protected getSymbolPopoupKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const v4, 0x7f02064c

    .line 3550
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v3, :cond_0

    .line 3552
    :try_start_0
    const-string v3, "hwr_popup_bg"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3568
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 3553
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 3554
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3555
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 3557
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    .line 3558
    .local v2, "isLandscape":Z
    if-eqz v2, :cond_1

    .line 3560
    :try_start_1
    const-string v3, "popup_bg_non_shadow"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 3561
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v1

    .line 3562
    .restart local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3563
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 3565
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method protected getSymbolPopoupKeyboardCancelButtonRscId()I
    .locals 1

    .prologue
    .line 3527
    const v0, 0x7f080034

    return v0
.end method

.method protected getSymbolPopoupKeyboardLayoutRscId()I
    .locals 1

    .prologue
    .line 3515
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3516
    const v0, 0x7f030030

    .line 3518
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030033

    goto :goto_0
.end method

.method protected getSymbolPopoupKeyboardPageButtonRscId()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3531
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_0

    .line 3533
    :try_start_0
    const-string v2, "popup_keyboard_page_toggle"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3538
    :cond_0
    :goto_0
    return v1

    .line 3534
    :catch_0
    move-exception v0

    .line 3535
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method protected getSymbolPopoupKeyboardViewModeId(I)I
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 3624
    const/4 v0, 0x0

    .line 3625
    .local v0, "pageId":I
    packed-switch p1, :pswitch_data_0

    .line 3636
    const v0, 0x7f080109

    .line 3639
    :goto_0
    return v0

    .line 3627
    :pswitch_0
    const v0, 0x7f080109

    .line 3628
    goto :goto_0

    .line 3630
    :pswitch_1
    const v0, 0x7f08010a

    .line 3631
    goto :goto_0

    .line 3633
    :pswitch_2
    const v0, 0x7f08010b

    .line 3634
    goto :goto_0

    .line 3625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getSymbolPopoupKeyboardViewRscId()I
    .locals 1

    .prologue
    .line 3523
    const v0, 0x7f080033

    return v0
.end method

.method protected getSymbolPopoupKeyboardViewXmlId()I
    .locals 8

    .prologue
    const v1, 0x7f050200

    const v2, 0x7f0501ff

    const v3, 0x7f0501fe

    const v4, 0x7f0501fd

    .line 3572
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3573
    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3576
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3578
    :try_start_0
    const-string v2, "floating_popup_hwr_symbol_he_arabic"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3617
    :cond_0
    :goto_0
    return v1

    .line 3579
    :catch_0
    move-exception v0

    .line 3580
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    .line 3584
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    const-string v1, "floating_popup_hwr_symbol_he"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 3585
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    move v1, v2

    .line 3586
    goto :goto_0

    .line 3590
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3592
    :try_start_2
    const-string v1, "floating_popup_hwr_symbol_arabic"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    .line 3593
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    move v1, v3

    .line 3594
    goto :goto_0

    .line 3598
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_3
    const-string v1, "floating_popup_hwr_symbol"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    goto :goto_0

    .line 3599
    :catch_3
    move-exception v0

    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    move v1, v4

    .line 3600
    goto :goto_0

    .line 3605
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3608
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 3611
    goto :goto_0

    .line 3614
    :cond_5
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 3615
    goto :goto_0

    :cond_6
    move v1, v4

    .line 3617
    goto :goto_0
.end method

.method protected getSymbolPopupHorizontalLine()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4382
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSymbolPopupKeyboardPageLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3542
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    .line 3543
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->makeSymbolPopupPageNum()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3545
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSymbolPopupLeftPadding()I
    .locals 1

    .prologue
    .line 4359
    const/4 v0, 0x0

    return v0
.end method

.method protected getSymbolPopupTopPadding()I
    .locals 1

    .prologue
    .line 4363
    const/4 v0, -0x2

    return v0
.end method

.method protected getSymbolPopupVerticalLine()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4377
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabletCjiSymbolCaracter(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4604
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabletPhonepadArrowGap()I
    .locals 1

    .prologue
    .line 4974
    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsCMkeyGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 5134
    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsCMkeyGuideDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5126
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTipsCMkeyGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 5130
    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsRemoveWordsGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 5158
    const v0, 0x7f0800d2

    return v0
.end method

.method protected getTipsRemoveWordsGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5150
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTipsRemoveWordsGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 5154
    const v0, 0x7f0300a5

    return v0
.end method

.method protected getTipsSwiftKeyLearnsGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 5146
    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsSwiftKeyLearnsGuideDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTipsSwiftKeyLearnsGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 5142
    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsTraceGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 5120
    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsTraceGuideDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTipsTraceGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 5116
    const/4 v0, 0x0

    return v0
.end method

.method protected getTraceGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 4894
    const v0, 0x7f080043

    return v0
.end method

.method protected getTraceGuideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTraceGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 4852
    const v0, 0x7f030046

    return v0
.end method

.method protected getVerticalCorrection()I
    .locals 2

    .prologue
    .line 2199
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected getVerticalLine()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3829
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020697

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    .line 3831
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getXt9PersonalizerAttentionGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 4864
    const v0, 0x7f030047

    return v0
.end method

.method protected getXt9_9RemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "term"    # Ljava/lang/String;

    .prologue
    .line 4890
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getXt9_9RemoveTermDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4872
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getXt9_9RemoveTermToastMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4882
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDrawSymbolPopupLines()Z
    .locals 1

    .prologue
    .line 4367
    const/4 v0, 0x1

    return v0
.end method

.method protected isForcePreviewCode(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 4551
    const/4 v0, 0x0

    .line 4552
    .local v0, "isForce":Z
    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isEnableSpaceLanguageChange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4554
    const/4 v0, 0x1

    .line 4556
    :cond_0
    return v0
.end method

.method protected isHideSymbolPopupFirstLine()Z
    .locals 1

    .prologue
    .line 4355
    const/4 v0, 0x1

    return v0
.end method

.method protected isNeedDrawCurrentInputRange()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4292
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WVGA:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsNoteMode:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-eqz v2, :cond_2

    .line 4310
    :cond_1
    :goto_0
    return v1

    .line 4296
    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_1

    .line 4299
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    .line 4300
    .local v0, "privateImeOptionsInputType":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 4302
    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    .line 4305
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 4307
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4310
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isNeedExceptionBackgroundDrawing(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 1
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 5233
    const/4 v0, 0x0

    return v0
.end method

.method protected isNeedExceptionIconDrawing(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 4
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2315
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->hasLongpressOperation(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return v0

    .line 2318
    :cond_1
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0xe2

    if-eq v2, v3, :cond_0

    .line 2320
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x7a

    if-ne v2, v3, :cond_5

    .line 2321
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletNoteMode:Z

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v2, :cond_5

    .line 2322
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    if-eq v2, v0, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 2325
    goto :goto_0

    :cond_5
    move v0, v1

    .line 2331
    goto :goto_0
.end method

.method protected isNeedExceptionLabelDrawing(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 1
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 2336
    const/4 v0, 0x0

    return v0
.end method

.method protected isNeedPreviewFunctionText(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 2
    .param p1, "previewKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/4 v0, 0x0

    .line 2737
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 2753
    :goto_0
    return v0

    .line 2751
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2737
    nop

    :sswitch_data_0
    .sparse-switch
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x137 -> :sswitch_0
        -0x7e -> :sswitch_0
        -0x7b -> :sswitch_0
        -0x73 -> :sswitch_0
        -0x72 -> :sswitch_0
        -0x71 -> :sswitch_0
        -0x66 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isNeededLongpressPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 5
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4612
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, -0x75

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v2, v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_1

    .line 4621
    :cond_0
    :goto_0
    return v0

    .line 4616
    :cond_1
    iget v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupResId:I

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUmlautManager:Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    .line 4619
    goto :goto_0
.end method

.method protected isNeededPopupKeyboard(Lcom/diotek/ime/framework/view/Keyboard$Key;I)Z
    .locals 6
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "keyIndex"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3309
    invoke-static {p1}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->clone(Lcom/diotek/ime/framework/view/Keyboard$Key;)Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    move-result-object v0

    .line 3310
    .local v0, "clonePopupKey":Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v1

    const/16 v4, -0x75

    if-ne v3, v4, :cond_1

    .line 3311
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v3, v4, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v3

    array-length v3, v3

    if-ne v3, v2, :cond_1

    .line 3320
    :cond_0
    :goto_0
    return v1

    .line 3315
    :cond_1
    iget v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupResId:I

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 3316
    goto :goto_0

    .line 3317
    :cond_3
    invoke-virtual {p0, v0, p2, v2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getCurrentUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;IZ)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 3318
    goto :goto_0
.end method

.method protected isSpaceLanguageChangeRange()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4218
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v2, :cond_0

    .line 4219
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 4232
    :goto_0
    :pswitch_0
    return v0

    .line 4226
    :cond_0
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 4232
    goto :goto_0

    .line 4219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 4226
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isSupportPreview(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    const/4 v0, 0x0

    .line 3682
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 3690
    const/4 v0, 0x1

    :sswitch_0
    return v0

    .line 3682
    :sswitch_data_0
    .sparse-switch
        -0x103 -> :sswitch_0
        -0x101 -> :sswitch_0
        -0x100 -> :sswitch_0
        -0xff -> :sswitch_0
        -0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isUrlMode()Z
    .locals 1

    .prologue
    .line 4956
    const/4 v0, 0x0

    return v0
.end method

.method protected isVietTone(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 3355
    const/4 v0, 0x0

    return v0
.end method

.method protected isVietValidVowels(Ljava/lang/String;)Z
    .locals 1
    .param p1, "preChar"    # Ljava/lang/String;

    .prologue
    .line 3360
    const/4 v0, 0x0

    return v0
.end method

.method protected onLanguageSelected(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 2926
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v0

    .line 2927
    .local v0, "supportedLanguageList":[Lcom/diotek/ime/framework/common/Language;
    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 2928
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v2, v0, p2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setLanguage(IZ)V

    .line 2932
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2933
    return-void

    .line 2930
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v2, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setLanguage(IZ)V

    goto :goto_0
.end method

.method protected updateResource()V
    .locals 2

    .prologue
    .line 5193
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsLandscape:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5194
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsLandscape:Z

    .line 5195
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->init()V

    .line 5197
    :cond_0
    return-void
.end method
