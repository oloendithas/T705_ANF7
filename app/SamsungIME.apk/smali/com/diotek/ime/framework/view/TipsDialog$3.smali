.class Lcom/diotek/ime/framework/view/TipsDialog$3;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showPinchZoomGuideDialog(Landroid/view/View;)V
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
    .line 226
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # setter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z
    invoke-static {v2, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->access$102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z

    .line 231
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowZoomPinchGuideConsecutively(Z)V

    .line 232
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "ENABLE_TRACE"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    .local v0, "isEnableTracePopup":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getDontShowTraceGuideConsecutively()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->showTraceGuideDialog(Landroid/view/View;)V

    .line 242
    .end local v0    # "isEnableTracePopup":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 232
    goto :goto_0

    .line 238
    .restart local v0    # "isEnableTracePopup":Z
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$3;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showTraceGuidePopupMessage()V

    goto :goto_1
.end method
