.class Lcom/diotek/ime/framework/view/TipsDialog$27;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showTipsSwiftkeyGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$27;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1127
    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$27;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1128
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1129
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$27;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z
    invoke-static {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->access$600(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1130
    const-string v4, "SETTINGS_USE_STANDARD_DATA"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1134
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1136
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1137
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$27;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1138
    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$27;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1141
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$27;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowSwiftkeyGuideConsecutively(Z)V

    .line 1148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1149
    return-void

    .line 1132
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    const-string v4, "SETTINGS_USE_STANDARD_DATA"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1143
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
