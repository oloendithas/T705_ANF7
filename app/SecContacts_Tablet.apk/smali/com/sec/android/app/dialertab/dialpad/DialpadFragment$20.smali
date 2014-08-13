.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 7861
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 7864
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "hongkong_taiwan_dialer"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7867
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v5, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 7868
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v5, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 7869
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v5

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7870
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 7902
    :goto_0
    return-void

    .line 7872
    :cond_1
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 7873
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subDialogBuilder(I)V
    invoke-static {v4, p2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7899
    :catch_0
    move-exception v0

    .line 7900
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IndexOutOfBoundsException in dialogResultBuilder onClick"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7875
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v5, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 7876
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v5, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 7877
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7878
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_ReplaceGsmCharToAndroidFormat"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7880
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v5

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "P"

    const-string v7, ","

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "W"

    const-string v7, ";"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7885
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->checkVolteVTicon:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7886
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 7887
    .local v2, "queryNumber":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)V

    .line 7889
    .local v1, "entry":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7890
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 7894
    .end local v1    # "entry":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;
    .end local v2    # "queryNumber":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 7895
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 7882
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$20;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v5

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
