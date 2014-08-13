.class public final Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
.super Ljava/lang/Object;
.source "SolarLunarConverter.java"


# static fields
.field private static final LUNAR_END_YEAR:I = 0x834

.field private static final LUNAR_START_YEAR:I = 0x759

.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private isLeapMonth_:Z

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
        0x16e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertLunarToSolar_CHN(IIIZ)V
    .locals 12
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I
    .param p4, "isLeapMonth"    # Z

    .prologue
    .line 305
    const/16 v9, 0x759

    if-lt p1, v9, :cond_0

    const/16 v9, 0x834

    if-gt p1, v9, :cond_0

    if-ltz p2, :cond_0

    const/16 v9, 0xb

    if-gt p2, v9, :cond_0

    const/4 v9, 0x1

    if-lt p3, v9, :cond_0

    const/16 v9, 0x1e

    if-le p3, v9, :cond_1

    .line 308
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 312
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 313
    .local v1, "days":[I
    add-int/lit16 v3, p1, -0x759

    .line 314
    .local v3, "indexOfYear":I
    mul-int/lit8 v8, v3, 0xe

    .line 315
    .local v8, "startIndexOfYear":I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays_CHN:[I

    aget v0, v9, v3

    .line 316
    .local v0, "countOfDays":I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 319
    .local v5, "leapMonth":I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_2

    const/16 v7, 0xc

    .line 320
    .local v7, "numOfMonth":I
    :goto_0
    const/16 v9, 0xc

    if-ne v7, v9, :cond_3

    .line 321
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, p2, :cond_6

    .line 322
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 319
    .end local v4    # "j":I
    .end local v7    # "numOfMonth":I
    :cond_2
    const/16 v7, 0xd

    goto :goto_0

    .line 325
    .restart local v7    # "numOfMonth":I
    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_4

    .line 326
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 327
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 331
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_5

    .line 332
    add-int/lit8 v6, p2, 0x1

    .line 336
    .local v6, "nM":I
    :goto_3
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v6, :cond_6

    .line 337
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 334
    .end local v4    # "j":I
    .end local v6    # "nM":I
    :cond_5
    move v6, p2

    .restart local v6    # "nM":I
    goto :goto_3

    .line 343
    .end local v6    # "nM":I
    .restart local v4    # "j":I
    :cond_6
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 345
    const/16 v9, 0x759

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 346
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 347
    const/16 v9, 0x1e

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 348
    const/16 v9, 0x14f

    if-le v0, v9, :cond_a

    .line 350
    const/16 v9, 0x75a

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 351
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 352
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 354
    add-int/lit16 v0, v0, -0x150

    .line 357
    const/16 v2, 0x16d

    .line 358
    .local v2, "daysOfYear":I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 359
    sub-int/2addr v0, v2

    .line 360
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 361
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 362
    const/16 v2, 0x16e

    goto :goto_5

    .line 364
    :cond_7
    const/16 v2, 0x16d

    goto :goto_5

    .line 368
    :cond_8
    :goto_6
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_9

    .line 369
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_6

    .line 371
    :cond_9
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 374
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 391
    .end local v2    # "daysOfYear":I
    :goto_7
    return-void

    .line 376
    :cond_a
    const/4 v9, 0x1

    if-le v0, v9, :cond_c

    .line 377
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 378
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 379
    add-int/lit8 v0, v0, -0x2

    .line 380
    :goto_8
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_b

    .line 381
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    .line 383
    :cond_b
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 386
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7

    .line 388
    :cond_c
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7
.end method

.method private convertSolarToLunar_CHN(III)V
    .locals 12
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I

    .prologue
    const/16 v11, 0x76c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 245
    const v6, 0xa7a5e

    .line 247
    .local v6, "totalDaysTo18810130":I
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 249
    const/16 v7, 0x759

    if-lt p1, v7, :cond_0

    const/16 v7, 0x834

    if-gt p1, v7, :cond_0

    if-ltz p2, :cond_0

    const/16 v7, 0xb

    if-gt p2, v7, :cond_0

    if-lt p3, v10, :cond_0

    const/16 v7, 0x1f

    if-le p3, v7, :cond_1

    .line 252
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The date "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is out of range."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 257
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v7

    add-int/2addr v7, p3

    const v8, 0xa7a5e

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 258
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v8

    aget v8, v8, p2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 262
    const/4 v0, 0x1

    .local v0, "indexOfYear":I
    :goto_0
    const/16 v7, 0xdd

    if-ge v0, v7, :cond_2

    .line 263
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays_CHN:[I

    aget v8, v8, v0

    if-gt v7, v8, :cond_5

    .line 267
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 268
    mul-int/lit8 v5, v0, 0xe

    .line 269
    .local v5, "startIndexOfYear":I
    add-int/lit16 v7, v0, 0x759

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 272
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays_CHN:[I

    aget v8, v8, v0

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 273
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int/lit8 v8, v5, 0xd

    aget-byte v2, v7, v8

    .line 276
    .local v2, "leapMonth":I
    const/16 v7, 0x7f

    if-ne v2, v7, :cond_6

    const/16 v4, 0xc

    .line 277
    .local v4, "numOfMonth":I
    :goto_1
    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 278
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 279
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v8, v5, v1

    aget-byte v3, v7, v8

    .line 280
    .local v3, "m1":I
    if-ne v2, v1, :cond_7

    .line 281
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 287
    :goto_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    if-gt v7, v3, :cond_8

    .line 293
    .end local v3    # "m1":I
    :cond_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    if-ge v7, v11, :cond_4

    .line 294
    iput v11, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 295
    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 296
    iput v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 298
    :cond_4
    return-void

    .line 262
    .end local v1    # "j":I
    .end local v2    # "leapMonth":I
    .end local v4    # "numOfMonth":I
    .end local v5    # "startIndexOfYear":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .restart local v2    # "leapMonth":I
    .restart local v5    # "startIndexOfYear":I
    :cond_6
    const/16 v4, 0xd

    goto :goto_1

    .line 283
    .restart local v1    # "j":I
    .restart local v3    # "m1":I
    .restart local v4    # "numOfMonth":I
    :cond_7
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 284
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_3

    .line 290
    :cond_8
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getAccumulatedDays(I)[I
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    .line 81
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_0
.end method

.method public static getWeekday(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 394
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 395
    add-int/lit8 p1, p1, 0xc

    .line 396
    add-int/lit8 p0, p0, -0x1

    .line 399
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private isLeapYear(I)Z
    .locals 2
    .param p1, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 71
    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_0

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    :cond_1
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .locals 12
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I
    .param p4, "isLeapMonth"    # Z

    .prologue
    .line 147
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isChineseLunarCalendar()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 148
    invoke-direct/range {p0 .. p4}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar_CHN(IIIZ)V

    .line 238
    :goto_0
    return-void

    .line 152
    :cond_0
    const/16 v9, 0x759

    if-lt p1, v9, :cond_1

    const/16 v9, 0x834

    if-gt p1, v9, :cond_1

    if-ltz p2, :cond_1

    const/16 v9, 0xb

    if-gt p2, v9, :cond_1

    const/4 v9, 0x1

    if-lt p3, v9, :cond_1

    const/16 v9, 0x1e

    if-le p3, v9, :cond_2

    .line 155
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 159
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 160
    .local v1, "days":[I
    add-int/lit16 v3, p1, -0x759

    .line 161
    .local v3, "indexOfYear":I
    mul-int/lit8 v8, v3, 0xe

    .line 162
    .local v8, "startIndexOfYear":I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v9, v3

    .line 163
    .local v0, "countOfDays":I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 166
    .local v5, "leapMonth":I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_3

    const/16 v7, 0xc

    .line 167
    .local v7, "numOfMonth":I
    :goto_1
    const/16 v9, 0xc

    if-ne v7, v9, :cond_4

    .line 168
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, p2, :cond_7

    .line 169
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 166
    .end local v4    # "j":I
    .end local v7    # "numOfMonth":I
    :cond_3
    const/16 v7, 0xd

    goto :goto_1

    .line 172
    .restart local v7    # "numOfMonth":I
    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_5

    .line 173
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v5, :cond_7

    .line 174
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 178
    .end local v4    # "j":I
    :cond_5
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_6

    .line 179
    add-int/lit8 v6, p2, 0x1

    .line 183
    .local v6, "nM":I
    :goto_4
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    if-ge v4, v6, :cond_7

    .line 184
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 181
    .end local v4    # "j":I
    .end local v6    # "nM":I
    :cond_6
    move v6, p2

    .restart local v6    # "nM":I
    goto :goto_4

    .line 190
    .end local v6    # "nM":I
    .restart local v4    # "j":I
    :cond_7
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 192
    const/16 v9, 0x759

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 193
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 194
    const/16 v9, 0x1e

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 195
    const/16 v9, 0x14f

    if-le v0, v9, :cond_b

    .line 197
    const/16 v9, 0x75a

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 198
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 199
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 201
    add-int/lit16 v0, v0, -0x150

    .line 204
    const/16 v2, 0x16d

    .line 205
    .local v2, "daysOfYear":I
    :goto_6
    if-lt v0, v2, :cond_9

    .line 206
    sub-int/2addr v0, v2

    .line 207
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 208
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 209
    const/16 v2, 0x16e

    goto :goto_6

    .line 211
    :cond_8
    const/16 v2, 0x16d

    goto :goto_6

    .line 215
    :cond_9
    :goto_7
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_a

    .line 216
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_7

    .line 218
    :cond_a
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 221
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 223
    .end local v2    # "daysOfYear":I
    :cond_b
    const/4 v9, 0x1

    if-le v0, v9, :cond_d

    .line 224
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 225
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 226
    add-int/lit8 v0, v0, -0x2

    .line 227
    :goto_8
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_c

    .line 228
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    .line 230
    :cond_c
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 233
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 235
    :cond_d
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0
.end method

.method public convertSolarToLunar(III)V
    .locals 12
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I

    .prologue
    const/16 v11, 0x76c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isChineseLunarCalendar()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar_CHN(III)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const v6, 0xa7a5e

    .line 92
    .local v6, "totalDaysTo18810130":I
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 94
    const/16 v7, 0x759

    if-lt p1, v7, :cond_2

    const/16 v7, 0x834

    if-gt p1, v7, :cond_2

    if-ltz p2, :cond_2

    const/16 v7, 0xb

    if-gt p2, v7, :cond_2

    if-lt p3, v10, :cond_2

    const/16 v7, 0x1f

    if-le p3, v7, :cond_3

    .line 97
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The date "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is out of range."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 102
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v7

    add-int/2addr v7, p3

    const v8, 0xa7a5e

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 103
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v8

    aget v8, v8, p2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 107
    const/4 v0, 0x1

    .local v0, "indexOfYear":I
    :goto_1
    const/16 v7, 0xdd

    if-ge v0, v7, :cond_4

    .line 108
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v8, v8, v0

    if-gt v7, v8, :cond_6

    .line 112
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 113
    mul-int/lit8 v5, v0, 0xe

    .line 114
    .local v5, "startIndexOfYear":I
    add-int/lit16 v7, v0, 0x759

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 117
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v8, v8, v0

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 118
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v8, v5, 0xd

    aget-byte v2, v7, v8

    .line 121
    .local v2, "leapMonth":I
    const/16 v7, 0x7f

    if-ne v2, v7, :cond_7

    const/16 v4, 0xc

    .line 122
    .local v4, "numOfMonth":I
    :goto_2
    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 123
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v4, :cond_5

    .line 124
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v8, v5, v1

    aget-byte v3, v7, v8

    .line 125
    .local v3, "m1":I
    if-ne v2, v1, :cond_8

    .line 126
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 132
    :goto_4
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    if-gt v7, v3, :cond_9

    .line 138
    .end local v3    # "m1":I
    :cond_5
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    if-ge v7, v11, :cond_0

    .line 139
    iput v11, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 140
    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 141
    iput v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 107
    .end local v1    # "j":I
    .end local v2    # "leapMonth":I
    .end local v4    # "numOfMonth":I
    .end local v5    # "startIndexOfYear":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .restart local v2    # "leapMonth":I
    .restart local v5    # "startIndexOfYear":I
    :cond_7
    const/16 v4, 0xd

    goto :goto_2

    .line 128
    .restart local v1    # "j":I
    .restart local v3    # "m1":I
    .restart local v4    # "numOfMonth":I
    :cond_8
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 129
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_4

    .line 135
    :cond_9
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getTotalDaysTo(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 52
    add-int/lit8 v0, p1, -0x1

    .line 53
    .local v0, "year":I
    mul-int/lit16 v1, v0, 0x16d

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    div-int/lit16 v2, v0, 0x190

    add-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    return v0
.end method

.method public isFirstLunarDay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    iget v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    if-ne v1, v0, :cond_0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeapMonth()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    return v0
.end method
