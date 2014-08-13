.class Lcom/android/contacts/datepicker/DatePicker$7;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


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
    .line 378
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v0, v0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v1, v1, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->hideSoftInput(Landroid/widget/NumberPicker;)V
    invoke-static {v0, v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1000(Lcom/android/contacts/datepicker/DatePicker;Landroid/widget/NumberPicker;)V

    .line 384
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v0, v0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 390
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # setter for: Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z
    invoke-static {v0, p2}, Lcom/android/contacts/datepicker/DatePicker;->access$702(Lcom/android/contacts/datepicker/DatePicker;Z)Z

    .line 391
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->isWritingBuddyFeatureEnabled()Z
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$1100(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$1200(Lcom/android/contacts/datepicker/DatePicker;)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 398
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$200(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 399
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$000(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 400
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$900(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 402
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 403
    return-void

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v0, v0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v1, v1, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->hideSoftInput(Landroid/widget/NumberPicker;)V
    invoke-static {v0, v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1000(Lcom/android/contacts/datepicker/DatePicker;Landroid/widget/NumberPicker;)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v0, v0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    goto :goto_0

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$7;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$1200(Lcom/android/contacts/datepicker/DatePicker;)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_1
.end method
