.class public Lcom/android/contacts/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;,
        Lcom/android/contacts/datepicker/DatePicker$SavedState;,
        Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_START_YEAR:I = 0x76e

.field static final productName:Ljava/lang/String;


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYMMDD:I

.field private isNumMonth:Z

.field private mCurrentLocale:Ljava/util/Locale;

.field protected mDay:I

.field private mDayDecrementButton:Landroid/widget/ImageButton;

.field private mDayIncrementButton:Landroid/widget/ImageButton;

.field protected final mDayPicker:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mHasYear:Z

.field private mIsFromWritingBuddy:Z

.field protected mMonth:I

.field private mMonthDecrementButton:Landroid/widget/ImageButton;

.field private mMonthIncrementButton:Landroid/widget/ImageButton;

.field protected final mMonthPicker:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mShortMonths:[Ljava/lang/String;

.field private mTempDate:Ljava/util/Calendar;

.field private mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

.field protected mYear:I

.field private mYearDecrementButton:Landroid/widget/ImageButton;

.field private mYearIncrementButton:Landroid/widget/ImageButton;

.field private mYearOptional:Z

.field protected final mYearPicker:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;

.field private final mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private numberOfMonths:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/datepicker/DatePicker;->productName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/contacts/datepicker/DatePicker;->FORMAT_MMDDYYYY:I

    .line 97
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/contacts/datepicker/DatePicker;->FORMAT_DDMMYYYY:I

    .line 98
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/contacts/datepicker/DatePicker;->FORMAT_YYYYMMDD:I

    .line 99
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 109
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 114
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    .line 122
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mIsFromWritingBuddy:Z

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 153
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 155
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04008c

    const/4 v9, 0x1

    invoke-virtual {v4, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 157
    const v8, 0x7f0901fc

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 158
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 159
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 160
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 161
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 162
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$1;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$1;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 169
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 171
    const v8, 0x7f0901fb

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 172
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 179
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/contacts/datepicker/DatePicker;->productName:Ljava/lang/String;

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/contacts/datepicker/DatePicker;->productName:Ljava/lang/String;

    const-string v9, "ks02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 180
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 181
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    .line 184
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 185
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 186
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 194
    .end local v3    # "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0xc8

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 195
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$2;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$2;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 212
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 214
    const v8, 0x7f0901fd

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 215
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 216
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 217
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 218
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$3;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$3;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 230
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 232
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/datepicker/DatePicker$4;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 243
    .local v0, "TouchListener":Landroid/view/View$OnTouchListener;
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayIncrementButton:Landroid/widget/ImageButton;

    .line 244
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthIncrementButton:Landroid/widget/ImageButton;

    .line 245
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearIncrementButton:Landroid/widget/ImageButton;

    .line 247
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayDecrementButton:Landroid/widget/ImageButton;

    .line 248
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthDecrementButton:Landroid/widget/ImageButton;

    .line 249
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearDecrementButton:Landroid/widget/ImageButton;

    .line 251
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isWritingBuddyFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    const v8, 0x7f0901fa

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 262
    .local v7, "parent":Landroid/widget/LinearLayout;
    new-instance v8, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {v8, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 263
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 264
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$5;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$5;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 300
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$6;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$6;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 377
    .end local v7    # "parent":Landroid/widget/LinearLayout;
    :cond_2
    const v8, 0x7f0901f9

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 378
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$7;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$7;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 406
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$8;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$8;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    sget-object v8, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 417
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/16 v9, 0x76e

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 419
    .local v6, "mStartYear":I
    const/4 v8, 0x1

    const/16 v9, 0x7f4

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 421
    .local v5, "mEndYear":I
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 422
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 423
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 425
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 429
    .local v2, "cal":Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 432
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 435
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->setEnabled(Z)V

    .line 437
    :cond_3
    return-void

    .line 188
    .end local v0    # "TouchListener":Landroid/view/View$OnTouchListener;
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v5    # "mEndYear":I
    .end local v6    # "mStartYear":I
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 189
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v9, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 191
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    .line 192
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/datepicker/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/datepicker/DatePicker;Landroid/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;
    .param p1, "x1"    # Landroid/widget/NumberPicker;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->hideSoftInput(Landroid/widget/NumberPicker;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/datepicker/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isWritingBuddyFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/datepicker/DatePicker;)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/datepicker/DatePicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/datepicker/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/datepicker/DatePicker;CLjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;
    .param p1, "x1"    # C
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/datepicker/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePicker;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method private adjustMaxDay()V
    .locals 3

    .prologue
    .line 774
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/datepicker/DatePicker;->getMaximumDate(II)I

    move-result v0

    .line 776
    .local v0, "maxFromPrivate":I
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-le v1, v0, :cond_0

    .line 777
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 779
    :cond_0
    return-void

    .line 774
    .end local v0    # "maxFromPrivate":I
    :cond_1
    const/16 v1, 0x7d0

    goto :goto_0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 897
    if-nez p1, :cond_0

    .line 898
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 903
    :goto_0
    return-object v2

    .line 900
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 901
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 902
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getCurrentYear()I
    .locals 2

    .prologue
    .line 577
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getMaximumDate(II)I
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 797
    const/4 v0, -0x1

    .line 798
    .local v0, "result":I
    packed-switch p2, :pswitch_data_0

    .line 846
    :goto_0
    return v0

    .line 800
    :pswitch_0
    const/16 v0, 0x1f

    .line 801
    goto :goto_0

    .line 803
    :pswitch_1
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_2

    .line 804
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_1

    .line 805
    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_0

    .line 806
    const/16 v0, 0x1d

    .line 808
    :cond_0
    const/16 v0, 0x1c

    .line 810
    :cond_1
    const/16 v0, 0x1d

    goto :goto_0

    .line 812
    :cond_2
    const/16 v0, 0x1c

    .line 814
    goto :goto_0

    .line 816
    :pswitch_2
    const/16 v0, 0x1f

    .line 817
    goto :goto_0

    .line 819
    :pswitch_3
    const/16 v0, 0x1e

    .line 820
    goto :goto_0

    .line 822
    :pswitch_4
    const/16 v0, 0x1f

    .line 823
    goto :goto_0

    .line 825
    :pswitch_5
    const/16 v0, 0x1e

    .line 826
    goto :goto_0

    .line 828
    :pswitch_6
    const/16 v0, 0x1f

    .line 829
    goto :goto_0

    .line 831
    :pswitch_7
    const/16 v0, 0x1f

    .line 832
    goto :goto_0

    .line 834
    :pswitch_8
    const/16 v0, 0x1e

    .line 835
    goto :goto_0

    .line 837
    :pswitch_9
    const/16 v0, 0x1f

    .line 838
    goto :goto_0

    .line 840
    :pswitch_a
    const/16 v0, 0x1e

    .line 841
    goto :goto_0

    .line 843
    :pswitch_b
    const/16 v0, 0x1f

    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getValueFromWBResult(CLjava/lang/String;)I
    .locals 8
    .param p1, "type"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1047
    const/4 v3, -0x1

    .line 1049
    .local v3, "result":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v4, v3

    .line 1084
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 1053
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1055
    .local v5, "valueString":Ljava/lang/String;
    const/16 v6, 0x64

    if-ne p1, v6, :cond_3

    .line 1057
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_2
    :goto_1
    move v4, v3

    .line 1084
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 1058
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_0
    move-exception v2

    .line 1059
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1060
    goto :goto_1

    .line 1061
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    const/16 v6, 0x4d

    if-ne p1, v6, :cond_7

    .line 1062
    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-nez v6, :cond_5

    .line 1064
    :cond_4
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_1

    .line 1065
    :catch_1
    move-exception v2

    .line 1066
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1067
    goto :goto_1

    .line 1069
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v0, v6

    .line 1070
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 1071
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1072
    add-int/lit8 v3, v1, 0x1

    .line 1070
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1076
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_7
    const/16 v6, 0x79

    if-ne p1, v6, :cond_2

    .line 1078
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_1

    .line 1079
    :catch_2
    move-exception v2

    .line 1080
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private hideSoftInput(Landroid/widget/NumberPicker;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/NumberPicker;

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 865
    .local v0, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 868
    :cond_0
    return-void
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    .line 783
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 784
    .local v0, "year":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V

    .line 786
    .end local v0    # "year":I
    :cond_0
    return-void

    .line 783
    :cond_1
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    :cond_0
    return-void

    .line 880
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 881
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/android/contacts/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 882
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    .line 883
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 885
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 851
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_1

    .line 852
    const v0, 0x2000005

    .line 857
    .local v0, "imeOptions":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 858
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 859
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 861
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 854
    .end local v0    # "imeOptions":I
    :cond_1
    const v0, 0x2000006

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 7
    .param p1, "format"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 909
    packed-switch p1, :pswitch_data_0

    .line 957
    :goto_0
    return-void

    .line 911
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 912
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 913
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 915
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 920
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 921
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 925
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 926
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 927
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 929
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 930
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 935
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 939
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 940
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 941
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 943
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 944
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 949
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v4, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 446
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 449
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 452
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 455
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 718
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 719
    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 721
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0}, Lcom/android/contacts/datepicker/DatePicker;->hideSoftInput(Landroid/widget/NumberPicker;)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 730
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 732
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 733
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 737
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 738
    return-void

    :cond_1
    move v0, v2

    .line 719
    goto :goto_0

    :cond_2
    move v1, v2

    .line 724
    goto :goto_1

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_2
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 664
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return v0
.end method

.method public init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    .prologue
    .line 694
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 695
    return-void
.end method

.method public init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "yearOptional"    # Z
    .param p5, "onDateChangedListener"    # Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    .prologue
    const/4 v1, 0x1

    .line 707
    if-eqz p4, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 708
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 709
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 710
    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 711
    if-eqz p4, :cond_2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 712
    iput-object p5, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    .line 713
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 714
    return-void

    :cond_0
    move v0, p1

    .line 707
    goto :goto_0

    .line 711
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isFromWB()Z
    .locals 1

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mIsFromWritingBuddy:Z

    return v0
.end method

.method public isYearOptional()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 675
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    .line 676
    .local v0, "ss":Lcom/android/contacts/datepicker/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 677
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 678
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 679
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 680
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 681
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 682
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 683
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 668
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 670
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public reorderPickers([Ljava/lang/String;)V
    .locals 12
    .param p1, "months"    # [Ljava/lang/String;

    .prologue
    .line 493
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([C)V

    .line 497
    .local v6, "order":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v10, :cond_2

    .line 498
    const-string v9, ""

    .line 499
    .local v9, "temp":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 500
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 501
    .local v0, "c":C
    const/16 v10, 0x79

    if-eq v0, v10, :cond_0

    .line 502
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 499
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 505
    .end local v0    # "c":C
    :cond_1
    move-object v6, v9

    .line 510
    .end local v5    # "i":I
    .end local v9    # "temp":Ljava/lang/String;
    :cond_2
    const v10, 0x7f0901fa

    invoke-virtual {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 511
    .local v7, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 513
    const/4 v8, 0x0

    .line 514
    .local v8, "quoted":Z
    const/4 v1, 0x0

    .local v1, "didDay":Z
    const/4 v2, 0x0

    .local v2, "didMonth":Z
    const/4 v3, 0x0

    .line 516
    .local v3, "didYear":Z
    const/4 v4, 0x0

    .line 517
    .local v4, "first":C
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 518
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 520
    .restart local v0    # "c":C
    const/16 v10, 0x27

    if-ne v0, v10, :cond_3

    .line 521
    if-nez v8, :cond_6

    const/4 v8, 0x1

    .line 524
    :cond_3
    :goto_2
    if-nez v8, :cond_5

    .line 525
    const/16 v10, 0x64

    if-ne v0, v10, :cond_7

    if-nez v1, :cond_7

    .line 526
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    const/4 v1, 0x1

    .line 528
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 539
    :cond_4
    :goto_3
    or-int v10, v1, v2

    or-int/2addr v10, v3

    if-eqz v10, :cond_5

    if-nez v4, :cond_5

    .line 540
    move v4, v0

    .line 517
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 521
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 529
    :cond_7
    const/16 v10, 0x4d

    if-eq v0, v10, :cond_8

    const/16 v10, 0x4c

    if-ne v0, v10, :cond_9

    :cond_8
    if-nez v2, :cond_9

    .line 530
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    const/4 v2, 0x1

    .line 532
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_3

    .line 533
    :cond_9
    const/16 v10, 0x79

    if-ne v0, v10, :cond_4

    if-nez v3, :cond_4

    iget-boolean v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v10, :cond_4

    .line 534
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    const/4 v3, 0x1

    .line 536
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_3

    .line 546
    .end local v0    # "c":C
    :cond_a
    if-nez v2, :cond_b

    .line 547
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    :cond_b
    if-nez v1, :cond_c

    .line 550
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    :cond_c
    if-nez v3, :cond_d

    iget-boolean v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v10, :cond_d

    .line 553
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    :cond_d
    const/16 v10, 0x64

    if-ne v4, v10, :cond_e

    .line 557
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->setTextWatcher(I)V

    .line 563
    :goto_4
    return-void

    .line 558
    :cond_e
    const/16 v10, 0x4d

    if-ne v4, v10, :cond_f

    .line 559
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->setTextWatcher(I)V

    goto :goto_4

    .line 561
    :cond_f
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->setTextWatcher(I)V

    goto :goto_4
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 470
    return-void
.end method

.method public setFromWB(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1092
    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mIsFromWritingBuddy:Z

    .line 1093
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 566
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-eq v0, p3, :cond_2

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result p1

    .end local p1    # "year":I
    :cond_1
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 568
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 569
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 570
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 571
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    .line 574
    :cond_2
    return-void
.end method

.method protected updateDaySpinner()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 741
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 743
    .local v0, "cal":Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 744
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 745
    .local v1, "max":I
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 746
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 747
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 748
    return-void

    .line 743
    .end local v1    # "max":I
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method
