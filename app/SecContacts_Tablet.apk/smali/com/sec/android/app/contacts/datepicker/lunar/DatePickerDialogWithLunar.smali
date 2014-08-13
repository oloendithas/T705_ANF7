.class public Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;
.super Landroid/app/AlertDialog;
.source "DatePickerDialogWithLunar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final LEAP_MONTH:I = 0x2

.field private static final LUNAR_CALENDAR:I = 0x1

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SOLAR_CALENDAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DatePickerDialogWithLunar"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mButtonState:I

.field private mButtonStateNew:I

.field private final mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

.field private final mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private mLastUpdatedYear:I

.field private mSetLunarDivider:Landroid/view/View;

.field private mSetLunarView:Landroid/widget/Button;

.field private mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "bSetLunar"    # Z
    .param p8, "bIsLeapMonth"    # Z
    .param p9, "bIsYearOptional"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 79
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonStateNew:I

    .line 134
    iput-object p3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    .line 135
    iput p4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 136
    iput p5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 137
    iput p6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 139
    new-instance v3, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    .line 141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 142
    const v3, 0x7f0e03d4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 146
    :goto_0
    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;-><init>(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)V

    invoke-virtual {p0, v3, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 161
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    const/16 v4, 0x834

    if-le v3, v4, :cond_0

    .line 162
    const/16 v3, 0x834

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 163
    const/16 v3, 0xb

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 164
    const/16 v3, 0x1f

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 166
    :cond_0
    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    const/16 v4, 0x76c

    if-ge v3, v4, :cond_1

    .line 167
    const/16 v3, 0x76c

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 168
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 169
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 172
    :cond_1
    const v3, 0x7f04008e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, "viewTitle":Landroid/view/View;
    const v3, 0x7f04008f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 176
    const v3, 0x7f090200

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    .line 177
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v3, p7, p8}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    .line 179
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iget v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    iget v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    iget v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 180
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 182
    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mTitleView:Landroid/widget/TextView;

    .line 183
    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    iget v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    iget v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 185
    const v3, 0x7f0901ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    .line 186
    const v3, 0x7f09011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarDivider:Landroid/view/View;

    .line 188
    if-eqz p8, :cond_3

    .line 189
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v4, 0x7f0e035a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 199
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;-><init>(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$3;-><init>(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 277
    return-void

    .line 144
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "viewTitle":Landroid/view/View;
    :cond_2
    const v3, 0x104070c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 191
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local v1    # "view":Landroid/view/View;
    .restart local v2    # "viewTitle":Landroid/view/View;
    :cond_3
    if-eqz p7, :cond_4

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v4, 0x7f0e035b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 193
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    goto :goto_1

    .line 195
    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v4, 0x7f0e035c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "bSetLunar"    # Z
    .param p7, "bIsLeapMonth"    # Z
    .param p8, "bIsYearOptional"    # Z

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;-><init>(Landroid/content/Context;ILcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonStateNew:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->toSolarDate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;III)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    return-void
.end method

.method private toSolarDate(Z)V
    .locals 8
    .param p1, "leap"    # Z

    .prologue
    const/16 v3, 0x1f

    const/16 v2, 0xb

    const/16 v1, 0x7f4

    const/4 v4, 0x0

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v6}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v7}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const-string v5, "so"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    move-object v0, p0

    move v5, v4

    .line 290
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    goto :goto_0
.end method

