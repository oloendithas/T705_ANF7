.class public Lcom/diotek/ime/framework/repository/PropertyItems;
.super Ljava/lang/Object;
.source "PropertyItems.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;


# instance fields
.field private inputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mDefaultSupportLanguages:Ljava/lang/String;

.field private mIsEnableDefaultCandidateview:Z

.field private mIsEnableTracePopupGuide:Z

.field private mIsSupportFullHandwriting:Z

.field private mIsSupportHwrTutorial:Z

.field private mIsSupportMultiTouchPanel:Z

.field private mIsSupportPreview:Z

.field private mIsSupportSpaceLanguageChange:Z

.field private mIsUsingAddtoNumberKeyFirstLine:Z

.field private mIsUsingBoldFontOnMonthEdittext:Z

.field private mIsUsingCandidateButtonOnEmailUrlMode:Z

.field private mIsUsingCandidateButtonPrevNext:Z

.field private mIsUsingChinesePhoneticSpellEffect:Z

.field private mIsUsingDownSwipe:Z

.field private mIsUsingEmoticonPopupOnEnter:Z

.field private mIsUsingExtractUi:Z

.field private mIsUsingLanguageToast:Z

.field private mIsUsingLeftSwipe:Z

.field private mIsUsingMultiFloatingKeyboard:Z

.field private mIsUsingNumberAndSymbolsKeypadType:Z

.field private mIsUsingPhonenumberZeroLongpress:Z

.field private mIsUsingPredictionOnAutocomplete:Z

.field private mIsUsingQuickPopup:Z

.field private mIsUsingRightSwipe:Z

.field private mIsUsingToggleNumberInput:Z

.field private mIsUsingUpSwipe:Z

.field private mIsUsingVietnameseTelex:Z

.field private mPreviewDismissDelay:I

.field private mPreviewShowDelay:I

.field private mRepeatablekeyPreviewDismissDelay:I

.field private mSpaceLanguageChangingThreshold:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private repository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewShowDelay:I

    .line 9
    iput v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewDismissDelay:I

    .line 10
    const/16 v0, 0x64

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mRepeatablekeyPreviewDismissDelay:I

    .line 11
    const/16 v0, 0x500

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowHeight:I

    .line 12
    const/16 v0, 0x320

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowWidth:I

    .line 13
    const/16 v0, 0xa

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mSpaceLanguageChangingThreshold:I

    .line 15
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportMultiTouchPanel:Z

    .line 16
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportPreview:Z

    .line 17
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingQuickPopup:Z

    .line 18
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonPrevNext:Z

    .line 19
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonOnEmailUrlMode:Z

    .line 20
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLeftSwipe:Z

    .line 21
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingUpSwipe:Z

    .line 22
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingRightSwipe:Z

    .line 23
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingDownSwipe:Z

    .line 24
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingEmoticonPopupOnEnter:Z

    .line 25
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPhonenumberZeroLongpress:Z

    .line 26
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingToggleNumberInput:Z

    .line 27
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingMultiFloatingKeyboard:Z

    .line 28
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLanguageToast:Z

    .line 29
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingExtractUi:Z

    .line 30
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportSpaceLanguageChange:Z

    .line 31
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPredictionOnAutocomplete:Z

    .line 32
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportFullHandwriting:Z

    .line 33
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableDefaultCandidateview:Z

    .line 34
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableTracePopupGuide:Z

    .line 35
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingAddtoNumberKeyFirstLine:Z

    .line 36
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingBoldFontOnMonthEdittext:Z

    .line 37
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingVietnameseTelex:Z

    .line 38
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingNumberAndSymbolsKeypadType:Z

    .line 39
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportHwrTutorial:Z

    .line 40
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingChinesePhoneticSpellEffect:Z

    .line 42
    iput-object v2, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mDefaultSupportLanguages:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 45
    iput-object v2, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 50
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/PropertyItems;->init()V

    .line 51
    return-void
.end method

