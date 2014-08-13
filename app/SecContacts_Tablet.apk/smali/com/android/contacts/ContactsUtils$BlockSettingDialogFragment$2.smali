.class Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->BlockNumberSettingDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 607
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v4

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v4

    if-eq v1, v2, :cond_2

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 608
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_4

    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 610
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-nez v1, :cond_0

    .line 611
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v2, v4

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v4

    .line 628
    .end local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v5

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v5

    if-eq v1, v2, :cond_7

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 629
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_9

    .line 630
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 631
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-nez v1, :cond_3

    .line 632
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 633
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v2, v5

    .line 630
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 623
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-eqz v1, :cond_5

    .line 624
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 622
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 635
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 636
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v5

    .line 649
    .end local v0    # "i":I
    :cond_7
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v6

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v6

    if-eq v1, v2, :cond_c

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 650
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_d

    .line 651
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 652
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isMessageChecked:Z

    if-nez v1, :cond_8

    .line 653
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 654
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v2, v6

    .line 651
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 643
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 644
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-eqz v1, :cond_a

    .line 645
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 643
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 656
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockMessageContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 657
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v6

    .line 670
    .end local v0    # "i":I
    :cond_c
    return-void

    .line 664
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 665
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isMessageChecked:Z

    if-eqz v1, :cond_e

    .line 666
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockMessageContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
