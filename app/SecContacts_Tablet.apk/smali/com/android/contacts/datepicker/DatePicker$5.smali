.class Lcom/android/contacts/datepicker/DatePicker$5;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


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
    .line 264
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "arg0"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    const-string v2, ""

    .line 270
    .local v2, "curDate":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/contacts/datepicker/DatePicker;->access$400(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/contacts/datepicker/DatePicker;->access$400(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "day":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/contacts/datepicker/DatePicker;->access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/contacts/datepicker/DatePicker;->access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "month":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/contacts/datepicker/DatePicker;->access$600(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/contacts/datepicker/DatePicker;->access$600(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "year":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    const v9, 0x7f0901fa

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 275
    .local v6, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 276
    .local v1, "cnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_7

    .line 277
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_4

    .line 276
    :cond_0
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 270
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "cnt":I
    .end local v3    # "day":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "month":Ljava/lang/String;
    .end local v6    # "parent":Landroid/widget/LinearLayout;
    .end local v7    # "year":Ljava/lang/String;
    :cond_1
    const-string v3, "01"

    goto :goto_0

    .line 271
    .restart local v3    # "day":Ljava/lang/String;
    :cond_2
    const-string v5, "01"

    goto :goto_1

    .line 272
    .restart local v5    # "month":Ljava/lang/String;
    :cond_3
    const-string v7, "2013"

    goto :goto_2

    .line 282
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "cnt":I
    .restart local v4    # "i":I
    .restart local v6    # "parent":Landroid/widget/LinearLayout;
    .restart local v7    # "year":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v8, v8, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    :goto_5
    add-int/lit8 v8, v1, -0x1

    if-eq v4, v8, :cond_0

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "//"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 284
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v8, v8, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 285
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 286
    :cond_6
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker$5;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v8, v8, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 296
    .end local v0    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
