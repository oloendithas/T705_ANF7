.class public abstract Lcom/diotek/ime/framework/view/AbstractViewController;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/ViewController;


# static fields
.field public static final ONE_HAND_LEFT_SET:I = 0x1

.field public static final ONE_HAND_OFF:I = 0x0

.field public static final ONE_HAND_RIGHT_SET:I = 0x2


# instance fields
.field private mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

.field protected mContext:Landroid/content/Context;

.field private mCurrentFrameLayout:Landroid/widget/FrameLayout;

.field private mCurrentLayout:Landroid/widget/LinearLayout;

.field protected mCurrentThaiVowelPageNum:I

.field private mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

.field private mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

.field private mFloatingPhonepadView:Landroid/widget/FrameLayout;

.field protected mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsKorMode:Z

.field protected mIsTabletMode:Z

.field private mOneHandDimView:Landroid/widget/ImageView;

.field private mOneHandLeftView:Landroid/widget/ImageView;

.field private mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

.field private mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

.field private mOneHandRightView:Landroid/widget/ImageView;

.field private mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

.field private mOneHandRightViewLayout:Landroid/widget/LinearLayout;

.field private mOneHandViewClicked:Z

.field private mPhonepadView:Landroid/widget/FrameLayout;

.field private mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

.field private mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

.field private mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

.field private mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

.field private mPrevSpaceStatus:Z

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

.field private mSplitLeftView:Landroid/widget/FrameLayout;

.field private mSplitRightView:Landroid/widget/FrameLayout;

.field private mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

.field private mVOHWRKeypadView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 63
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 64
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 65
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 67
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 76
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    .line 78
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .line 79
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    .line 80
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 81
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 82
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 83
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    .line 84
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    .line 85
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    .line 86
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    .line 88
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 89
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 90
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 91
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 92
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 93
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    .line 95
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .line 96
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    .line 98
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    .line 100
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    .line 101
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    .line 102
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    .line 104
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    .line 1827
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    .line 1828
    new-instance v0, Lcom/diotek/ime/framework/view/AbstractViewController$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/AbstractViewController$2;-><init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    .line 1850
    new-instance v0, Lcom/diotek/ime/framework/view/AbstractViewController$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/AbstractViewController$3;-><init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    .line 304
    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/AbstractViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    return p1
.end method

