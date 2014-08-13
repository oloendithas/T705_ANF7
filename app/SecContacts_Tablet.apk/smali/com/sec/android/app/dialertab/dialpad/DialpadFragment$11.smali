.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 2921
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const v7, 0x7f0e0402

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2924
    const/4 v0, 0x0

    .line 2925
    .local v0, "mContact":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const-string v3, ""

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2927
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v2, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 2928
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2930
    .local v1, "temp":Ljava/lang/String;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2931
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onTextReceived : "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2934
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 2935
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2936
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2937
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2938
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v3, v7, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->displayToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)V

    .line 2996
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setLocalName(Landroid/text/Editable;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/text/Editable;)V

    .line 2997
    return-void

    .line 2940
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_With_Character_S(Ljava/lang/String;Z)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {v2, v1, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Z)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 2942
    if-eqz v0, :cond_2

    .line 2943
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2944
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2945
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V

    .line 2946
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2948
    :cond_2
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onTextReceived : no matched name for writingbuddy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isReallyDialable(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2900(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2950
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2951
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 2953
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2954
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2955
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v3, v7, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->displayToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2960
    :cond_4
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onTextReceived : reset the texts from writingbuddy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2962
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2965
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 2966
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2967
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2968
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultEmpty()V
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    goto/16 :goto_0

    .line 2970
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_With_Character_S(Ljava/lang/String;Z)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {v2, v1, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Z)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 2972
    if-eqz v0, :cond_7

    .line 2973
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2974
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2975
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultLayout(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2978
    :cond_7
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onTextReceived : no matched name for writingbuddy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isReallyDialable(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2900(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2980
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2981
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 2983
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2984
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultEmpty()V
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    goto/16 :goto_0

    .line 2989
    :cond_9
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onTextReceived : reset the texts from writingbuddy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2992
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->displayLogs()V
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    goto/16 :goto_0
.end method
