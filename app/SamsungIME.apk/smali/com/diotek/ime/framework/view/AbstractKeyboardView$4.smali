.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    .prologue
    .line 2283
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    .line 2288
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputController;->changeToKeyboardMode()V

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputController;->changeToNormalKeyboardMode()V

    .line 2292
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_1

    .line 2293
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$4;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    .line 2295
    :cond_1
    return-void
.end method
