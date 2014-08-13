.class Lcom/diotek/ime/framework/view/TipsDialog$22;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showXt9PersonalizerAttentionDialog(Landroid/view/View;)V
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
    .line 980
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$22;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 983
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$22;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 984
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 985
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_xt9_9_execution"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 986
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 988
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$22;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowXt9PersonalizerAttentionConsecutively(Z)V

    .line 989
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 990
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$22;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    .line 991
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$22;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showDlgMsgBox()V

    .line 992
    return-void
.end method
