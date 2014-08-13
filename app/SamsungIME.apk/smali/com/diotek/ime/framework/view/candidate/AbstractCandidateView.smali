.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateView.java"


# instance fields
.field protected mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

.field private mDisplayedCount:I

.field private mExpandButton:Landroid/view/View;

.field private mExpandButtonLayout:Landroid/view/View;

.field private mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

.field private mExpandCandidatePopup:Landroid/widget/PopupWindow;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsAlreadyDismissExpandPopup:Z

.field protected mIsPopupCandidateView:Z

.field protected mIsSupportOneHanded:Z

.field protected mIsTabletMode:Z

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    .line 39
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    .line 42
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    .line 43
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 44
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 45
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 46
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 47
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    .line 48
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    .line 49
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    .line 50
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    .line 51
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    .line 55
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    .line 39
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    .line 42
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    .line 43
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 44
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 45
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 46
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 47
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    .line 48
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    .line 49
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    .line 50
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    .line 51
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    .line 60
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object v0
.end method

.method private useExpandingAnimationInternal()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->useAnimationOfExpandCandidate()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public dismissExpandPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 385
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 386
    .local v0, "inputMethod":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 388
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    .line 393
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 394
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    .line 395
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setOneHandBgDim(Z)V

    .line 399
    .end local v0    # "inputMethod":I
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    .line 400
    return-void

    .line 390
    .restart local v0    # "inputMethod":I
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto :goto_0
.end method

.method protected abstract getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.end method

.method public abstract getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.end method

.method public abstract getCandidateViewHeight()I
.end method

.method public getCandidates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCandidatesDisplayedCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    return v0
.end method

.method protected abstract getExpandButton()Landroid/view/View;
.end method

.method protected abstract getExpandButtonClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
.end method

.method protected abstract getExpandButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract getExpandButtonWidth()I
.end method

.method protected abstract getExpandPopupBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getExpandPopupHeight(I)I
.end method

.method protected abstract getExpandPopupWidth()I
.end method

.method protected getExpandPopupYPositon()I
    .locals 7

    .prologue
    .line 354
    const/4 v2, 0x0

    .line 357
    .local v2, "popupYPos":I
    :try_start_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getService()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v3

    .line 358
    .local v3, "service":Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 360
    .local v1, "height":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v2, v1, v4

    .line 369
    .end local v1    # "height":I
    .end local v3    # "service":Lcom/diotek/ime/framework/common/AbstractInputMethod;
    :goto_0
    return v2

    .line 363
    .restart local v3    # "service":Lcom/diotek/ime/framework/common/AbstractInputMethod;
    :cond_0
    const/high16 v4, 0x40400000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_0

    .line 365
    .end local v3    # "service":Lcom/diotek/ime/framework/common/AbstractInputMethod;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method protected abstract getExpandPouupMaxLine()I
.end method

.method public abstract getFloatingKeyboardLeftEdge()I
.end method

.method public abstract getFloatingKeyboardRightEdge()I
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 65
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 66
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 67
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 68
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    .line 69
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    .line 72
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 80
    iput v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    .line 81
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v2

    .line 82
    .local v2, "isExpanded":Z
    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    .line 83
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-nez v6, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    .line 85
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v6, :cond_0

    .line 86
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setPopupCandidateLayout()V

    .line 89
    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    if-eqz v6, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    .line 91
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    .line 98
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 99
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_3
    const/4 v3, 0x0

    .line 103
    .local v3, "leftButtonLayoutIsShown":Z
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 104
    .local v0, "ComstomButtonLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    .line 108
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 109
    .local v1, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x4

    if-eq v1, v6, :cond_a

    .line 111
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    .line 116
    :goto_1
    if-eqz v2, :cond_d

    .line 117
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v4, :cond_8

    .line 118
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    .line 120
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    iget v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v4

    if-nez v4, :cond_c

    .line 123
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v4, :cond_6

    .line 124
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    .line 126
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {v4, p1, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCandidates(Ljava/util/ArrayList;I)I

    .line 127
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 128
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 129
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_8
    :goto_2
    return-void

    .end local v1    # "inputMethod":I
    :cond_9
    move v3, v5

    .line 105
    goto :goto_0

    .line 113
    .restart local v1    # "inputMethod":I
    :cond_a
    if-nez v2, :cond_b

    :goto_3
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    goto :goto_1

    :cond_b
    move v4, v5

    goto :goto_3

    .line 134
    :cond_c
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 135
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 140
    :cond_d
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v4, :cond_8

    .line 141
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    .line 143
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 144
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    iget v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_e

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v4

    if-nez v4, :cond_f

    .line 147
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 149
    :cond_f
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected abstract setExpandButtonImage(Z)V
.end method

.method public setPopupCandidateView()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    .line 77
    return-void
.end method

.method public showExpandPopup()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v5, 0x33

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    .line 190
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_1

    .line 195
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    .line 202
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 204
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 206
    :cond_1
    iput-boolean v7, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    .line 209
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_6

    .line 210
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 216
    .local v0, "inputMethod":I
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 220
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 222
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 223
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->useExpandingAnimationInternal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const v3, 0x7f0e0034

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;

    invoke-direct {v3, p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 294
    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    .line 295
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 298
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getCurrentLocationX()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY()I

    move-result v5

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationYTopMargin()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 338
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    .line 339
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-nez v2, :cond_d

    if-eq v0, v9, :cond_d

    .line 341
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    .line 347
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_5

    .line 348
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    .line 349
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    .line 351
    :cond_5
    return-void

    .line 212
    .end local v0    # "inputMethod":I
    :cond_6
    const/4 v0, -0x1

    .line 213
    .restart local v0    # "inputMethod":I
    const-string v2, "SamsungIME"

    const-string v3, "mInputModeManager is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    :cond_7
    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    .line 304
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 307
    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->isRightSide()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 308
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightInitX()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v8}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 313
    :cond_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1, v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v4

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 319
    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-nez v2, :cond_c

    .line 320
    if-ne v0, v9, :cond_a

    .line 321
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 322
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 324
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    const/16 v3, 0x320

    if-ne v2, v3, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_b

    .line 325
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x53

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v7, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 328
    :cond_b
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupYPositon()I

    move-result v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 333
    :cond_c
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 334
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 343
    :cond_d
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto/16 :goto_3

    .line 228
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public udpateContentDescription()V
    .locals 4

    .prologue
    .line 424
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    .line 425
    .local v0, "isCandidateExpanded":Z
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 434
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCandidates()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    .line 162
    return-void
.end method

.method public updateExpandButtonImage(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    .line 420
    return-void
.end method
