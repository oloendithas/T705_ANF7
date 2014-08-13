.class Lcom/diotek/ime/implement/view/candidate/CandidateView$2;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/view/candidate/CandidateView;->getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 224
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v1

    .line 226
    .local v1, "mTipsDialog":Lcom/diotek/ime/framework/view/TipsDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    .line 230
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 231
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$600(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z
    invoke-static {v2, v4}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$702(Lcom/diotek/ime/implement/view/candidate/CandidateView;Z)Z

    .line 258
    :cond_1
    :goto_0
    return v4

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$800(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    .line 237
    .local v0, "isCandidateExpanded":Z
    if-eqz v0, :cond_3

    .line 238
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$900(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    .line 239
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    .line 240
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1000(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1100(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->SearchHanja()V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1200(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    .line 245
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1300(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 246
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1400(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1500(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 248
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1600(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    .line 249
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1800(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->access$1900(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->searchHanjaDirectly(Ljava/lang/String;)V

    .line 254
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateCandidates()V

    .line 255
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->showExpandPopup()V

    goto/16 :goto_0
.end method