.method public static getDefaultSupportLanguages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 328
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 329
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-object v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mDefaultSupportLanguages:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreviewDismissDelay()I
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 113
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 114
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewDismissDelay:I

    return v0
.end method

.method public static getPreviewShowDelay()I
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 105
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 106
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewShowDelay:I

    return v0
.end method

.method public static getRepeatablekeyPreviewDismissDelay()I
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 121
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 122
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mRepeatablekeyPreviewDismissDelay:I

    return v0
.end method

.method public static getSpaceLanguageChangingThreshold()I
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 360
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 361
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mSpaceLanguageChangingThreshold:I

    return v0
.end method

.method public static getWindowHeight()I
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 137
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 138
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowHeight:I

    return v0
.end method

.method public static getWindowWidth()I
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 129
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 130
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowWidth:I

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 55
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 57
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PREVIEW_SHOW_DELAY"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewShowDelay:I

    .line 59
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PREVIEW_DISMISS_DELAY"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewDismissDelay:I

    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "REPEATABLEKEY_PREVIEW_DISMISS_DELAY"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mRepeatablekeyPreviewDismissDelay:I

    .line 61
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_HEIGHT"

    const/16 v2, 0x500

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowHeight:I

    .line 62
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_WIDTH"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowWidth:I

    .line 63
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_MULTI_TOUCH_PANEL"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportMultiTouchPanel:Z

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_PREVIEW"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportPreview:Z

    .line 65
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_QUICK_POPUP"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingQuickPopup:Z

    .line 66
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_CANDIDATE_PREV_NEXT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonPrevNext:Z

    .line 67
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_CANDIDATE_BUTTON_ON_EMIAL_URL_MODE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonOnEmailUrlMode:Z

    .line 68
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_LEFT_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLeftSwipe:Z

    .line 69
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_UP_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingUpSwipe:Z

    .line 70
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_RIGHT_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingRightSwipe:Z

    .line 71
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_DOWN_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingDownSwipe:Z

    .line 72
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_EMOTICON_POPUP_ON_ENTER"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingEmoticonPopupOnEnter:Z

    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_PHONENUMBER_ZERO_LONGPRESS"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPhonenumberZeroLongpress:Z

    .line 74
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_TOGGLE_NUMBER_INPUT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingToggleNumberInput:Z

    .line 75
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_MULTI_FLOATING_KEYBOARD"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingMultiFloatingKeyboard:Z

    .line 76
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "ENABLE_DEFAULT_CANDIDATEVIEW"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableDefaultCandidateview:Z

    .line 77
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "ENABLE_TRACE_POPUP_GUIDE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableTracePopupGuide:Z

    .line 78
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_ADDTO_NUMBER_KEY_FIRST_LINE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingAddtoNumberKeyFirstLine:Z

    .line 79
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_BOLD_FONT_ON_MONTH_EDITTEXT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingBoldFontOnMonthEdittext:Z

    .line 80
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_VIETNAMESE_TELEX"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingVietnameseTelex:Z

    .line 81
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingNumberAndSymbolsKeypadType:Z

    .line 82
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_HWR_TUTORIAL"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportHwrTutorial:Z

    .line 83
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_CHINESE_PHONETIC_SPELL_EFFECT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingChinesePhoneticSpellEffect:Z

    .line 84
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_LANGUAGE_TOAST"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLanguageToast:Z

    .line 85
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "EXTRACT_UI"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingExtractUi:Z

    .line 86
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "DEFAULT_SUPPORT_LANGUAGES"

    const-string v2, "EN_GB;EN_US;AZ;CA;CS;DA;DE;ET;ES;EU;EL;FR;GA;GL;KA;HR;IT;IS;KK;LV;LT;HU;NB;NL;PL;PT;RU;RO;FI;SR;SK;SL;SV;TR;UK;KO;HY;BG;MK;"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mDefaultSupportLanguages:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_SPACE_LANGUAGE_CHANGE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportSpaceLanguageChange:Z

    .line 88
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_PREDICTION_ON_AUTOCOMPLETE"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPredictionOnAutocomplete:Z

    .line 89
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_FULL_HANDWRITING"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportFullHandwriting:Z

    .line 90
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SPACE_LANGUAGE_CHANGING_THRESHOLD"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mSpaceLanguageChangingThreshold:I

    .line 93
    :cond_0
    return-void
