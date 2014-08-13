.class Lcom/diotek/ime/framework/view/TipsDialog$5;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showGestureGuideDialog(Landroid/view/View;)V
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
    .line 325
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$5;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$5;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 331
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$5;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/TipsDialog;->access$400(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "fist_hwr_execution"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$5;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # setter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->access$402(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z

    .line 340
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$5;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowGestureGuideConsecutively(Z)V

    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 342
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$5;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showDlgMsgBox()V

    .line 343
    return-void

    .line 335
    :cond_0
    const-string v2, "fist_hwr_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
