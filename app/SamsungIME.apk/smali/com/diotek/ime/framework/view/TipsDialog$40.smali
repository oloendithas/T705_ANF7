.class Lcom/diotek/ime/framework/view/TipsDialog$40;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showTipsTraceGuideDialog(Landroid/view/View;)V
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
    .line 1530
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$40;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 1533
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 1534
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$40;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # setter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z
    invoke-static {v2, v4}, Lcom/diotek/ime/framework/view/TipsDialog;->access$902(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z

    .line 1535
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$40;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$40;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/view/TipsDialog;->access$900(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->updateTipsPopupCheckBoxStatus(Z)V

    .line 1536
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$40;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1537
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1538
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$40;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/TipsDialog;->access$900(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1539
    const-string v2, "first_tips_all_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1545
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$40;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "IS_POPUP_SHOW"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1547
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return v4

    .line 1542
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "first_tips_all_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
