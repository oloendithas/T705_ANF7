.class public Lcom/diotek/ime/implement/view/candidate/CandidateView;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.source "CandidateView.java"


# instance fields
.field private mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

.field private mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

.field private mDownPoint:Landroid/graphics/Point;

.field private mExpandButton:Landroid/view/View;

.field private mExpandButtonClickListener:Landroid/view/View$OnClickListener;

.field private mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mExpandButtonWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 33
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    .line 34
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    .line 35
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    .line 37
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    .line 40
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 33
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    .line 34
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    .line 35
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    .line 37
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    .line 40
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/inputmode/InputModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    return v0
.end method

.method static synthetic access$702(Lcom/diotek/ime/implement/view/candidate/CandidateView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    return p1
.end method

.method static synthetic access$800(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/view/candidate/CandidateView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 81
    .local v8, "evt":Landroid/view/MotionEvent;
    invoke-super {p0, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .end local v8    # "evt":Landroid/view/MotionEvent;
    :cond_1
    move v0, v9

    .line 85
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;
    .locals 14

    .prologue
    .line 342
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v10, 0x1

    .line 344
    .local v10, "useCandidatePrevNext":Z
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonOnEmailUrlMode()Z

    move-result v9

    .line 345
    .local v9, "useCandidateCustomButton":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v1

    .line 346
    .local v1, "emailMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v8

    .line 347
    .local v8, "urlMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 349
    .local v2, "inputMethod":I
    const/4 v3, 0x0

    .line 350
    .local v3, "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    const/4 v0, 0x0

    .line 351
    .local v0, "candidateCustomButtonLinearLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v11, :cond_0

    .line 352
    const v11, 0x7f08000d

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "candidateCustomButtonLinearLayout":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 353
    .restart local v0    # "candidateCustomButtonLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 356
    :cond_0
    if-eqz v0, :cond_4

    .line 357
    if-eqz v9, :cond_2

    .line 358
    if-nez v8, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 360
    if-eqz v8, :cond_8

    .line 361
    const/16 v11, 0x8

    if-ne v2, v11, :cond_7

    .line 362
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000c

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    .line 377
    .restart local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    :goto_1
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonEnableOnEmailUrlMode(Z)V

    .line 378
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 381
    :cond_2
    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v11

    if-eqz v11, :cond_4

    .line 384
    const/16 v11, 0x8

    if-ne v2, v11, :cond_a

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 385
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000a

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    .line 408
    .restart local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setPrevNextButtonEnable(I)V

    .line 410
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 413
    :cond_4
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_c

    .line 415
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_5
    :goto_3
    return-object v0

    .line 342
    .end local v0    # "candidateCustomButtonLinearLayout":Landroid/widget/LinearLayout;
    .end local v1    # "emailMode":Z
    .end local v2    # "inputMethod":I
    .end local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    .end local v8    # "urlMode":Z
    .end local v9    # "useCandidateCustomButton":Z
    .end local v10    # "useCandidatePrevNext":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 365
    .restart local v0    # "candidateCustomButtonLinearLayout":Landroid/widget/LinearLayout;
    .restart local v1    # "emailMode":Z
    .restart local v2    # "inputMethod":I
    .restart local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    .restart local v8    # "urlMode":Z
    .restart local v9    # "useCandidateCustomButton":Z
    .restart local v10    # "useCandidatePrevNext":Z
    :cond_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000d

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    .restart local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    goto :goto_1

    .line 369
    :cond_8
    const/16 v11, 0x8

    if-ne v2, v11, :cond_9

    .line 370
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030006

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    .restart local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    goto :goto_1

    .line 373
    :cond_9
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030007

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    .restart local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    goto :goto_1

    .line 388
    :cond_a
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000b

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    .line 391
    .restart local v3    # "layout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
    const/16 v11, 0x8

    if-eq v2, v11, :cond_b

    const/4 v11, 0x7

    if-ne v2, v11, :cond_3

    .line 394
    :cond_b
    const/4 v7, 0x0

    .line 395
    .local v7, "popupButtonPaddingTop":I
    const/4 v6, 0x0

    .line 396
    .local v6, "popupButtonPaddingBottom":I
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 397
    .local v4, "originLeftPadding":I
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 399
    .local v5, "originRightPadding":I
    :try_start_0
    const-string v11, "popup_candidate_button_top_padding_size"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v7

    .line 400
    const-string v11, "popup_candidate_button_bottom_padding_size"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v6

    .line 401
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 402
    :catch_0
    move-exception v11

    goto :goto_2

    .line 416
    .end local v4    # "originLeftPadding":I
    .end local v5    # "originRightPadding":I
    .end local v6    # "popupButtonPaddingBottom":I
    .end local v7    # "popupButtonPaddingTop":I
    :cond_c
    if-eqz v0, :cond_5

    .line 417
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method protected getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object v0
.end method

.method public getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 561
    :try_start_0
    const-string v1, "candidate_bg_expand_non_shadow"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 563
    :goto_0
    return-object v1

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .locals 4

    .prologue
    .line 53
    const v2, 0x7f08000e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    .line 54
    .local v0, "candidateLayout":Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 55
    .local v1, "candidateLayoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-object v0

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public getCandidateViewHeight()I
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getExpandButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getExpandButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 67
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getExpandButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateView$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView$3;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    return-object v0
.end method

.method protected getExpandButtonLayout()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const v7, 0x7f090445

    .line 90
    const v5, 0x7f08000f

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 94
    .local v0, "expandButtonLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .line 95
    .local v4, "rightPadding":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 97
    .local v1, "expandButtonLayoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 98
    .local v2, "inputMethod":I
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v5, :cond_1

    .line 99
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 106
    .local v3, "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090444

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    .line 116
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v5, :cond_3

    .line 117
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 118
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 119
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 120
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 132
    :goto_2
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 134
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-object v0

    .line 101
    .end local v3    # "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 111
    .restart local v3    # "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090443

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    goto/16 :goto_1

    .line 122
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 127
    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 128
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 129
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 125
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method protected getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getExpandButtonWidth()I
    .locals 4

    .prologue
    const v3, 0x7f09004d

    const v2, 0x7f09004c

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "buttonWidth":I
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 479
    :goto_0
    return v0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getExpandPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getExpandPopupHeight(I)I
    .locals 5
    .param p1, "lineCount"    # I

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "height":I
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v3, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0905bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 328
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 331
    .local v0, "divisionLineHeight":I
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getExpandPouupMaxLine()I

    move-result v2

    .line 333
    .local v2, "maxLine":I
    if-le p1, v2, :cond_1

    .line 334
    add-int v3, v1, v0

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    .line 336
    :goto_1
    return v3

    .line 325
    .end local v0    # "divisionLineHeight":I
    .end local v2    # "maxLine":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_0

    .line 336
    .restart local v0    # "divisionLineHeight":I
    .restart local v2    # "maxLine":I
    :cond_1
    add-int v3, v1, v0

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    goto :goto_1
.end method

.method protected getExpandPopupWidth()I
    .locals 7

    .prologue
    const v6, 0x7f090036

    .line 282
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 283
    .local v1, "inputMethod":I
    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    .line 285
    :try_start_0
    const-string v5, "split_candidate_view_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 302
    :goto_0
    return v5

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    .line 289
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    .line 290
    const/4 v4, 0x0

    .line 291
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v2

    .line 292
    .local v2, "leftEdge":I
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getFloatingKeyboardRightEdge()I

    move-result v3

    .line 295
    .local v3, "rightEdge":I
    :try_start_1
    const-string v5, "floating_keyboard_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 299
    :goto_1
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    .line 297
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_1

    .line 301
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "leftEdge":I
    .end local v3    # "rightEdge":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    .line 302
    iget v5, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    goto :goto_0
.end method

.method protected getExpandPouupMaxLine()I
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "maxLine":I
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-nez v1, :cond_0

    .line 310
    const/4 v0, 0x5

    .line 316
    :goto_0
    return v0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const/4 v0, 0x4

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getFloatingKeyboardLeftEdge()I
    .locals 2

    .prologue
    .line 495
    :try_start_0
    const-string v1, "floating_keyboard_left_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatingKeyboardRightEdge()I
    .locals 2

    .prologue
    .line 504
    :try_start_0
    const-string v1, "floating_keyboard_right_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 506
    :goto_0
    return v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 512
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 514
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 515
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 516
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 517
    .restart local v1    # "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_0

    .line 519
    const/4 v2, 0x0

    .line 520
    .local v2, "y":I
    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 524
    .end local v2    # "y":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 544
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 550
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    return v3

    .line 526
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 527
    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    if-nez v4, :cond_2

    .line 528
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    goto :goto_0

    .line 530
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 534
    :pswitch_2
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 537
    :pswitch_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 538
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 540
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 550
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 524
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 489
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setExpandButtonImage(Z)V
    .locals 6
    .param p1, "isExpanded"    # Z

    .prologue
    const v5, 0x7f020030

    const v4, 0x7f02002c

    .line 425
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 427
    .local v1, "inputMethod":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 428
    if-eqz p1, :cond_1

    .line 430
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v3, "floating_candidate_button_bg_close_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1    # "inputMethod":I
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v1    # "inputMethod":I
    :catch_0
    move-exception v0

    .line 432
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 437
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v3, "floating_candidate_button_bg_expand_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 438
    :catch_1
    move-exception v0

    .line 439
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 444
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    if-eqz p1, :cond_4

    .line 445
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 446
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    .line 448
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 450
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 451
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    .line 453
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
