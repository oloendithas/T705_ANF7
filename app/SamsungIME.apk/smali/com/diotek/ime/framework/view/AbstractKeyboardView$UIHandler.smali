.class public Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;
.super Landroid/os/Handler;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIHandler"
.end annotation


# instance fields
.field private mInKeyRepeat:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    .prologue
    .line 4867
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllDismissPreview()V
    .locals 1

    .prologue
    .line 5107
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5108
    return-void
.end method

.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 5169
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyTimers()V

    .line 5171
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllDismissPreview()V

    .line 5172
    return-void
.end method

.method public cancelDismissPreview(Lcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    .prologue
    .line 5103
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5104
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5124
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1602(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    .line 5125
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    .line 5126
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5127
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->initDelteCount()V

    .line 5128
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    .prologue
    .line 5162
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    .line 5163
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    .line 5164
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    .line 5165
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelTextDeleteAllTimer()V

    .line 5166
    return-void
.end method

.method public cancelLongPressSplitMoveTimer()V
    .locals 1

    .prologue
    .line 5158
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5159
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    .prologue
    .line 5154
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5155
    return-void
.end method

.method public cancelTextDeleteAllTimer()V
    .locals 1

    .prologue
    .line 5120
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5121
    return-void
.end method

.method public dismissAllPreview(J)V
    .locals 4
    .param p1, "delay"    # J

    .prologue
    .line 5084
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5085
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5086
    .local v0, "childCount":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5087
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5088
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 5089
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_0

    .line 5092
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInvisiblePreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 5093
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInvisiblePreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5100
    :cond_1
    return-void
.end method

.method public dismissPreview(JLcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "tracker"    # Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    .prologue
    .line 5080
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5081
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4873
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    .line 4875
    .local v7, "tracker":Lcom/diotek/ime/framework/view/tracker/PointerTracker;
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 5040
    :cond_0
    :goto_0
    return-void

    .line 4877
    :sswitch_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawHoverKey(I)V

    goto :goto_0

    .line 4880
    :sswitch_1
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mHoverView:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4891
    :sswitch_2
    if-eqz v7, :cond_0

    .line 4895
    iget-object v3, v7, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->preview:Landroid/widget/TextView;

    .line 4896
    .local v3, "multiPreviewText":Landroid/widget/TextView;
    iget-object v2, v7, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->keyPressed:Landroid/widget/TextView;

    .line 4897
    .local v2, "multiKeypreviewText":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/TextView;

    move-result-object v6

    .line 4898
    .local v6, "singlePreviewText":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewKeyTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/TextView;

    move-result-object v5

    .line 4902
    .local v5, "singleKeypreviewText":Landroid/widget/TextView;
    const/16 v8, 0x8

    .line 4903
    .local v8, "visibility":I
    iget v9, v7, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerId:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->IsMultiTouchPreviewEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 4904
    :cond_1
    const/4 v8, 0x4

    .line 4906
    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->IsMultiTouchPreviewEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4907
    if-eqz v2, :cond_3

    .line 4908
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4910
    :cond_3
    if-eqz v3, :cond_0

    .line 4911
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4914
    :cond_4
    if-eqz v5, :cond_5

    .line 4915
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4917
    :cond_5
    if-eqz v6, :cond_0

    .line 4918
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4969
    .end local v2    # "multiKeypreviewText":Landroid/widget/TextView;
    .end local v3    # "multiPreviewText":Landroid/widget/TextView;
    .end local v5    # "singleKeypreviewText":Landroid/widget/TextView;
    .end local v6    # "singlePreviewText":Landroid/widget/TextView;
    .end local v8    # "visibility":I
    :sswitch_3
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4971
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4972
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v9

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getMultiDirection()I

    move-result v0

    .line 4973
    .local v0, "direction":I
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->onDownKeyEvent(I)V

    .line 4974
    const/16 v4, 0x78

    .line 4975
    .local v4, "repeatPointing":I
    const/16 v9, 0x13

    if-eq v0, v9, :cond_6

    const/16 v9, 0x14

    if-ne v0, v9, :cond_7

    .line 4977
    :cond_6
    const/16 v4, 0xfa

    .line 4978
    :cond_7
    int-to-long v9, v4

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v9, v10, v11, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    .line 4980
    .end local v0    # "direction":I
    .end local v4    # "repeatPointing":I
    :cond_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4981
    .local v1, "keyIndex":I
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isBackspaceKey(I)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 4982
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4984
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, -0x5

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    .line 4987
    :cond_9
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v10, 0x1

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v9, v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1602(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    .line 4988
    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->repeatKey(I)V

    .line 4989
    const-wide/16 v9, 0x32

    invoke-virtual {p0, v9, v10, v1, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    .line 4994
    .end local v1    # "keyIndex":I
    :sswitch_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    .line 4996
    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isHwrTracker()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4997
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    new-instance v10, Landroid/graphics/Point;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getHwrDownPointX()I

    move-result v11

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getHwrDownPointY()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->onHwrPanelLongPressed(Landroid/graphics/Point;)Z

    goto/16 :goto_0

    .line 5000
    :cond_a
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 5001
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v9

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getMultiDirection()I

    move-result v0

    .line 5002
    .restart local v0    # "direction":I
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->onDownKeyEvent(I)V

    .line 5003
    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->noUseUpdateKey()V

    .line 5004
    const-wide/16 v9, 0x32

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v9, v10, v11, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    .line 5006
    .end local v0    # "direction":I
    :cond_b
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->openMultiTouchPopupIfRequired(ILcom/diotek/ime/framework/view/tracker/PointerTracker;)Z
    invoke-static {v9, v10, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;ILcom/diotek/ime/framework/view/tracker/PointerTracker;)Z

    goto/16 :goto_0

    .line 5011
    :sswitch_5
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setMovableMode(Z)V

    .line 5012
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    .line 5013
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    .line 5014
    const-wide/16 v9, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    goto/16 :goto_0

    .line 5017
    :sswitch_6
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->deleteAllTextInEditor()V

    goto/16 :goto_0

    .line 4875
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x12 -> :sswitch_5
        0x1e -> :sswitch_0
        0x1f -> :sswitch_1
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public invalidateHoverKey(I)V
    .locals 3
    .param p1, "keyIndex"    # I

    .prologue
    const/16 v2, 0x1e

    .line 5175
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5176
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    .line 5183
    :goto_0
    return-void

    .line 5180
    :cond_0
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5181
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5182
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public invisibleHoverPopup()V
    .locals 3

    .prologue
    .line 5186
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mHoverPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5187
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5189
    :cond_0
    return-void
.end method

.method public isInKeyRepeat()Z
    .locals 1

    .prologue
    .line 5131
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public restartLongPressSplitMoveTimer()V
    .locals 2

    .prologue
    .line 5135
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5136
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressSplitMoveTimer(J)V

    .line 5137
    :cond_0
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 2
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    .prologue
    .line 5111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    .line 5112
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5113
    return-void
.end method

.method public startLongPressSplitMoveTimer(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    const/16 v1, 0x12

    .line 5147
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5148
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5149
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5151
    :cond_0
    return-void
.end method

.method public startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 2
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    .prologue
    const/4 v1, 0x4

    .line 5140
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiTouch:Z
    invoke-static {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1900(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5141
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5142
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5144
    :cond_0
    return-void
.end method

.method public startTextDeleteAllTimer(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 5116
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5117
    return-void
.end method
