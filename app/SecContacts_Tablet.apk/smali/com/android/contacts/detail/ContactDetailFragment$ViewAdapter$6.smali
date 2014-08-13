.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field final synthetic val$alertDialogChecked:Landroid/app/AlertDialog;

.field final synthetic val$alertDialogUncheck:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/app/AlertDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 5120
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->val$alertDialogChecked:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->val$alertDialogUncheck:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    const v4, 0x7f0e04ef

    .line 5126
    if-eqz p2, :cond_1

    .line 5127
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volteVTEnabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5129
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->video_switch_pref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->access$3900(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LVCBetaEnabled"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5132
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->video_switch_pref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->access$3900(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "skipMessage1"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5136
    .local v0, "skipMessage":Ljava/lang/String;
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged skipMsg 4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->val$alertDialogChecked:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5141
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->val$alertDialogChecked:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5142
    const-string v1, "ContactDetailFragment"

    const-string v2, "onCheckedChanged show dialog 1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setLTEVideoCall(Z)V

    .line 5164
    return-void

    .line 5145
    .end local v0    # "skipMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volteVTEnabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5147
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->video_switch_pref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->access$3900(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LVCBetaEnabled"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5150
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->video_switch_pref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->access$3900(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "skipMessage2"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5154
    .restart local v0    # "skipMessage":Ljava/lang/String;
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged of skip msg 5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->val$alertDialogUncheck:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5159
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;->val$alertDialogUncheck:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5160
    const-string v1, "ContactDetailFragment"

    const-string v2, "onCheckedChanged show dialog 1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
