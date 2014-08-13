.class public Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method public constructor <init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V
    .locals 2
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    .line 971
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    .line 972
    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->isMonth:Z

    .line 974
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    .line 975
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    .line 977
    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    .line 978
    return-void

    .line 977
    :cond_1
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 3

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1600(Lcom/android/contacts/datepicker/DatePicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1029
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v2, v2, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1034
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1035
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1038
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 981
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 984
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 985
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 989
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 990
    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_4

    .line 996
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_2

    .line 998
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 1001
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 1009
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v2, v2, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_0

    .line 1014
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1019
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$1500(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
