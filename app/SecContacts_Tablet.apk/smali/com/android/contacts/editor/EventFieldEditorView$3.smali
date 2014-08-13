.class Lcom/android/contacts/editor/EventFieldEditorView$3;
.super Ljava/lang/Object;
.source "EventFieldEditorView.java"

# interfaces
.implements Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EventFieldEditorView;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$isYearOptional:Z

.field final synthetic val$kind:Lcom/android/contacts/model/DataKind;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/DataKind;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$3;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    iput-boolean p2, p0, Lcom/android/contacts/editor/EventFieldEditorView$3;->val$isYearOptional:Z

    iput-object p3, p0, Lcom/android/contacts/editor/EventFieldEditorView$3;->val$kind:Lcom/android/contacts/model/DataKind;

    iput-object p4, p0, Lcom/android/contacts/editor/EventFieldEditorView$3;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;IIIZZ)V
    .locals 17
    .param p1, "view"    # Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "bSetLunar"    # Z
    .param p6, "bIsLeapMonth"    # Z

    .prologue
    .line 363
    const/4 v14, 0x0

    .line 364
    .local v14, "type":I
    if-nez p6, :cond_0

    if-eqz p5, :cond_2

    .line 365
    :cond_0
    new-instance v13, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-direct {v13}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;-><init>()V

    .line 366
    .local v13, "slc":Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v0, v1, v2}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar(III)V

    .line 368
    invoke-virtual {v13}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v12

    .line 369
    .local v12, "resultYear":I
    invoke-virtual {v13}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v5

    .line 370
    .local v5, "resultMonth":I
    invoke-virtual {v13}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v6

    .line 372
    .local v6, "resultDay":I
    if-eqz p6, :cond_1

    .line 373
    const/4 v14, 0x2

    .line 385
    .end local v13    # "slc":Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    :goto_0
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->val$isYearOptional:Z

    if-nez v4, :cond_3

    .line 386
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 375
    .restart local v13    # "slc":Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    :cond_1
    const/4 v14, 0x1

    goto :goto_0

    .line 378
    .end local v5    # "resultMonth":I
    .end local v6    # "resultDay":I
    .end local v12    # "resultYear":I
    .end local v13    # "slc":Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    :cond_2
    move/from16 v12, p2

    .line 379
    .restart local v12    # "resultYear":I
    move/from16 v5, p3

    .line 380
    .restart local v5    # "resultMonth":I
    move/from16 v6, p4

    .line 382
    .restart local v6    # "resultDay":I
    const/4 v14, 0x0

    goto :goto_0

    .line 387
    :cond_3
    sget-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 395
    .local v3, "outCalendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    if-eq v14, v4, :cond_4

    const/4 v4, 0x2

    if-ne v14, v4, :cond_5

    .line 396
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    const/16 v7, 0x41

    # invokes: Lcom/android/contacts/editor/EventFieldEditorView;->reArrangeDate(CIII)Ljava/lang/String;
    invoke-static {v4, v7, v12, v5, v6}, Lcom/android/contacts/editor/EventFieldEditorView;->access$100(Lcom/android/contacts/editor/EventFieldEditorView;CIII)Ljava/lang/String;

    move-result-object v10

    .line 407
    .local v10, "date":Ljava/lang/String;
    :goto_1
    move-object v11, v10

    .line 408
    .local v11, "resultString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v7, "data15"

    invoke-virtual {v4, v7, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v7, "data14"

    const-string v8, "%d.%02d.%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v15

    const/4 v15, 0x1

    add-int/lit8 v16, p3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v15

    const/4 v15, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v15

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->val$column:Ljava/lang/String;

    invoke-virtual {v4, v7, v11}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    # invokes: Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V
    invoke-static {v4}, Lcom/android/contacts/editor/EventFieldEditorView;->access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V

    .line 413
    return-void

    .line 398
    .end local v10    # "date":Ljava/lang/String;
    .end local v11    # "resultString":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 399
    if-nez p2, :cond_6

    const/16 v4, 0x76c

    :goto_2
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 400
    if-nez p2, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "date":Ljava/lang/String;
    goto :goto_1

    .end local v10    # "date":Ljava/lang/String;
    :cond_6
    move v4, v12

    .line 399
    goto :goto_2

    .line 403
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/EventFieldEditorView$3;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "date":Ljava/lang/String;
    goto :goto_1
.end method
