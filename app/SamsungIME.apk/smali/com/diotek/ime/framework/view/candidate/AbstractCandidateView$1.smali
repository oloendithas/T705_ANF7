.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;
.super Ljava/lang/Object;
.source "AbstractCandidateView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->showExpandPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

.field final synthetic val$inputMethod:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;I)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iput p2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->val$inputMethod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 236
    .local v6, "me":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_0

    .line 237
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    float-to-int v11, v14

    .line 238
    .local v11, "statusBar":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 239
    .local v5, "inputViewHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v9

    .line 241
    .local v9, "panelHeight":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    sub-int v16, v9, v11

    sub-int v16, v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-virtual {v6, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 243
    .end local v5    # "inputViewHeight":I
    .end local v9    # "panelHeight":I
    .end local v11    # "statusBar":I
    :cond_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 244
    .local v1, "action":I
    const/4 v14, 0x4

    if-ne v1, v14, :cond_8

    .line 245
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_7

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_7

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 247
    .local v3, "expandButton":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 249
    .local v7, "paddingBottom":I
    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 250
    .local v8, "paddingTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v14

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v14, v7

    add-int v2, v14, v8

    .line 252
    .local v2, "buttonHeight":I
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 253
    .local v12, "touchX":F
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 254
    .local v13, "touchY":F
    const/4 v4, 0x0

    .line 256
    .local v4, "expandPopupHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->val$inputMethod:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    .line 258
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 259
    const/4 v4, 0x0

    .line 264
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v14, v12, v14

    if-lez v14, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v14

    int-to-float v14, v14

    cmpg-float v14, v12, v14

    if-gez v14, :cond_3

    int-to-float v14, v4

    sub-float v14, v13, v14

    int-to-float v15, v7

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    int-to-float v14, v4

    sub-float v14, v13, v14

    int-to-float v15, v2

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 270
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 271
    const/4 v14, 0x1

    .line 290
    .end local v2    # "buttonHeight":I
    .end local v3    # "expandButton":Landroid/view/View;
    .end local v4    # "expandPopupHeight":I
    .end local v7    # "paddingBottom":I
    .end local v8    # "paddingTop":I
    .end local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "touchX":F
    .end local v13    # "touchY":F
    :goto_2
    return v14

    .line 239
    .end local v1    # "action":I
    .restart local v5    # "inputViewHeight":I
    .restart local v11    # "statusBar":I
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v9

    goto/16 :goto_0

    .line 261
    .end local v5    # "inputViewHeight":I
    .end local v11    # "statusBar":I
    .restart local v1    # "action":I
    .restart local v2    # "buttonHeight":I
    .restart local v3    # "expandButton":Landroid/view/View;
    .restart local v4    # "expandPopupHeight":I
    .restart local v7    # "paddingBottom":I
    .restart local v8    # "paddingTop":I
    .restart local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12    # "touchX":F
    .restart local v13    # "touchY":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static {v15}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v15

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v4

    goto :goto_1

    .line 273
    :cond_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->val$inputMethod:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    .line 275
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandDismissedByTouchInterceptor(Z)V

    .line 278
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    if-nez v14, :cond_7

    .line 280
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 281
    const/4 v14, 0x1

    goto :goto_2

    .line 284
    .end local v2    # "buttonHeight":I
    .end local v3    # "expandButton":Landroid/view/View;
    .end local v4    # "expandPopupHeight":I
    .end local v7    # "paddingBottom":I
    .end local v8    # "paddingTop":I
    .end local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "touchX":F
    .end local v13    # "touchY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v14, v14, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    .line 286
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 287
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 289
    :cond_8
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 290
    const/4 v14, 0x0

    goto/16 :goto_2
.end method