.end method

.method private initailize()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/PropertyItems;->init()V

    .line 99
    :cond_1
    return-void
.end method

.method public static isEnableDefaultCandidateview()Z
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 249
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 250
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableDefaultCandidateview:Z

    return v0
.end method

.method public static isEnableTracePopupGuide()Z
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 257
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 258
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableTracePopupGuide:Z

    return v0
.end method

.method public static isSupportFullHandwriting()Z
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 352
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 353
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportFullHandwriting:Z

    return v0
.end method

.method public static isSupportHwrTutorial()Z
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 297
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 298
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportHwrTutorial:Z

    return v0
.end method

.method public static isSupportMultiTouchPanel()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 145
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 146
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportMultiTouchPanel:Z

    return v0
.end method

.method public static isSupportPreview()Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 153
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 154
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportPreview:Z

    return v0
.end method

.method public static isSupportSpaceLanguageChange()Z
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 336
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 337
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportSpaceLanguageChange:Z

    return v0
.end method

.method public static isUsingAddtoNumberKeyFirstLine()Z
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 265
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 266
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingAddtoNumberKeyFirstLine:Z

    return v0
.end method

.method public static isUsingBoldFontOnMonthEdittext()Z
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 273
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 274
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingBoldFontOnMonthEdittext:Z

    return v0
.end method

.method public static isUsingCandidateButtonOnEmailUrlMode()Z
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 177
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 178
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonOnEmailUrlMode:Z

    return v0
.end method

.method public static isUsingCandidateButtonPrevNext()Z
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 169
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 170
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonPrevNext:Z

    return v0
.end method

.method public static isUsingChinesePhoneticSpellEffect()Z
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 305
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 306
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingChinesePhoneticSpellEffect:Z

    return v0
.end method

.method public static isUsingDownSwipe()Z
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 209
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 210
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingDownSwipe:Z

    return v0
.end method

.method public static isUsingEmoticonPopupOnEnter()Z
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 217
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 218
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingEmoticonPopupOnEnter:Z

    return v0
.end method

.method public static isUsingExtractUi()Z
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 320
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 321
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingExtractUi:Z

    return v0
.end method

.method public static isUsingLanguageToast()Z
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 312
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 313
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLanguageToast:Z

    return v0
.end method

.method public static isUsingLeftSwipe()Z
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 185
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 186
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLeftSwipe:Z

    return v0
.end method

.method public static isUsingMultiFloatingKeyboard()Z
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 241
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 242
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingMultiFloatingKeyboard:Z

    return v0
.end method

.method public static isUsingNumberAndSymbolsKeypadType()Z
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 289
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 290
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingNumberAndSymbolsKeypadType:Z

    return v0
.end method

.method public static isUsingPhonenumberZeroLongpress()Z
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 225
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 226
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPhonenumberZeroLongpress:Z

    return v0
.end method

.method public static isUsingPredictionOnAutocomplete()Z
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 344
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 345
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPredictionOnAutocomplete:Z

    return v0
.end method

.method public static isUsingQuickPopup()Z
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 161
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 162
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingQuickPopup:Z

    return v0
.end method

.method public static isUsingRightSwipe()Z
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 201
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 202
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingRightSwipe:Z

    return v0
.end method

.method public static isUsingToggleNumberInput()Z
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 233
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 234
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingToggleNumberInput:Z

    return v0
.end method

.method public static isUsingUpSwipe()Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 193
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 194
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingUpSwipe:Z

    return v0
.end method

.method public static isUsingVietnameseTelex()Z
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    .line 281
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    .line 282
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingVietnameseTelex:Z

    return v0
.end method
