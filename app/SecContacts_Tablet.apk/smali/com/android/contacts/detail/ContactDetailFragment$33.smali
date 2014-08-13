.class Lcom/android/contacts/detail/ContactDetailFragment$33;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->videoCallingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$videoAlertDialog:Landroid/app/AlertDialog;

.field final synthetic val$video_calling_switch:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 3167
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->val$video_calling_switch:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->val$videoAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v4, 0x7f0e04ef

    const/4 v3, 0x1

    .line 3169
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volteVTEnabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3171
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setLTEVideoCall(Z)V

    .line 3172
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->val$video_calling_switch:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LVCBetaEnabled"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3174
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3175
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isLTEVideoCallEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 3178
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->val$video_calling_switch:Landroid/content/SharedPreferences;

    const-string v2, "skipMessage1"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3182
    .local v0, "skipMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->val$videoAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3186
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->val$videoAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 3189
    :goto_0
    return-void

    .line 3188
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$33;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    goto :goto_0
.end method
