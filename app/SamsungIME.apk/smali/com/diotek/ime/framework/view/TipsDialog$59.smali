.class Lcom/diotek/ime/framework/view/TipsDialog$59;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showTipsRemoveWordsGuideDialog(Landroid/view/View;)V
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
    .line 2009
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$59;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2013
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$59;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2014
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2015
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$59;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/TipsDialog;->access$900(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2016
    const-string v2, "first_tips_all_execution"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2017
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2022
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2023
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$59;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$59;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->getPrevTipsDlg(I)I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$59;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3, v4}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsDialogByIndex(ILandroid/view/View;)V

    .line 2024
    return-void

    .line 2019
    :cond_0
    const-string v2, "first_tips_all_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2020
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method