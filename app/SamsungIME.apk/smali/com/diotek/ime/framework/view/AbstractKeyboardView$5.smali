.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 2353
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2356
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setIsMiniKeyboardView(Z)V

    .line 2357
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setCandidateDotComPopupKeyboard(Z)V

    .line 2361
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 2362
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetSwipeFlag()V
    invoke-static {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$000(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    .line 2363
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 2364
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 2369
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2366
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$5;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputController;->updateSuggestionForSwiftKey()V

    goto :goto_0
.end method
