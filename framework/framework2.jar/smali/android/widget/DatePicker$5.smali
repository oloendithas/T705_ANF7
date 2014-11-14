.class Landroid/widget/DatePicker$5;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .registers 2

    .prologue
    .line 469
    iput-object p1, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "numString":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x3

    if-ge v9, v10, :cond_f

    .line 510
    :goto_e
    return-void

    .line 477
    :cond_f
    const/4 v8, -0x1

    .line 478
    .local v8, "year":I
    const/4 v2, -0x1

    .line 479
    .local v2, "month":I
    const/4 v0, -0x1

    .line 481
    .local v0, "day":I
    const-string v7, ""

    .line 482
    .local v7, "tmpStr":Ljava/lang/String;
    const-string/jumbo v9, "yyyyMMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v4

    .line 484
    .local v4, "order":[C
    array-length v6, v4

    .line 485
    .local v6, "spinnerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v6, :cond_75

    .line 486
    aget-char v9, v4, v1

    sparse-switch v9, :sswitch_data_b8

    .line 485
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 488
    :sswitch_33
    aget-object v9, v3, v1

    if-eqz v9, :cond_46

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 489
    :goto_3d
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x64

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v0

    .line 490
    goto :goto_30

    .line 488
    :cond_46
    const-string v7, ""

    goto :goto_3d

    .line 492
    :sswitch_49
    aget-object v9, v3, v1

    if-eqz v9, :cond_5c

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 493
    :goto_53
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x4d

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v2

    .line 494
    goto :goto_30

    .line 492
    :cond_5c
    const-string v7, ""

    goto :goto_53

    .line 496
    :sswitch_5f
    aget-object v9, v3, v1

    if-eqz v9, :cond_72

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 497
    :goto_69
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x79

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v8

    .line 498
    goto :goto_30

    .line 496
    :cond_72
    const-string v7, ""

    goto :goto_69

    .line 504
    :cond_75
    iget-object v10, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    if-lez v8, :cond_93

    .end local v8    # "year":I
    :goto_79
    if-lez v2, :cond_9f

    add-int/lit8 v9, v2, -0x1

    :goto_7d
    if-lez v0, :cond_ab

    .end local v0    # "day":I
    :goto_7f
    # invokes: Landroid/widget/DatePicker;->setDate(III)V
    invoke-static {v10, v8, v9, v0}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;III)V

    .line 507
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateSpinners()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;)V

    .line 508
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateCalendarView()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)V

    .line 509
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;)V

    goto/16 :goto_e

    .line 504
    .restart local v0    # "day":I
    .restart local v8    # "year":I
    :cond_93
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_79

    .end local v8    # "year":I
    :cond_9f
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    goto :goto_7d

    :cond_ab
    iget-object v11, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v11}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_7f

    .line 486
    nop

    :sswitch_data_b8
    .sparse-switch
        0x4d -> :sswitch_49
        0x64 -> :sswitch_33
        0x79 -> :sswitch_5f
    .end sparse-switch
.end method
