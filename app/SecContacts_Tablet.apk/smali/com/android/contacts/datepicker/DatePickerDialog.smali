.class public Lcom/android/contacts/datepicker/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"

.field private static final YEAR_OPTIONAL:Ljava/lang/String; = "year_optional"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

.field private mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

.field private mDateType:Ljava/lang/String;

.field private mDummyMonth:[Ljava/lang/String;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 161
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "yearOptional"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 182
    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    .line 183
    iput p4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    .line 184
    iput p5, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 185
    iput p6, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    .line 186
    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 187
    .local v7, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 194
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle()V

    .line 196
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    const/4 v0, -0x1

    const v1, 0x7f0e03d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 201
    :goto_0
    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/datepicker/DatePickerDialog$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/datepicker/DatePickerDialog$2;-><init>(Lcom/android/contacts/datepicker/DatePickerDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 213
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 215
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04008d

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 216
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 217
    const v0, 0x7f0901fe

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker;

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    .line 218
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    move/from16 v4, p7

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDateType:Ljava/lang/String;

    .line 220
    return-void

    .line 199
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, -0x1

    const v1, 0x104070c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 97
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 101
    iput-object p2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    .line 102
    iput p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    .line 103
    iput p4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 104
    iput p5, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    .line 105
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle()V

    .line 107
    const/4 v0, -0x1

    const v1, 0x7f0e03d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/datepicker/DatePickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/datepicker/DatePickerDialog$1;-><init>(Lcom/android/contacts/datepicker/DatePickerDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 124
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04008d

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 125
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 126
    const v0, 0x7f0901fe

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker;

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    .line 127
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "yearOptional"    # Z

    .prologue
    .line 144
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/datepicker/DatePickerDialog;)Lcom/android/contacts/datepicker/DatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/datepicker/DatePickerDialog;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    return-object v0
.end method

.method private updateTitle()V
    .locals 1

    .prologue
    .line 283
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 284
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 260
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 264
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v3}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v4}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v5}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/android/contacts/datepicker/DatePicker;III)V

    .line 267
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/datepicker/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 273
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 347
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, "year":I
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 349
    .local v2, "month":I
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 350
    .local v3, "day":I
    const-string v0, "year_optional"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 351
    .local v4, "yearOptional":Z
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 352
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle()V

    .line 353
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 337
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string v1, "month"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string v1, "day"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v1, "year_optional"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->isYearOptional()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "updatedDateType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDummyMonth:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 231
    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDateType:Ljava/lang/String;

    .line 233
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 245
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 246
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, "title":Landroid/widget/TextView;
    :goto_0
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 253
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 255
    :cond_0
    return-void

    .line 248
    .end local v0    # "title":Landroid/widget/TextView;
    :cond_1
    const v1, 0x10202d7

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "title":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    .line 277
    iput p2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 278
    iput p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    .line 279
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 280
    return-void
.end method
