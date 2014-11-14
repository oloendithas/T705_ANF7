.class Landroid/widget/TimePicker$8;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .registers 2

    .prologue
    .line 448
    iput-object p1, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 451
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "//"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 452
    .local v9, "numString":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x2

    if-ge v11, v12, :cond_f

    .line 513
    :goto_e
    return-void

    .line 456
    :cond_f
    const/4 v2, -0x1

    .line 457
    .local v2, "hour":I
    const/4 v7, -0x1

    .line 458
    .local v7, "minute":I
    const/4 v1, 0x0

    .line 459
    .local v1, "existAmPm":Z
    const-string v10, ""

    .line 461
    .local v10, "tmpStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v11, v9

    if-ge v3, v11, :cond_c5

    .line 462
    aget-object v11, v9, v3

    if-eqz v11, :cond_31

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 463
    :goto_22
    if-nez v3, :cond_39

    .line 465
    :try_start_24
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_34

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2d} :catch_36

    move-result v2

    .line 461
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 462
    :cond_31
    const-string v10, ""

    goto :goto_22

    .line 465
    :cond_34
    const/4 v2, -0x1

    goto :goto_2e

    .line 466
    :catch_36
    move-exception v8

    .line 467
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    .line 468
    goto :goto_2e

    .line 469
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_39
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4c

    .line 471
    :try_start_3c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_47

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_45} :catch_49

    move-result v7

    :goto_46
    goto :goto_2e

    :cond_47
    const/4 v7, -0x1

    goto :goto_46

    .line 472
    :catch_49
    move-exception v8

    .line 473
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    .line 474
    goto :goto_2e

    .line 475
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4c
    const/4 v11, 0x2

    if-ne v3, v11, :cond_2e

    .line 476
    aget-object v11, v9, v3

    if-eqz v11, :cond_9a

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 477
    :goto_59
    const-string v11, ""

    if-eq v10, v11, :cond_5e

    .line 478
    const/4 v1, 0x1

    .line 481
    :cond_5e
    :try_start_5e
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v5, v11, v12

    .line 482
    .local v5, "initAM":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v6, v11, v12

    .line 484
    .local v6, "initPM":Ljava/lang/String;
    if-eqz v1, :cond_9d

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_90

    const-string v11, "AM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 485
    :cond_90
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    const/4 v12, 0x1

    # setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;Z)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_96} :catch_97

    goto :goto_2e

    .line 489
    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :catch_97
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2e

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9a
    const-string v10, ""

    goto :goto_59

    .line 486
    .restart local v5    # "initAM":Ljava/lang/String;
    .restart local v6    # "initPM":Ljava/lang/String;
    :cond_9d
    if-eqz v1, :cond_2e

    :try_start_9f
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_bd

    const-string v11, "PM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 487
    :cond_bd
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    const/4 v12, 0x0

    # setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;Z)Z
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c3} :catch_97

    goto/16 :goto_2e

    .line 495
    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :cond_c5
    if-ltz v2, :cond_d0

    .line 496
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 499
    :cond_d0
    if-ltz v7, :cond_db

    .line 500
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 503
    :cond_db
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v11}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v11

    if-nez v11, :cond_ff

    if-eqz v1, :cond_ff

    .line 504
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v11}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v11

    if-eqz v11, :cond_106

    const/4 v4, 0x0

    .line 505
    .local v4, "index":I
    :goto_ee
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    if-eqz v11, :cond_108

    .line 506
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 512
    .end local v4    # "index":I
    :cond_ff
    :goto_ff
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v11}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    goto/16 :goto_e

    .line 504
    :cond_106
    const/4 v4, 0x1

    goto :goto_ee

    .line 507
    .restart local v4    # "index":I
    :cond_108
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_ff

    .line 508
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v12}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ff
.end method
