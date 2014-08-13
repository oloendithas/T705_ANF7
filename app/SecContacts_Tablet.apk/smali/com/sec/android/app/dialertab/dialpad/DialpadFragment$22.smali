.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dailogBuildcreate(Ljava/lang/String;)V
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
    .line 7917
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x5

    .line 7921
    if-ne p2, v5, :cond_3

    .line 7922
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 7923
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 7924
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v3

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->crntDlgPos:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7925
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 7926
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 7927
    .local v0, "Slot1":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 7928
    .local v1, "Slot2":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 7930
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 7932
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7938
    .end local v0    # "Slot1":Landroid/telephony/TelephonyManager;
    .end local v1    # "Slot2":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 7933
    :cond_3
    const/16 v2, 0x17

    if-ne p2, v2, :cond_2

    .line 7934
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 7935
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$22;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method