.method private updateTitle(III)V
    .locals 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 389
    move v6, p1

    .line 390
    .local v6, "result_year":I
    move v4, p2

    .line 391
    .local v4, "result_month":I
    move v5, p3

    .line 392
    .local v5, "result_monthDay":I
    const/4 v8, 0x0

    .line 394
    .local v8, "weekDay":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v9}, Lcom/android/contacts/datepicker/DatePicker;->hasYear()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 395
    iput p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    .line 401
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 402
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v11

    invoke-virtual {v9, v10, p2, p3, v11}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 403
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v6

    .line 404
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v4

    .line 405
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v5

    .line 406
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9, v6, v4, v5}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar(III)V

    .line 409
    :cond_0
    invoke-static {v6, v4, v5}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getWeekday(III)I

    move-result v8

    .line 410
    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 411
    .local v7, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "mWeekDays":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, "mDateString":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "date_format"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "dateFormat":Ljava/lang/String;
    const-string v1, "%s. %s. %s. "

    .line 417
    .local v1, "foramt":Ljava/lang/String;
    if-gtz p1, :cond_2

    .line 418
    const-string v1, "%s. %s. "

    .line 419
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    :goto_1
    const-string v9, "("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void

    .line 397
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v1    # "foramt":Ljava/lang/String;
    .end local v2    # "mDateString":Ljava/lang/StringBuffer;
    .end local v3    # "mWeekDays":[Ljava/lang/String;
    .end local v7    # "symbols":Ljava/text/DateFormatSymbols;
    :cond_1
    iget v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    goto/16 :goto_0

    .line 422
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v1    # "foramt":Ljava/lang/String;
    .restart local v2    # "mDateString":Ljava/lang/StringBuffer;
    .restart local v3    # "mWeekDays":[Ljava/lang/String;
    .restart local v7    # "symbols":Ljava/text/DateFormatSymbols;
    :cond_2
    const-string v9, "MM-dd-yyyy"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 423
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 425
    :cond_3
    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 426
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 429
    :cond_4
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method


# virtual methods
.method public isLeapMonth()Z
    .locals 2

    .prologue
    .line 439
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v6}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v2

    .line 329
    .local v2, "year":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v3

    .line 330
    .local v3, "month":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v4

    .line 337
    .local v4, "monthDay":I
    :goto_0
    iput v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 338
    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 339
    iput v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;->onDateSet(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;IIIZZ)V

    .line 349
    .end local v2    # "year":I
    .end local v3    # "month":I
    .end local v4    # "monthDay":I
    :cond_1
    :goto_1
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    .line 333
    .restart local v2    # "year":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    .line 334
    .restart local v3    # "month":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    .restart local v4    # "monthDay":I
    goto :goto_0

    .line 345
    .end local v2    # "year":I
    .end local v3    # "month":I
    .end local v4    # "monthDay":I
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/datepicker/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->isFromWB()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonStateNew:I

    if-eq v0, v3, :cond_1

    .line 485
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonStateNew:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar(III)V

    .line 490
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result p2

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result p3

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result p4

    .line 494
    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonStateNew:I

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0, v2}, Lcom/android/contacts/datepicker/DatePicker;->setFromWB(Z)V

    .line 497
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(III)V

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->isLeapMonth(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v1, 0x7f0e035c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 504
    iput v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    .line 507
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 509
    return-void

    .line 487
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonStateNew:I

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-static {p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->isLeapMonth(II)Z

    move-result v1

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 471
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 472
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 473
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 474
    .local v0, "day":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 475
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 476
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string v1, "month"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    const-string v1, "day"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    return-object v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iget v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    iget v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 309
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 310
    return-void
.end method

.method public setEnableLunar(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 444
    if-eqz p1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSolar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const-string v1, "so"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iput v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    .line 457
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 354
    iput p2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 355
    iput p3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 357
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 358
    return-void
.end method

.method public updateDate(IIIZZ)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "bSetLunar"    # Z
    .param p5, "bIsLeapMonth"    # Z

    .prologue
    .line 360
    iput p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 361
    iput p2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 362
    iput p3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "newState":I
    if-eqz p5, :cond_4

    .line 365
    const/4 v0, 0x2

    .line 369
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1, p4, p5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    .line 370
    if-nez p5, :cond_1

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 373
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    :cond_2
    iput v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 375
    if-eqz p5, :cond_5

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0e035a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 383
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 384
    return-void

    .line 366
    :cond_4
    if-eqz p4, :cond_0

    .line 367
    const/4 v0, 0x1

    goto :goto_0

    .line 377
    :cond_5
    if-eqz p4, :cond_6

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0e035b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 380
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0e035c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