.method private getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "keyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    const/4 v3, 0x0

    .line 2100
    if-nez p2, :cond_1

    .line 2115
    :cond_0
    :goto_0
    return-object v3

    .line 2104
    :cond_1
    const/4 v0, 0x0

    .line 2105
    .local v0, "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 2106
    .local v2, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v4, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_2

    .line 2107
    move-object v0, v2

    .line 2112
    .end local v2    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_3
    if-eqz v0, :cond_0

    .line 2115
    iget-object v3, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private isNeedSpaceUpdate()Z
    .locals 2

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentSpaceStatusSuggestion()Z

    move-result v0

    .line 1251
    .local v0, "currentSpaceStatus":Z
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrevSpaceStatus:Z

    if-eq v0, v1, :cond_0

    .line 1252
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrevSpaceStatus:Z

    .line 1253
    const/4 v1, 0x1

    .line 1256
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeNewView()Landroid/view/View;
    .locals 25

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "NOT_CREATE_NEW_KEYBOARDVIEW"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    .line 456
    .local v4, "createNewView":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v20

    if-eqz v20, :cond_18

    :cond_0
    const/4 v11, 0x1

    .line 457
    .local v11, "isSplitAndFloating":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v19

    .line 458
    .local v19, "useFullScreesn":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v18

    .line 459
    .local v18, "supportFullScreesn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getSystemHandAdaptableOperationSettingValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    const/4 v3, 0x1

    .line 461
    .local v3, "bHandAadaptable":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    .line 462
    .local v9, "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz v9, :cond_1

    .line 463
    iget v0, v9, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/diotek/ime/framework/repository/EditorStatus;->setInputType(I)V

    .line 465
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setCurrentThaiVowelPageNum(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    .line 470
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 472
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 474
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 476
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    .line 478
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 480
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    .line 482
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 484
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    .line 486
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 488
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    .line 491
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 493
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    .line 496
    :cond_8
    if-eqz v4, :cond_1b

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 499
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 508
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 510
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    .line 513
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 515
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    .line 516
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    .line 517
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    .line 518
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    .line 519
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 522
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    .line 525
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    .line 528
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    .line 531
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    .line 535
    :cond_f
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 536
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 537
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 538
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 542
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .line 545
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->hideFullscreenHwrPanel()V

    .line 547
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    .line 550
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 552
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 555
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    .line 557
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 560
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    .line 562
    .local v10, "inputMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 563
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_1d

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    .line 836
    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setPairView(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setIsLeftPopupKeyboard(Z)V

    .line 841
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setPairView(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    .line 845
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v20

    if-eqz v20, :cond_48

    .line 846
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_46

    .line 847
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    .line 848
    .local v12, "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 851
    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 852
    .local v13, "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 855
    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v10, v0, :cond_44

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 860
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_45

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 863
    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f08001e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 996
    .end local v12    # "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :cond_17
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v20

    if-eqz v20, :cond_55

    .line 997
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_53

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    .line 1055
    :goto_6
    return-object v20

    .line 456
    .end local v3    # "bHandAadaptable":Z
    .end local v9    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v10    # "inputMethod":I
    .end local v11    # "isSplitAndFloating":Z
    .end local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    .end local v18    # "supportFullScreesn":Z
    .end local v19    # "useFullScreesn":Z
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 459
    .restart local v11    # "isSplitAndFloating":Z
    .restart local v18    # "supportFullScreesn":Z
    .restart local v19    # "useFullScreesn":Z
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 500
    .restart local v3    # "bHandAadaptable":Z
    .restart local v9    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 502
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_2

    .line 505
    :cond_1b
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_2

    .line 574
    .restart local v10    # "inputMethod":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRFloatingKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    .line 583
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    .line 588
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getVOHWRKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    .line 592
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_20

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRFloatingKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    .line 599
    :cond_20
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_22

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_21

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    .line 609
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCNFloatingKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 624
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v20

    if-eqz v20, :cond_36

    .line 625
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v20

    if-eqz v20, :cond_2b

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_23

    if-eqz v10, :cond_23

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_23

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_2b

    .line 630
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_2a

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOneHandCNKeyboardViewRscId()I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    .line 634
    if-eqz v3, :cond_28

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOeHandCNPhonepadViewRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 648
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v20, v0

    if-nez v20, :cond_24

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v20

    if-eqz v20, :cond_29

    .line 650
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    .line 661
    :cond_24
    :goto_8
    if-eqz v11, :cond_26

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_25

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_26

    .line 664
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 674
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_27

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 677
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto/16 :goto_3

    .line 638
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 652
    :cond_29
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_8

    .line 656
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCNKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_8

    .line 685
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_33

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOneHandKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    .line 691
    if-eqz v3, :cond_31

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    .line 702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v20, v0

    if-nez v20, :cond_2c

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v20

    if-eqz v20, :cond_32

    .line 704
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    .line 717
    :cond_2c
    :goto_a
    if-eqz v11, :cond_2e

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_2d

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_2e

    .line 719
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 725
    :cond_2e
    if-eqz v18, :cond_14

    if-eqz v19, :cond_14

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_14

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_35

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    .line 736
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_30

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_2f

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    .line 740
    :cond_2f
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 742
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getFullHwrPanelViewRscId()I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    goto/16 :goto_3

    .line 695
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 706
    :cond_32
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_a

    .line 709
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_34

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_a

    .line 714
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_a

    .line 731
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_b

    .line 746
    :cond_36
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 747
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-nez v20, :cond_37

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_40

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_3c

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 763
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/diotek/ime/framework/view/AbstractViewController$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController$1;-><init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    .line 774
    if-eqz v3, :cond_3e

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    .line 785
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v20, v0

    if-nez v20, :cond_37

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v20

    if-eqz v20, :cond_3f

    .line 787
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    .line 805
    :cond_37
    :goto_e
    if-eqz v11, :cond_39

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_38

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_39

    .line 807
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 815
    :cond_39
    if-eqz v18, :cond_14

    if-eqz v19, :cond_14

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_14

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_43

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    .line 825
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3b

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_3a

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    .line 829
    :cond_3a
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 831
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getFullHwrPanelViewRscId()I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    goto/16 :goto_3

    .line 755
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v20

    if-eqz v20, :cond_3d

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOneHandKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandTalkBackDimView(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    goto/16 :goto_c

    .line 759
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOneHandKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_c

    .line 778
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    .line 789
    :cond_3f
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_e

    .line 792
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_42

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputModeForVO()Z

    move-result v20

    if-eqz v20, :cond_41

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 798
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_e

    .line 796
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_10

    .line 800
    :cond_42
    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_37

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_e

    .line 821
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_f

    .line 858
    .restart local v12    # "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .restart local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    goto/16 :goto_4

    .line 867
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 869
    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const v21, 0x7f08001e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    move/from16 v20, v0

    const/16 v21, 0x780

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move/from16 v20, v0

    const/16 v21, 0x438

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 877
    .end local v12    # "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v6

    .line 878
    .local v6, "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v21

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v22

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    .line 881
    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 882
    .restart local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    move/from16 v20, v0

    const/16 v21, 0x780

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move/from16 v20, v0

    const/16 v21, 0x438

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_47

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->setPadding(IIII)V

    .line 886
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    goto/16 :goto_5

    .line 888
    .end local v6    # "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_49

    .line 890
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    .line 891
    .restart local v12    # "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 894
    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 895
    .restart local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 902
    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 906
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    check-cast v8, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .line 907
    .local v8, "hwrKeyboardView":Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
    new-instance v7, Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-direct {v7}, Lcom/diotek/ime/framework/view/event/HwrActionListener;-><init>()V

    .line 908
    .local v7, "hwrActionListener":Lcom/diotek/ime/framework/view/event/HwrActionListener;
    invoke-virtual {v8, v7}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/diotek/ime/framework/view/event/HwrActionListener;)V

    .line 909
    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v17

    .line 910
    .local v17, "rtHwrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_5

    .line 913
    .end local v7    # "hwrActionListener":Lcom/diotek/ime/framework/view/event/HwrActionListener;
    .end local v8    # "hwrKeyboardView":Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
    .end local v12    # "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    .end local v17    # "rtHwrRect":Landroid/graphics/Rect;
    :cond_49
    if-eqz v11, :cond_4e

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_4a

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_4e

    .line 915
    :cond_4a
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    .line 916
    .restart local v12    # "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 919
    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 920
    .restart local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 923
    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v10, v0, :cond_4b

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 928
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 929
    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .line 930
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_4c

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_5

    .line 926
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    goto :goto_11

    .line 932
    :cond_4c
    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v10, v0, :cond_4d

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_5

    .line 935
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_5

    .line 937
    .end local v12    # "keyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    :cond_4e
    if-eqz v18, :cond_4f

    if-eqz v19, :cond_4f

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4f

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v6

    .line 942
    .restart local v6    # "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getFullHwrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    .line 945
    .local v5, "currentHwr":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->init(Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v21

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v22

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    .line 950
    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 951
    .restart local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 954
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 955
    .restart local v8    # "hwrKeyboardView":Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
    new-instance v7, Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-direct {v7}, Lcom/diotek/ime/framework/view/event/HwrActionListener;-><init>()V

    .line 956
    .restart local v7    # "hwrActionListener":Lcom/diotek/ime/framework/view/event/HwrActionListener;
    invoke-virtual {v8, v7}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/diotek/ime/framework/view/event/HwrActionListener;)V

    .line 957
    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v17

    .line 958
    .restart local v17    # "rtHwrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_5

    .line 962
    .end local v5    # "currentHwr":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v6    # "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v7    # "hwrActionListener":Lcom/diotek/ime/framework/view/event/HwrActionListener;
    .end local v8    # "hwrKeyboardView":Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
    .end local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    .end local v17    # "rtHwrRect":Landroid/graphics/Rect;
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v6

    .line 963
    .restart local v6    # "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_50

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 966
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 969
    .local v15, "leftViewParam":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 970
    .local v16, "rightViewParam":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 971
    .local v14, "keyboardViewParam":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v20

    move/from16 v0, v20

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandKeyboardViewWidth()I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    .end local v14    # "keyboardViewParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "leftViewParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "rightViewParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v21

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v22

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    .line 982
    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    .line 983
    .restart local v13    # "keyboardActionListener":Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_52

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 987
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 988
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    check-cast v8, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .line 989
    .restart local v8    # "hwrKeyboardView":Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
    new-instance v7, Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-direct {v7}, Lcom/diotek/ime/framework/view/event/HwrActionListener;-><init>()V

    .line 990
    .restart local v7    # "hwrActionListener":Lcom/diotek/ime/framework/view/event/HwrActionListener;
    invoke-virtual {v8, v7}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/diotek/ime/framework/view/event/HwrActionListener;)V

    .line 991
    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v17

    .line 992
    .restart local v17    # "rtHwrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_5

    .line 1000
    .end local v6    # "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v7    # "hwrActionListener":Lcom/diotek/ime/framework/view/event/HwrActionListener;
    .end local v8    # "hwrKeyboardView":Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
    .end local v17    # "rtHwrRect":Landroid/graphics/Rect;
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_54

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1003
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1007
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_56

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1012
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v20

    if-eqz v20, :cond_5a

    .line 1013
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v20

    if-eqz v20, :cond_5a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_57

    if-nez v10, :cond_5a

    .line 1016
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-nez v20, :cond_59

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_58

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1020
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1022
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1026
    :cond_5a
    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_5b

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_5e

    .line 1029
    :cond_5b
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v20

    if-nez v20, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5d

    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5d

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1033
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1036
    :cond_5e
    if-eqz v18, :cond_5f

    if-eqz v19, :cond_5f

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_5f

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1042
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-nez v20, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_61

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_60

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1046
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1048
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v20

    if-nez v20, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_62

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1051
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_63

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_63

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 1055
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6
.end method


# virtual methods
.method public changeInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 2252
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->dismissPopupKeyboard()V

    .line 2253
    invoke-static {p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 2254
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateKeyboard()V

    .line 2255
    return-void
.end method

.method public changeValidSymbolsPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 1676
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    .line 1677
    return-void
.end method

.method public closeEmoticonView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2216
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 2218
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .line 2219
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_1

    .line 2222
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2223
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 2226
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2227
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 2229
    :cond_2
    return-void
.end method

.method public closeView()V
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    .line 1690
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    .line 1691
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    .line 1693
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    .line 1694
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    .line 1696
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_4

    .line 1697
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    .line 1699
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_5

    .line 1700
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/TipsDialog;->dismissAllDialog()V

    .line 1702
    :cond_5
    return-void
.end method

.method public createPopupCandidateView()V
    .locals 0

    .prologue
    .line 1218
    return-void
.end method

.method public deallocateMem()V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "SamsungIME"

    const-string v2, "deallocateMem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->deallocateMemory()V

    .line 331
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getMiniKeyboard()Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-result-object v0

    .line 332
    .local v0, "mini":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    .line 333
    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local v0    # "mini":Landroid/view/View;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->deallocateMemory()V

    .line 336
    :cond_0
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/TipsDialog;->dismissAllDialog()V

    .line 1543
    :cond_0
    return-void
.end method

.method public dismissPopupCandidate()V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    .line 1709
    :cond_0
    return-void
.end method

.method public dismissPopupKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1581
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 1586
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    .line 1589
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 1590
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1592
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    .line 1593
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 1595
    :cond_3
    return-void
.end method

.method public dismissPopupKeyboardWithoutFloatingAndSplit()V
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 1602
    :cond_0
    return-void
.end method

.method protected abstract getCNFloatingKeyboardViewRscId(I)I
.end method

.method protected abstract getCNKeyboardViewRscId(I)I
.end method

.method public getCandiateView(Z)Landroid/view/View;
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 1200
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1201
    .local v0, "inputMethod":I
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    .line 1202
    .local v1, "isMultiwindowPhone":Z
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .line 1204
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 1206
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setPopupCandidateView()V

    .line 1207
    new-instance v2, Lcom/diotek/ime/framework/view/PopupCandidateView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/diotek/ime/framework/view/PopupCandidateView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    .line 1208
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/PopupCandidateView;->init(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)V

    .line 1209
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    .line 1212
    :goto_0
    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_0
.end method

.method public getCandidatesDisplayedCount()I
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v0, :cond_0

    .line 1270
    const/4 v0, 0x0

    .line 1272
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidatesDisplayedCount()I

    move-result v0

    goto :goto_0
.end method

.method public getChineseLanguageCurrentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 2028
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2029
    .local v0, "inputMethod":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2034
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 2036
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getInputView(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.end method

.method protected abstract getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;
.end method

.method protected abstract getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
.end method

.method public getCurrentThaiVowelPageNum()I
    .locals 1

    .prologue
    .line 1769
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return v0
.end method

.method public getDefaultCandidateList()Ljava/util/ArrayList;
    .locals 7
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
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1751
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_0

    .line 1752
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDefaultCandidateList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1764
    :goto_0
    return-object v4

    .line 1755
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    .line 1756
    .local v2, "isMultiwindowPhone":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1757
    .local v0, "inputMethod":I
    if-eq v0, v6, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    :cond_1
    move v3, v1

    .line 1758
    .local v3, "isPopupKeyboard":Z
    :goto_1
    if-ne v0, v6, :cond_3

    if-eqz v2, :cond_3

    .line 1760
    .local v1, "isFloatingForMultiWindow":Z
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v4, :cond_4

    .line 1761
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDefaultCandidateList()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .end local v1    # "isFloatingForMultiWindow":Z
    .end local v3    # "isPopupKeyboard":Z
    :cond_2
    move v3, v4

    .line 1757
    goto :goto_1

    .restart local v3    # "isPopupKeyboard":Z
    :cond_3
    move v1, v4

    .line 1758
    goto :goto_2

    .line 1764
    .restart local v1    # "isFloatingForMultiWindow":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected abstract getEmoticonLayoutRscId(I)I
.end method

.method protected abstract getEmoticonScrollLayoutRscId()I
.end method

.method public getEmoticonViewHeight()I
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getFloatingEmoticonKeyboardViewRscId(I)I
.end method

.method protected abstract getFloatingHWREmoticonLayoutRscId()I
.end method

.method protected abstract getFullHwrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getFullHwrPanelViewRscId()I
.end method

.method public getFullScreenHwrKeyboardView()Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    return-object v0
.end method

.method protected abstract getHWREmoticonLayoutRscId(I)I
.end method

.method protected abstract getHWRFloatingKeyboardViewRscId(I)I
.end method

.method protected abstract getHWRKeyboardRscId()I
.end method

.method public getHWRKeyboardView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getInputView(Z)Landroid/view/View;
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x7

    const/16 v2, 0x8

    .line 360
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 362
    .local v0, "inputMethod":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 424
    :goto_0
    return-object v1

    .line 372
    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v1, :cond_3

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updatePopupKeyboard()V

    .line 376
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 380
    :cond_3
    if-ne v0, v3, :cond_4

    .line 381
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    .line 382
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 385
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 386
    if-ne v0, v2, :cond_6

    .line 387
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    .line 388
    if-ne v0, v2, :cond_5

    .line 389
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 391
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    goto :goto_0

    .line 394
    :cond_6
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    .line 396
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 398
    :cond_7
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    .line 399
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 401
    :cond_8
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 402
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    .line 403
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 405
    :cond_9
    if-eq v0, v3, :cond_a

    if-ne v0, v2, :cond_d

    .line 407
    :cond_a
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_c

    if-nez p1, :cond_c

    .line 408
    if-ne v0, v2, :cond_b

    .line 409
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    .line 411
    :cond_b
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    goto/16 :goto_0

    .line 414
    :cond_c
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->makeNewView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    .line 416
    :cond_d
    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v1, :cond_e

    if-nez p1, :cond_e

    .line 419
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    goto/16 :goto_0

    .line 420
    :cond_e
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    .line 421
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_0

    .line 424
    :cond_f
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->makeNewView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getKeybaordKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;
.end method

.method protected abstract getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;
.end method

.method protected abstract getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;
.end method

.method protected abstract getKeyboardOneHandTalkBackDimView(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
.end method

.method protected abstract getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;
.end method

.method protected abstract getKeyboardRscId()I
.end method

.method protected abstract getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;
.end method

.method protected abstract getKeyboardViewRscId(I)I
.end method

.method public getLabelFromCurrentView(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 2064
    const/4 v3, 0x0

    .line 2066
    .local v3, "label":Ljava/lang/CharSequence;
    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 2067
    .local v1, "inputMethod":I
    sparse-switch v1, :sswitch_data_0

    .line 2095
    .end local v1    # "inputMethod":I
    :goto_0
    return-object v4

    .line 2069
    .restart local v1    # "inputMethod":I
    :sswitch_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 2070
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2091
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 2093
    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2073
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    :sswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 2074
    .restart local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2075
    goto :goto_1

    .line 2077
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    :sswitch_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 2078
    .restart local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2079
    if-nez v3, :cond_0

    .line 2080
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 2081
    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 2087
    .end local v1    # "inputMethod":I
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "inputMethod":I
    .restart local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    :cond_1
    move-object v4, v3

    .line 2095
    goto :goto_0

    .line 2067
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getLengthOfSpellText()I
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->getLengthOfSpellText()I

    move-result v0

    .line 1301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getOeHandCNPhonepadViewRscId()I
.end method

.method protected abstract getOneHandCNKeyboardViewRscId()I
.end method

.method protected abstract getOneHandKeyboardViewRscId(I)I
.end method

.method protected abstract getPhoneticSpellScrollLayoutRscId()I
.end method

.method public getPhoneticSpellScrollView(Z)Landroid/view/View;
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/16 v3, 0x8

    .line 1324
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1325
    .local v0, "inputMethod":I
    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1326
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    .line 1329
    :cond_0
    if-eqz p1, :cond_2

    .line 1330
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1333
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 1335
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 1337
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    .line 1357
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    return-object v1

    .line 1342
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    .line 1343
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 1345
    :cond_4
    if-eqz p1, :cond_2

    .line 1346
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 1347
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1349
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 1351
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 1353
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method protected abstract getPhoneticSpellScrollViewRscId()I
.end method

.method public getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    return-object v0
.end method

.method public getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    return-object v0
.end method

.method public getSpellView(Z)Landroid/view/View;
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 1289
    if-eqz p1, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    return-object v0
.end method

.method protected abstract getSplitKeyboardViewRscId(Z)I
.end method

.method public getSuggestions()Ljava/util/ArrayList;
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
    .line 1261
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v0, :cond_0

    .line 1262
    const/4 v0, 0x0

    .line 1264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getVOHWRKeyboardViewRscId(I)I
.end method

.method public hideFullscreenHwrPanel()V
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->hideFullscreenHwrPanel()V

    .line 2059
    :cond_0
    return-void
.end method

.method public initHWR()V
    .locals 3

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    .line 2129
    .local v0, "HWRKeyboard":Landroid/widget/FrameLayout;
    if-nez v0, :cond_1

    .line 2136
    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    .line 2133
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2134
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 309
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 312
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 313
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    .line 314
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    .line 316
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 317
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 318
    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/TipsDialog;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    .line 319
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->onInitializeFonts()V

    .line 321
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->onInitializeCustomResources()V

    .line 322
    return-void
.end method

.method public invalidateKey(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    .line 300
    :cond_3
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isAccessibilityEnabled()Z

    move-result v0

    .line 1987
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscoverabilityShown()Z
    .locals 1

    .prologue
    .line 1554
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    .line 1556
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-nez v0, :cond_0

    .line 1557
    const/4 v0, 0x0

    .line 1559
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableOneHandKeypad()Z
    .locals 1

    .prologue
    .line 1939
    const/4 v0, 0x0

    return v0
.end method

.method public isInRepeatKey()Z
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isInRepeatKey()Z

    move-result v0

    .line 2124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardOnScreen()Z
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v0

    .line 1972
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardView()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardView()Z

    move-result v0

    .line 1847
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOneHandKeypadRightSet()Z
    .locals 3

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_ONE_HAND_RIGHT_SET"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPopupWindowShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1734
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1735
    .local v0, "inputMethod":I
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 1736
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return v1

    .line 1736
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v1

    goto :goto_0

    .line 1737
    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    .line 1738
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1739
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1738
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1744
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v1

    goto :goto_0
.end method

.method public isSpellViewShown()Z
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->isSpellViewShowing()Z

    move-result v0

    .line 1318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolPopupKeyboardOnScreen()Z
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isSymbolPopupKeyboardOnScreen()Z

    move-result v0

    .line 1980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkbackEnabled()Z
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTalkbackEnabled()Z

    move-result v0

    .line 1994
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v0

    .line 2000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextSymbolsPage()V
    .locals 4

    .prologue
    .line 1657
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 1658
    .local v0, "page":I
    add-int/lit8 v0, v0, 0x1

    .line 1659
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    .line 1660
    return-void
.end method

.method public onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 0
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    .line 1406
    return-void
.end method

.method protected abstract onInitializeCustomResources()V
.end method

.method protected onInitializeFonts()V
    .locals 0

    .prologue
    .line 1605
    return-void
.end method

.method public onMagnifyStateChanged(Z)V
    .locals 1
    .param p1, "magnified"    # Z

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->changeInvisiblePopupLayoutType(Z)V

    .line 2236
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->changePopupMiniKeyboardWindowLayoutType(Z)V

    .line 2239
    :cond_0
    if-eqz p1, :cond_1

    .line 2240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->changeInputMode(I)V

    .line 2242
    :cond_1
    return-void
.end method

.method public prevSymbolsPage()V
    .locals 4

    .prologue
    .line 1664
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 1665
    .local v0, "page":I
    add-int/lit8 v0, v0, -0x1

    .line 1666
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    .line 1667
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 340
    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 341
    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 342
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellViewShown(Z)V

    .line 344
    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    .line 349
    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 351
    :cond_1
    return-void
.end method

.method public releaseAllKeyPressed()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    .line 2143
    :cond_0
    return-void
.end method

.method public releaseCandidateView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1221
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .line 1222
    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    .line 1223
    return-void
.end method

.method public resetMultitap()V
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    .line 1801
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    .line 1803
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    .line 1804
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    .line 1806
    :cond_3
    return-void
.end method

.method public resetSymbolsPage()V
    .locals 1

    .prologue
    .line 1671
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    .line 1672
    return-void
.end method

.method public sendTalkbackDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->sendTalkbackDescription(Ljava/lang/String;)V

    .line 2173
    :cond_0
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;Z)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "isHover"    # Z

    .prologue
    .line 2163
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    .line 2164
    .local v0, "inputView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2165
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2167
    :cond_0
    return-void
.end method

.method public setCurrentThaiVowelPageNum(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 1774
    iput p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    .line 1775
    return-void
.end method

.method public setEmoticonCategory(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const v4, 0x7f0d030c

    const v2, 0x7f080017

    .line 2188
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v1, :cond_1

    .line 2189
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v1, p1, p2}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->setEmoticonCategory(Ljava/util/ArrayList;I)V

    .line 2190
    const/4 v0, 0x0

    .line 2191
    .local v0, "NoRecentEmoticonText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 2192
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 2198
    .restart local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2199
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v2, "ROBOTO_KEYPAD_MEDIUM"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2200
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getLatestEmoticonSize()I

    move-result v1

    if-nez v1, :cond_4

    .line 2201
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2202
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2203
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2204
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->sendTalkbackDescription(Ljava/lang/String;)V

    .line 2212
    .end local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-void

    .line 2193
    .restart local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 2194
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    goto :goto_0

    .line 2195
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 2196
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "NoRecentEmoticonText":Landroid/widget/TextView;
    goto :goto_0

    .line 2207
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2208
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1826
    :cond_0
    return-void
.end method

.method public setOneHandBgDim(Z)V
    .locals 2
    .param p1, "isDim"    # Z

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2178
    if-eqz p1, :cond_1

    .line 2179
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOneHandLayoutShown()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1869
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_1

    .line 1870
    const/4 v1, 0x0

    .line 1871
    .local v1, "option":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1872
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1873
    const/4 v1, 0x2

    .line 1881
    :goto_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    if-eqz v2, :cond_0

    .line 1882
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 1883
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1884
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "EMOTICON_CURRENT_CATEGORY"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 1885
    .local v0, "category":I
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    .line 1889
    .end local v0    # "category":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    .line 1891
    .end local v1    # "option":I
    :cond_1
    return-void

    .line 1875
    .restart local v1    # "option":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1878
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOneHandLayoutShownWithOption(I)V
    .locals 5
    .param p1, "oneHandOption"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1894
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 1895
    packed-switch p1, :pswitch_data_0

    .line 1906
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1907
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1915
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->dismissPopupKeyboard()V

    .line 1916
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1917
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 1920
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->dismissPopupCandidate()V

    .line 1923
    const/4 v0, 0x0

    .line 1924
    .local v0, "isCandidateViewShown":Z
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v1

    .line 1925
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1926
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 1929
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 1930
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1932
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1934
    .end local v0    # "isCandidateViewShown":Z
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 1897
    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1901
    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1902
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "isShown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "phoneticSpellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v3, 0x8

    .line 1362
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1363
    .local v0, "inputMethod":I
    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1364
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    .line 1367
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 1370
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 1372
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    .line 1388
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, p2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    .line 1389
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V

    .line 1390
    if-eqz p2, :cond_2

    .line 1391
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    .line 1393
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateKeyboard()V

    .line 1394
    return-void

    .line 1376
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    .line 1377
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    .line 1379
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    .line 1382
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .line 1384
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 1
    .param p1, "currentLanguageID"    # I

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSecondarySymbolStatus(I)V

    .line 1819
    return-void
.end method

.method public setSuggestions(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1227
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    .line 1228
    .local v0, "isHandwritingMode":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v1, :cond_0

    .line 1229
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .line 1231
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1232
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1234
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v1, :cond_2

    .line 1235
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    .line 1237
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateSpace()V

    .line 1238
    return-void
.end method

.method protected abstract setSymbolPage(I)V
.end method

.method public showDiscoverability(ILandroid/view/View;)V
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "candidateTextView"    # Landroid/view/View;

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V

    .line 1550
    :cond_0
    return-void
.end method

.method public showEmptyShortcutsGuideDialog()V
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showEmptyShortcutsGuideDialog(Landroid/view/View;)V

    .line 1568
    :cond_0
    return-void
.end method

.method public showFullscreenHwrPanel()V
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->showFullscreenHwrPanel()V

    .line 2045
    :cond_0
    return-void
.end method

.method public showGestureGuideDialog()V
    .locals 5

    .prologue
    .line 1430
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v2, :cond_0

    .line 1433
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1434
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1435
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->hideFullscreenHwrPanel()V

    .line 1436
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->showGestureGuideDialog(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1438
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showHalfFullWidthSwitchDialog()V
    .locals 2

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showHalfFullWidthSwitchDialog(Landroid/view/View;)V

    .line 2051
    :cond_0
    return-void
.end method

.method public showLanguageSelectDialog()V
    .locals 6

    .prologue
    const v5, 0x656e4742

    .line 1410
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_1

    .line 1411
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setInputLanguage(I)V

    .line 1412
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1415
    .local v0, "inputMethod":I
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 1417
    .local v1, "isSplitAndFloating":Z
    :goto_1
    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    :cond_3
    if-eqz v1, :cond_0

    .line 1419
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    .line 1420
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setInputLanguage(I)V

    .line 1422
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V

    goto :goto_0

    .line 1415
    .end local v1    # "isSplitAndFloating":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public showModeChangePopupKeyboard()V
    .locals 2

    .prologue
    .line 1779
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1781
    .local v0, "inputMethod":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    .line 1782
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1783
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_2

    .line 1784
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0

    .line 1786
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    .line 1787
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0
.end method

.method public showOneHandedGuideDialog()V
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showOneHandedGuideDialog(Landroid/view/View;)V

    .line 1517
    :cond_0
    return-void
.end method

.method public showPenDetectionGuideDialog()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showPenDetectionGuideDialog(Landroid/view/View;)V

    .line 1524
    :cond_0
    return-void
.end method

.method public showPinchZoomGuideDialog()V
    .locals 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showPinchZoomGuideDialog(Landroid/view/View;)V

    .line 1451
    :cond_0
    return-void
.end method

.method public showSwiftkeyGuideDialog()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showSwiftkeyGuideDialog(Landroid/view/View;)V

    .line 1476
    :cond_0
    return-void
.end method

.method public showSwiftkeyRemoveTermDialog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "term"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1488
    .local v0, "inputMethod":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_1

    .line 1489
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/diotek/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_0

    .line 1491
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/diotek/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    goto :goto_0
.end method

.method public showSymbolPopupKeyboard()V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z

    goto :goto_0
.end method

.method public showTipsDialogByIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsDialogByIndex(ILandroid/view/View;)V

    .line 2007
    :cond_0
    return-void
.end method

.method public showTipsHwrInstallGuideDialog()V
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsHwrInstallGuideDialog(Landroid/view/View;)V

    .line 2025
    :cond_0
    return-void
.end method

.method public showTipsOneHandedGuideDialog()V
    .locals 2

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsOneHandedGuideDialog(Landroid/view/View;)V

    .line 2019
    :cond_0
    return-void
.end method

.method public showTipsSwiftkeyGuideDialog()V
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsSwiftkeyGuideDialog(Landroid/view/View;)V

    .line 2013
    :cond_0
    return-void
.end method

.method public showTraceGuideDialog()V
    .locals 6

    .prologue
    .line 1455
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v3, :cond_1

    .line 1458
    :try_start_0
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1459
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_TutorialPopupType"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, "tutorialPopupType":Ljava/lang/String;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "ONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1461
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/TipsDialog;->showTraceGuideDialog(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "tutorialPopupType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1463
    :catch_0
    move-exception v0

    .line 1465
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showXt9PersonalizerAttentionDialog()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showXt9PersonalizerAttentionDialog(Landroid/view/View;)V

    .line 1483
    :cond_0
    return-void
.end method

.method public showXt9_9RemoveTermDialog(Ljava/lang/String;I)V
    .locals 8
    .param p1, "term"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1497
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v5, :cond_0

    .line 1498
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5, p1, p2, v6}, Lcom/diotek/ime/framework/view/TipsDialog;->showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    .line 1502
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    .line 1503
    .local v2, "isMultiwindowPhone":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1504
    .local v0, "inputMethod":I
    if-eq v0, v7, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    :cond_1
    move v3, v1

    .line 1505
    .local v3, "isPopupKeyboard":Z
    :goto_0
    if-ne v0, v7, :cond_4

    if-eqz v2, :cond_4

    .line 1507
    .local v1, "isFloatingForMultiWindow":Z
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v4, :cond_2

    .line 1508
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4, p1, p2, v5}, Lcom/diotek/ime/framework/view/TipsDialog;->showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    .line 1510
    :cond_2
    return-void

    .end local v1    # "isFloatingForMultiWindow":Z
    .end local v3    # "isPopupKeyboard":Z
    :cond_3
    move v3, v4

    .line 1504
    goto :goto_0

    .restart local v3    # "isPopupKeyboard":Z
    :cond_4
    move v1, v4

    .line 1505
    goto :goto_1
.end method

.method public update()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    .line 122
    :cond_3
    return-void
.end method

.method public updateIndianLang()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0xf

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    .line 143
    sget-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    .line 148
    .local v2, "repository":Lcom/diotek/ime/framework/repository/Repository;
    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "language":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 152
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 153
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 154
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 155
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 156
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 157
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 160
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 161
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 162
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 163
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 164
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 165
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 167
    const/high16 v3, 0x74610000

    if-eq v1, v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 169
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 170
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 171
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    .line 175
    .end local v1    # "language":I
    .end local v2    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 177
    .local v0, "inputMethod":I
    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 180
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 181
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 182
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 185
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 186
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 187
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 188
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 189
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 192
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 193
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 194
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 195
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 196
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 197
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 198
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 199
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 200
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 201
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    .line 207
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    .line 212
    .restart local v2    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 214
    .restart local v1    # "language":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_4

    const-string v3, "IS_LANDSCAPE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    if-nez v3, :cond_4

    .line 216
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 217
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 218
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 219
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 222
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 223
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 224
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 225
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 226
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 229
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 230
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 231
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 232
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 233
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 234
    const/high16 v3, 0x74610000

    if-ne v1, v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 237
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 240
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 241
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 242
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 243
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 244
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    .line 247
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 248
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 249
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 250
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 251
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 254
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 255
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 256
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 257
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 258
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 259
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 260
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 261
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 262
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 265
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 266
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 267
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 268
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 269
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 270
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 271
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 272
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 273
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 274
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 275
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 276
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 279
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 280
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0
.end method

.method public updateIndianVowelRow()V
    .locals 3

    .prologue
    .line 125
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const/high16 v2, 0x656e0000

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 129
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 130
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 131
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 132
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 133
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 134
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 135
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 136
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 137
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public updateKeyboard()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1067
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    .line 1068
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 1069
    .local v2, "inputMethod":I
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 1072
    .local v3, "inputRange":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v8

    .line 1073
    .local v8, "prevInputMethod":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v4

    .line 1074
    .local v4, "isEnableHWR":Z
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v12

    if-nez v12, :cond_3

    if-eqz v4, :cond_3

    move v5, v10

    .line 1075
    .local v5, "isHWRInPassword":Z
    :goto_0
    if-ne v8, v2, :cond_0

    if-ne v2, v14, :cond_1

    if-eqz v5, :cond_1

    .line 1077
    :cond_0
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13, v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 1078
    if-nez v5, :cond_1

    .line 1079
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 1082
    :cond_1
    const/4 v12, 0x7

    if-ne v2, v12, :cond_7

    .line 1083
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v12, :cond_4

    .line 1149
    :cond_2
    :goto_1
    return-void

    .end local v5    # "isHWRInPassword":Z
    :cond_3
    move v5, v11

    .line 1074
    goto :goto_0

    .line 1086
    .restart local v5    # "isHWRInPassword":Z
    :cond_4
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitLeftKeyboardWidth()I

    move-result v7

    .line 1087
    .local v7, "leftWidth":I
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitRightKeyboardWidth()I

    move-result v9

    .line 1088
    .local v9, "rightWidth":I
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 1089
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    .line 1090
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v12

    invoke-interface {v10, v7, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    .line 1091
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 1092
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    .line 1093
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v12

    invoke-interface {v10, v9, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    .line 1094
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    invoke-interface {v10, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1096
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    .line 1097
    .local v6, "keyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v6, :cond_5

    .line 1098
    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitLeftWidth(I)V

    .line 1099
    invoke-virtual {v6, v9}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitRightWidth(I)V

    .line 1100
    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateKeyboard()V

    .line 1142
    .end local v6    # "keyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    .end local v7    # "leftWidth":I
    .end local v9    # "rightWidth":I
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    if-eq v3, v10, :cond_2

    .line 1143
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget v10, v10, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    const/16 v12, 0x780

    if-ne v10, v12, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget v10, v10, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    const/16 v12, 0x438

    if-ne v10, v12, :cond_6

    .line 1144
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1147
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->initHWR()V

    goto/16 :goto_1

    .line 1102
    :cond_7
    if-ne v2, v14, :cond_8

    .line 1103
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_2

    .line 1106
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    .line 1107
    .local v1, "currentPopupKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 1108
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    .line 1109
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v1}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1110
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v12

    iget-object v13, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v13

    invoke-interface {v10, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    .line 1112
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    .line 1113
    .restart local v6    # "keyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v6, :cond_5

    .line 1114
    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateKeyboard()V

    goto :goto_2

    .line 1116
    .end local v1    # "currentPopupKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .end local v6    # "keyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_8
    const/4 v10, 0x4

    if-ne v2, v10, :cond_9

    .line 1117
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v10, :cond_2

    .line 1120
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    .line 1121
    .local v0, "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v10, v0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 1122
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1123
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v12

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v13

    invoke-interface {v10, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto/16 :goto_2

    .line 1126
    .end local v0    # "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :cond_9
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_2

    .line 1129
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    .line 1130
    .restart local v0    # "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 1131
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1132
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v12

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v13

    invoke-interface {v10, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto/16 :goto_2
.end method

.method public updatePhoneticSpell(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1399
    .local p1, "phoneticSpellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    .line 1400
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V

    .line 1401
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    .line 1402
    return-void
.end method

.method public updatePopupKeyboard()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updatePopupKeyboardView()V

    .line 452
    :cond_0
    return-void
.end method

.method public updateSettingValues()V
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    .line 1719
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    .line 1720
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    .line 1722
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    .line 1723
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    .line 1726
    :cond_3
    return-void
.end method

.method public updateShiftState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2146
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2147
    .local v0, "inputMethod":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 2148
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    .line 2150
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 2151
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    .line 2153
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_2

    .line 2154
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    .line 2156
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 2157
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    .line 2159
    :cond_3
    return-void
.end method

.method public updateSpace()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isNeedSpaceUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->invalidateKey(I)V

    .line 1247
    :cond_0
    return-void
.end method

.method public updateSpellView(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "spell"    # Ljava/lang/CharSequence;
    .param p2, "bIsShown"    # Z

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-nez v0, :cond_0

    .line 1280
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellView(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellViewShown(Z)V

    .line 1286
    :cond_1
    return-void
.end method

.method public updateThaiKeyboard(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    .line 1154
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 1156
    .local v2, "inputMethod":I
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1157
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v3, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    .line 1161
    .local v1, "currentPopupKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 1162
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    .line 1163
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1164
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto :goto_0

    .line 1168
    .end local v1    # "currentPopupKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    .line 1171
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    .line 1172
    .local v0, "currentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 1173
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1174
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto :goto_0
.end method

.method public useAnimationOfExpandCandidate()Z
    .locals 3

    .prologue
    .line 2273
    const/4 v0, 0x0

    .line 2275
    .local v0, "retValue":Z
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2281
    :cond_0
    return v0

    .line 2279
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public useAnimationOfMiniKeyboard()Z
    .locals 3

    .prologue
    .line 2261
    const/4 v0, 0x0

    .line 2263
    .local v0, "retValue":Z
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2264
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2269
    :cond_0
    return v0

    .line 2267
    :catchall_0
    move-exception v1

    throw v1
.end method
