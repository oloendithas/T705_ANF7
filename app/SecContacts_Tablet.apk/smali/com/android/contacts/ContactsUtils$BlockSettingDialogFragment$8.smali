.class Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$8;
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
    .line 844
    iput-object p1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$8;->this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    .line 846
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v4

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v4

    if-eq v1, v2, :cond_2

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 847
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_3

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 849
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-nez v1, :cond_0

    .line 850
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$8;->val$context:Landroid/content/Context;

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

    .line 851
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$8;->val$context:Landroid/content/Context;

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

    .line 848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$8;->val$context:Landroid/content/Context;

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

    .line 854
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v4

    .line 867
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 861
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 862
    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-eqz v1, :cond_4

    .line 863
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$8;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 861
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
