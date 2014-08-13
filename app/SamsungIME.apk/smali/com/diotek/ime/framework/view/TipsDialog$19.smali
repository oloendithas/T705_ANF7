.class Lcom/diotek/ime/framework/view/TipsDialog$19;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showPenDetectionGuideDialog(Landroid/view/View;)V
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
    .line 853
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$19;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

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

    .line 856
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$19;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 857
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 859
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$19;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/TipsDialog;->access$800(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    const-string v2, "first_pen_detection_execution"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 861
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 867
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$19;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-class v3, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    .line 869
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$19;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowPenDetectionGuideConsecutively(Z)V

    .line 870
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 871
    return-void

    .line 863
    :cond_0
    const-string v2, "first_pen_detection_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 864
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
