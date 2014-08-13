.class Lcom/android/contacts/datepicker/DatePicker$6;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v13, 0x79

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "//"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "numString":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z
    invoke-static {v11}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 305
    array-length v11, v4

    const/4 v12, 0x3

    if-ge v11, v12, :cond_2

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    array-length v11, v4

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    .line 314
    :cond_2
    const/4 v10, -0x1

    .line 315
    .local v10, "year":I
    const/4 v3, -0x1

    .line 316
    .local v3, "month":I
    const/4 v1, -0x1

    .line 318
    .local v1, "day":I
    const-string v9, ""

    .line 321
    .local v9, "tmpStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isChineseLunarCalendar()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 322
    const-string v11, "yyyyMMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "pattern":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-static {v6}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([C)V

    .line 328
    .end local v6    # "pattern":Ljava/lang/String;
    .local v5, "order":Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z
    invoke-static {v11}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 329
    const-string v8, ""

    .line 330
    .local v8, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_5

    .line 331
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 332
    .local v0, "c":C
    if-eq v0, v13, :cond_3

    .line 333
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 330
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 325
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v5    # "order":Ljava/lang/String;
    .end local v8    # "temp":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([C)V

    .restart local v5    # "order":Ljava/lang/String;
    goto :goto_1

    .line 336
    .restart local v2    # "i":I
    .restart local v8    # "temp":Ljava/lang/String;
    :cond_5
    move-object v5, v8

    .line 339
    .end local v2    # "i":I
    .end local v8    # "temp":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 340
    .local v7, "spinnerCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v7, :cond_b

    .line 341
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 340
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 343
    :sswitch_0
    aget-object v11, v4, v2

    if-eqz v11, :cond_8

    aget-object v11, v4, v2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 344
    :goto_5
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    const/16 v12, 0x64

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v11, v12, v9}, Lcom/android/contacts/datepicker/DatePicker;->access$800(Lcom/android/contacts/datepicker/DatePicker;CLjava/lang/String;)I

    move-result v1

    .line 345
    goto :goto_4

    .line 343
    :cond_8
    const-string v9, ""

    goto :goto_5

    .line 347
    :sswitch_1
    aget-object v11, v4, v2

    if-eqz v11, :cond_9

    aget-object v11, v4, v2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 348
    :goto_6
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    const/16 v12, 0x4d

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v11, v12, v9}, Lcom/android/contacts/datepicker/DatePicker;->access$800(Lcom/android/contacts/datepicker/DatePicker;CLjava/lang/String;)I

    move-result v3

    .line 349
    goto :goto_4

    .line 347
    :cond_9
    const-string v9, ""

    goto :goto_6

    .line 351
    :sswitch_2
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z
    invoke-static {v11}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 352
    aget-object v11, v4, v2

    if-eqz v11, :cond_a

    aget-object v11, v4, v2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 353
    :goto_7
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v11, v13, v9}, Lcom/android/contacts/datepicker/DatePicker;->access$800(Lcom/android/contacts/datepicker/DatePicker;CLjava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 352
    :cond_a
    const-string v9, ""

    goto :goto_7

    .line 361
    :cond_b
    if-lez v10, :cond_c

    .line 362
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iput v10, v11, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 363
    :cond_c
    if-lez v3, :cond_d

    .line 364
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    add-int/lit8 v12, v3, -0x1

    iput v12, v11, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 365
    :cond_d
    if-lez v1, :cond_e

    .line 366
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iput v1, v11, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 368
    :cond_e
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/contacts/datepicker/DatePicker;->setFromWB(Z)V

    .line 370
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V
    invoke-static {v11}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 371
    iget-object v11, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v11}, Lcom/android/contacts/datepicker/DatePicker;->access$000(Lcom/android/contacts/datepicker/DatePicker;)V

    goto/16 :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method
