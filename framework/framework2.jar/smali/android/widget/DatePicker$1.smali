.class Landroid/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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
    .line 239
    iput-object p1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 12
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    .line 244
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 246
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_84

    .line 247
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 248
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_6a

    if-ne p3, v4, :cond_6a

    .line 251
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 284
    .end local v0    # "maxDayOfMonth":I
    :goto_37
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Landroid/widget/DatePicker;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;III)V

    .line 286
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateSpinners()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;)V

    .line 287
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateCalendarView()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)V

    .line 288
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;)V

    .line 289
    return-void

    .line 253
    .restart local v0    # "maxDayOfMonth":I
    :cond_6a
    if-ne p2, v4, :cond_78

    if-ne p3, v0, :cond_78

    .line 256
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_37

    .line 259
    :cond_78
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_37

    .line 261
    .end local v0    # "maxDayOfMonth":I
    :cond_84
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$300(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_b4

    .line 262
    if-ne p2, v7, :cond_9a

    if-nez p3, :cond_9a

    .line 265
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_37

    .line 267
    :cond_9a
    if-nez p2, :cond_a8

    if-ne p3, v7, :cond_a8

    .line 270
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_37

    .line 273
    :cond_a8
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_37

    .line 275
    :cond_b4
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_c9

    .line 278
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_37

    .line 281
    :cond_c9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
