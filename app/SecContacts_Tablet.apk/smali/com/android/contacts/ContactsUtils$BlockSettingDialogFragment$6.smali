.class Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;
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
    .line 776
    iput-object p1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 778
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v4

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v4

    if-eq v1, v2, :cond_2

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 779
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_4

    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 781
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-nez v1, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

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

    .line 783
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

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

    .line 780
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

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

    .line 786
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v4

    .line 799
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

    .line 800
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_8

    .line 801
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 802
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-nez v1, :cond_3

    .line 803
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

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

    .line 804
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

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

    .line 801
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 793
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

    .line 794
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-eqz v1, :cond_5

    .line 795
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 793
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 806
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

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

    .line 807
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v5

    .line 820
    .end local v0    # "i":I
    :cond_7
    return-void

    .line 814
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 815
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-eqz v1, :cond_9

    .line 816
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$6;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 814
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
