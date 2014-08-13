.class Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;
.super Landroid/os/Handler;
.source "AbstractSpellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTimer"
.end annotation


# instance fields
.field private mParentLocation:[I

.field final synthetic this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;


# direct methods
.method private constructor <init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
    .param p2, "x1"    # Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;-><init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)V

    return-void
.end method


# virtual methods
.method cancelShowing()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$100(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 113
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 116
    :cond_0
    invoke-virtual {p0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method postShowFloatingWindow()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 101
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$100(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 104
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
    invoke-static {v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$100(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 105
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
    invoke-static {v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$100(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 106
    invoke-virtual {p0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 121
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v5

    if-nez v5, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 127
    .local v1, "inputMode":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "candidateView":Landroid/view/View;
    const/4 v4, 0x0

    .line 130
    .local v4, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eq v1, v10, :cond_2

    if-ne v1, v11, :cond_3

    .line 132
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v0

    .line 133
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    .line 134
    if-eqz v4, :cond_0

    .line 138
    :cond_3
    if-eqz v0, :cond_0

    .line 142
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 143
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$100(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$100(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 146
    if-ne v1, v10, :cond_6

    .line 147
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->isRightSide()Z

    move-result v2

    .line 148
    .local v2, "isRightSide":Z
    if-eqz v2, :cond_5

    .line 149
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v9

    .line 158
    .end local v2    # "isRightSide":Z
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 160
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v7, v7, v9

    iget-object v8, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v8}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v8}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, 0x1e

    iget-object v9, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 151
    .restart local v2    # "isRightSide":Z
    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v5, v9

    goto :goto_1

    .line 153
    .end local v2    # "isRightSide":Z
    :cond_6
    if-ne v1, v11, :cond_4

    .line 154
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v6, v6, v8

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getCurrentLocationX()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->getSpellViewLeftEdge()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v8

    .line 155
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v6, v6, v9

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v5, v9

    goto/16 :goto_1

    .line 165
    :cond_7
    const/4 v3, 0x0

    .line 166
    .local v3, "parent":Landroid/view/View;
    if-eq v1, v10, :cond_8

    if-ne v1, v11, :cond_9

    .line 167
    :cond_8
    move-object v3, v4

    .line 171
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 174
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v5

    const/16 v6, 0x33

    iget-object v7, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v7, v7, v8

    iget-object v8, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->mParentLocation:[I

    aget v8, v8, v9

    iget-object v9, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 177
    iget-object v5, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto/16 :goto_0

    .line 169
    :cond_9
    move-object v3, v0

    goto :goto_2
.end method
