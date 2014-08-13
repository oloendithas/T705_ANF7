.class public Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
.super Lcom/android/contacts/datepicker/DatePicker;
.source "DatePickerWithLunar.java"


# static fields
.field static final MAX_YEAR:I = 0x834

.field static final MIN_YEAR:I = 0x76c


# instance fields
.field private mIsLeapMonth:Z

.field private mSetLunar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected getMaxDayOfMonth()I
    .locals 5

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 50
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 52
    .local v1, "max":I
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->getDayLengthOf(IIZ)I

    move-result v1

    .line 56
    :cond_0
    return v1
.end method

.method public isLeapMonth()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    return v0
.end method

.method public isLunarCalendar()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    return v0
.end method

.method public setLunarCalendar(ZZ)V
    .locals 7
    .param p1, "bSetLunar"    # Z
    .param p2, "bIsLeapMonth"    # Z

    .prologue
    const/4 v6, 0x1

    .line 72
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    .line 73
    iput-boolean p2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMaxDayOfMonth()I

    move-result v1

    .line 75
    .local v1, "maxDay":I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v0

    .line 76
    .local v0, "dayOfMonth":I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 77
    move v0, v1

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v6

    invoke-virtual {p0, v5, v6, v1}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 93
    :goto_1
    return-void

    .line 72
    .end local v0    # "dayOfMonth":I
    .end local v1    # "maxDay":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 80
    .restart local v0    # "dayOfMonth":I
    .restart local v1    # "maxDay":I
    :cond_2
    const/16 v3, 0x834

    .line 81
    .local v3, "temp_year":I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v4

    .line 82
    .local v4, "year":I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    .line 84
    .local v2, "month":I
    if-ne v4, v3, :cond_3

    .line 85
    const/16 v3, 0x76c

    .line 87
    :cond_3
    invoke-virtual {p0, v3, v2, v6}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 88
    invoke-virtual {p0, v4, v2, v0}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    goto :goto_1
.end method

.method protected updateDaySpinner()V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMaxDayOfMonth()I

    move-result v0

    .line 98
    .local v0, "maxDay":I
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 99
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 100
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 102
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 104
    :cond_0
    return-void
.end method
