.class Lcom/android/internal/policy/impl/GlobalActions$5$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$5;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

.field final synthetic val$bIsEnable:Z

.field final synthetic val$disableExclusiveOptionsFlag:I

.field final synthetic val$disableExclusiveOptionsMessage:Ljava/lang/String;

.field final synthetic val$is_enabled:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$5;ZZLjava/lang/String;I)V
    .registers 6

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$bIsEnable:Z

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$is_enabled:Z

    iput-object p4, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$disableExclusiveOptionsMessage:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$disableExclusiveOptionsFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 830
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$bIsEnable:Z

    if-nez v3, :cond_ae

    .line 831
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$is_enabled:Z

    if-nez v3, :cond_43

    .line 832
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    const-string v5, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 836
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 838
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.talkback_off"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v2, "talk_back_off":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 883
    .end local v2    # "talk_back_off":Landroid/content/Intent;
    :goto_42
    return-void

    .line 841
    :cond_43
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$002(Z)Z

    .line 842
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 843
    .local v0, "_builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$disableExclusiveOptionsMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 844
    const v3, 0x104000a

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$5$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 860
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5$1$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$5$1$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$5$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 866
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 867
    .local v1, "_dialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 868
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 872
    :goto_84
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-result-object v3

    iput-object v1, v3, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 873
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 874
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2002(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 875
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_42

    .line 870
    :cond_a4
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_84

    .line 879
    .end local v0    # "_builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "_dialog":Landroid/app/AlertDialog;
    :cond_ae
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 880
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.talkback_off"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .restart local v2    # "talk_back_off":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 882
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/GlobalActions$5;->changeStateFromPress(Z)V

    goto/16 :goto_42
.end method
