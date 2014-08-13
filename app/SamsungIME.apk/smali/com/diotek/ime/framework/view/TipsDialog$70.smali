.class Lcom/diotek/ime/framework/view/TipsDialog$70;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showEmptyShortcutsGuideDialog(Landroid/view/View;)V
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
    .line 2453
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$70;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2456
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 2457
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$70;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2458
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2459
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "first_empty_shortcuts_guide_execution"

    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$70;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/TipsDialog;->access$1100(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2461
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$70;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowEmptyShortcutsGuideConsecutively(Z)V

    .line 2462
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2464
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return v4

    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    move v2, v4

    .line 2459
    goto :goto_0
.end method
