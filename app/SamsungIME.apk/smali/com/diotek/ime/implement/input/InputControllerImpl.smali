.class public Lcom/diotek/ime/implement/input/InputControllerImpl;
.super Lcom/diotek/ime/framework/input/AbstractInputController;
.source "InputControllerImpl.java"


# static fields
.field private static final SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

.field private static final SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

.field public static UseMode3:Z

.field public static isPreviousStateShiftPress:Z


# instance fields
.field protected mDisplayText:Landroid/text/SpannableStringBuilder;

.field private mFullWidthMode:Z

.field private mHandwritingHasBeenUsed:Z

.field public mOCRSIPType:I

.field private mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

.field private mStatus:Z

.field private mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x1000000

    .line 111
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x912701

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 114
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x993256

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 117
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x604933

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 120
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0xf0001

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 123
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x565657

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 126
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    .line 129
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    .line 132
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    .line 142
    sput-boolean v3, Lcom/diotek/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    .line 144
    sput-boolean v3, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;-><init>()V

    .line 135
    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mStatus:Z

    .line 137
    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    .line 138
    iput v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mOCRSIPType:I

    .line 140
    iput-object v1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    .line 141
    iput-object v1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    .line 143
    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 149
    return-void
.end method

.method private SearchHanja()V
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->SearchHanja()V

    .line 1435
    return-void
.end method

.method private getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 10
    .param p1, "charCode"    # I

    .prologue
    const/4 v9, 0x0

    .line 2404
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 2405
    .local v2, "inputLanguage":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v3

    .line 2406
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    const/4 v5, 0x0

    .line 2407
    .local v5, "popupKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v3, :cond_2

    .line 2408
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/high16 v6, 0x656c0000

    if-eq v2, v6, :cond_0

    const/high16 v6, 0x66720000

    if-eq v2, v6, :cond_0

    const v6, 0x66724652

    if-eq v2, v6, :cond_0

    const v6, 0x66724341

    if-ne v2, v6, :cond_3

    .line 2415
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 2416
    .local v0, "aKeyList":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 2417
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    int-to-char v6, p1

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2418
    move-object v5, v0

    .line 2431
    .end local v0    # "aKeyList":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-object v5

    .line 2423
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 2424
    .restart local v0    # "aKeyList":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v6, v6, v9

    if-ne v6, p1, :cond_4

    .line 2425
    move-object v5, v0

    .line 2426
    goto :goto_0
.end method

.method private getXT9VerFromSecProductFeature()I
    .locals 3

    .prologue
    .line 1781
    const-string v0, "SWIFTKEY"

    .line 1783
    .local v0, "secProductXt9":Ljava/lang/String;
    const-string v1, "XT9_9_4"

    const-string v2, "SWIFTKEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1784
    const/4 v1, 0x2

    .line 1795
    :goto_0
    return v1

    .line 1787
    :cond_0
    const-string v1, "XT9_9"

    const-string v2, "SWIFTKEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1788
    const/4 v1, 0x1

    goto :goto_0

    .line 1791
    :cond_1
    const-string v1, "XT9"

    const-string v2, "SWIFTKEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1792
    const/4 v1, 0x0

    goto :goto_0

    .line 1795
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private handleArrow(Z)V
    .locals 1
    .param p1, "isLeft"    # Z

    .prologue
    .line 1708
    if-eqz p1, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->prevSymbolsPage()V

    .line 1713
    :goto_0
    return-void

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->nextSymbolsPage()V

    goto :goto_0
.end method

.method private handleClipBoardKey()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v5, 0x0

    .line 1600
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 1603
    .local v12, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v13

    .line 1604
    .local v13, "mRP":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v13, :cond_1

    invoke-virtual {v13, v14}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1605
    const-string v0, "InputControllerImpl"

    const-string v3, "handleClipBoardKey : isClipboardAllowed false"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    const-string v0, "InputControllerImpl"

    const-string v3, "handleClipBoardKey : isClipboardAllowed true"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    if-eqz v12, :cond_2

    .line 1613
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1614
    .local v1, "eventTime":J
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v6, 0xe8

    const/4 v11, 0x2

    move-wide v3, v1

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1617
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v14}, Lcom/diotek/ime/framework/common/InputManager;->showKeyboardAfterClipboardClosed(Z)V

    .line 1619
    .end local v1    # "eventTime":J
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v3, -0x75

    invoke-interface {v0, v3}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 1620
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v0, :cond_3

    .line 1621
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 1623
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    goto :goto_0
.end method

.method private handleHwrRangeChange(ZZ)V
    .locals 4
    .param p1, "toNext"    # Z
    .param p2, "isPressedRangeKey"    # Z

    .prologue
    .line 1668
    const/4 v0, -0x1

    .line 1669
    .local v0, "range":I
    if-eqz p1, :cond_1

    .line 1670
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v0

    .line 1674
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 1675
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 1676
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    .line 1677
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v1, :cond_0

    .line 1678
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 1680
    :cond_0
    return-void

    .line 1672
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getPreviousInputRange(Z)I

    move-result v0

    goto :goto_0
.end method

.method private handleMonthKey(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x5

    .line 1716
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1717
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1718
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1719
    invoke-interface {v0, v3, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1720
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getMonthText(I)Ljava/lang/String;

    move-result-object v1

    .line 1721
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1722
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1724
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleRangeChange(I)V
    .locals 3
    .param p1, "range"    # I

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 1660
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 1661
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    .line 1662
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 1665
    :cond_0
    return-void
.end method

.method private handleRangeChangeToSym()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1683
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 1684
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 1685
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1686
    .local v0, "inputMethod":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    .line 1687
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 1689
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    .line 1691
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    .line 1692
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1695
    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v1, :cond_2

    .line 1696
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 1698
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1699
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    .line 1701
    :cond_3
    return-void
.end method

.method private handleThaiRangeChange(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->updateThaiKeyboardView(I)V

    .line 1705
    return-void
.end method

.method private isNeedToUpdateInpuModueWithLanguage(Lcom/diotek/ime/framework/common/Language;)Z
    .locals 3
    .param p1, "mCurrentLanguage"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v0, 0x0

    .line 2979
    if-nez p1, :cond_1

    .line 2993
    :cond_0
    :goto_0
    return v0

    .line 2980
    :cond_1
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 2985
    :sswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    if-nez v1, :cond_0

    .line 2987
    const/4 v0, 0x1

    goto :goto_0

    .line 2980
    :sswitch_data_0
    .sparse-switch
        0x7a680000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method

.method private processMMKey(I)V
    .locals 5
    .param p1, "method"    # I

    .prologue
    const/4 v3, 0x1

    .line 1508
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v1

    .line 1509
    .local v1, "multimodalCode":I
    invoke-static {p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 1510
    packed-switch v1, :pswitch_data_0

    .line 1572
    :pswitch_0
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    .line 1582
    :goto_0
    return-void

    .line 1512
    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e4742

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 1513
    .local v0, "languageId":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1514
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showTipsHwrInstallGuideDialog()V

    goto :goto_0

    .line 1516
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto :goto_0

    .line 1520
    .end local v0    # "languageId":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto :goto_0

    .line 1523
    :pswitch_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->startVoiceListening()V

    goto :goto_0

    .line 1526
    :pswitch_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-class v3, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto :goto_0

    .line 1529
    :pswitch_5
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    goto :goto_0

    .line 1532
    :pswitch_6
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->handleOcrKey()V

    goto :goto_0

    .line 1535
    :pswitch_7
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToNormalKeyboardMode()V

    goto :goto_0

    .line 1538
    :pswitch_8
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto :goto_0

    .line 1541
    :pswitch_9
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToSplitKeyboardMode()V

    goto :goto_0

    .line 1544
    :pswitch_a
    const/16 v2, -0x87

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 1545
    const-string v2, "last_used_mm_key_code"

    invoke-direct {p0, v2, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 1546
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    .line 1547
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto :goto_0

    .line 1550
    :pswitch_b
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showHalfFullWidthSwitchDialog()V

    goto :goto_0

    .line 1555
    :pswitch_c
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-nez v2, :cond_1

    .line 1565
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showModeChangePopupKeyboard()V

    goto :goto_0

    .line 1569
    :pswitch_d
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->SearchHanja()V

    goto :goto_0

    .line 1577
    :cond_2
    invoke-static {v3}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 1578
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 1579
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    goto :goto_0

    .line 1510
    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setBooleanToPreference(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Z

    .prologue
    .line 1585
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-interface {v2}, Lcom/diotek/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1586
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1587
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1588
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1589
    return-void
.end method

.method private setIntToPreference(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # I

    .prologue
    .line 1592
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-interface {v2}, Lcom/diotek/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1593
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1594
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1595
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1596
    return-void
.end method

.method private setXt9InputEngine()Lcom/diotek/ime/framework/engine/InputEngine;
    .locals 3

    .prologue
    .line 1844
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getXT9VerFromSecProductFeature()I

    move-result v0

    .line 1845
    .local v0, "configuredXt9Ver":I
    const/4 v1, 0x0

    .line 1847
    .local v1, "xt9Engine":Lcom/diotek/ime/framework/engine/InputEngine;
    packed-switch v0, :pswitch_data_0

    .line 1861
    :goto_0
    return-object v1

    .line 1849
    :pswitch_0
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;

    .end local v1    # "xt9Engine":Lcom/diotek/ime/framework/engine/InputEngine;
    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;-><init>()V

    .line 1850
    .restart local v1    # "xt9Engine":Lcom/diotek/ime/framework/engine/InputEngine;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_0

    .line 1854
    :pswitch_1
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    .end local v1    # "xt9Engine":Lcom/diotek/ime/framework/engine/InputEngine;
    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;-><init>()V

    .line 1855
    .restart local v1    # "xt9Engine":Lcom/diotek/ime/framework/engine/InputEngine;
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_0

    .line 1847
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showCyrillicUmlautPopup(I)Z
    .locals 5
    .param p1, "charCode"    # I

    .prologue
    .line 2475
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const/high16 v4, 0x656e0000

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 2476
    .local v1, "inputLanguage":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v2, p1, v1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->convertCyrillicUmlaut(II)I

    move-result v0

    .line 2477
    .local v0, "convertedCode":I
    if-eq v0, p1, :cond_0

    .line 2478
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v2

    .line 2480
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDlgMsgBox()V
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->showDlgMsgBox()V

    .line 1469
    return-void
.end method

.method private showGestureGuideDialog()V
    .locals 6

    .prologue
    .line 1438
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1439
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "fist_hwr_execution"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1440
    .local v0, "isFirstExecution":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 1442
    .local v1, "recogMode":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 1444
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->showGestureGuideDialog()V

    .line 1446
    :cond_0
    return-void
.end method

.method private showHalfFullWidthSwitchDialog()V
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->showHalfFullWidthSwitchDialog()V

    .line 1505
    return-void
.end method

.method private showNordicUmlautPopup(I)Z
    .locals 4
    .param p1, "charCode"    # I

    .prologue
    .line 2435
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getNordicSymbolPopupKey(I)I

    move-result v0

    .line 2436
    .local v0, "popupKey":I
    if-eq v0, p1, :cond_1

    .line 2437
    new-instance v1, Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v1, "sUmlautString":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 2441
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-class v3, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->startHwLongPressPopup(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 2442
    const/4 v2, 0x1

    .line 2444
    .end local v1    # "sUmlautString":Ljava/lang/CharSequence;
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v2

    goto :goto_0
.end method

.method private showNormalUmlautPopup(I)Z
    .locals 8
    .param p1, "charCode"    # I

    .prologue
    .line 2450
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v3

    .line 2451
    .local v3, "popupKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v3, :cond_3

    .line 2452
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {v3}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->clone(Lcom/diotek/ime/framework/view/Keyboard$Key;)Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentKeyUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2453
    .local v2, "popupCharacters":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 2454
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2456
    .local v4, "umlautString":Ljava/lang/String;
    const/16 v6, 0xdf

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2458
    .local v5, "upperUmlaut":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2459
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2460
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2462
    :cond_0
    move-object v2, v5

    .line 2467
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v4    # "umlautString":Ljava/lang/String;
    .end local v5    # "upperUmlaut":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-class v7, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-interface {v6, v7, v2}, Lcom/diotek/ime/framework/common/InputManager;->startHwLongPressPopup(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 2468
    const/4 v6, 0x1

    .line 2471
    .end local v2    # "popupCharacters":Ljava/lang/CharSequence;
    :goto_2
    return v6

    .line 2464
    .restart local v2    # "popupCharacters":Ljava/lang/CharSequence;
    .restart local v4    # "umlautString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2471
    .end local v2    # "popupCharacters":Ljava/lang/CharSequence;
    .end local v4    # "umlautString":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private showOneHandedGuideDialog()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1481
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1482
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "first_one_handed_execution"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1483
    .local v1, "isFirstExecution":Z
    const-string v5, "first_trace_execution"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v5, v6, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    .line 1486
    .local v2, "isTraceGuideDisplay":Z
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1487
    .local v0, "inputMethod":I
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1490
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->showOneHandedGuideDialog()V

    .line 1492
    :cond_2
    return-void
.end method

.method private showPenDetectionGuideDialog()V
    .locals 5

    .prologue
    .line 1495
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1496
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "first_pen_detection_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1498
    .local v0, "isFirstExecution":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1500
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showPenDetectionGuideDialog()V

    .line 1502
    :cond_0
    return-void
.end method

.method private showPinchZoomGuideDialog()V
    .locals 4

    .prologue
    .line 1449
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1450
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "first_pinch_zoom_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1451
    .local v0, "isFirstExecution":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1452
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showPinchZoomGuideDialog()V

    .line 1454
    :cond_0
    return-void
.end method

.method private showSwiftkeyGuideDialog()V
    .locals 4

    .prologue
    .line 1472
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1473
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "first_swiftkey_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1474
    .local v0, "isFirstExecution":Z
    if-eqz v0, :cond_0

    .line 1476
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showSwiftkeyGuideDialog()V

    .line 1478
    :cond_0
    return-void
.end method

.method private showTraceGuideDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1457
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1458
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "first_trace_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1459
    .local v0, "isFirstExecution":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "ENABLE_TRACE_POPUP_GUIDE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showTraceGuideDialog()V

    .line 1465
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelUpdateSuggestionDelay()V
    .locals 1

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->cancelUpdateSuggestionDelay()V

    .line 2949
    return-void
.end method

.method public changeToEmoticonMode()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2853
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 2855
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v5, :cond_1

    .line 2856
    const-string v5, "SamsungIME"

    const-string v6, "mInputManager is null !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_0
    :goto_0
    return-void

    .line 2862
    :cond_1
    const-string v5, "SamsungIME"

    const-string v6, "Clean Up the bitmap buffer of AbsKeyboardView."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->cleanUpResources()V

    .line 2865
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 2866
    .local v2, "prevInputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2868
    .local v0, "inputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2869
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    .line 2872
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 2873
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2874
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8, v8}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 2875
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2876
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2877
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 2906
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 2908
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2909
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    goto :goto_0

    .line 2878
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2879
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8, v8}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 2880
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2881
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2882
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 2883
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 2884
    .local v1, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    .line 2885
    .local v3, "range":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    .line 2887
    .local v4, "validRanges":[I
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_1

    .line 2889
    .end local v1    # "language":I
    .end local v3    # "range":I
    .end local v4    # "validRanges":[I
    :cond_4
    const/16 v5, 0x8

    if-ne v0, v5, :cond_6

    .line 2890
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2891
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 2893
    :cond_5
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2894
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2895
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2896
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 2897
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto :goto_1

    .line 2900
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2901
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2902
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 2903
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1
.end method

.method public changeToFloatingKeyboardMode()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 2740
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 2741
    .local v2, "prevInputMethod":I
    const/16 v0, 0x8

    .line 2743
    .local v0, "inputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 2745
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2746
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2747
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2777
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 2778
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 2779
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2780
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    .line 2782
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2783
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    .line 2787
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2788
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    .line 2790
    :cond_2
    return-void

    .line 2749
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2750
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2751
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2753
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 2754
    .local v1, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    .line 2755
    .local v3, "range":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    .line 2757
    .local v4, "validRanges":[I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    .line 2758
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_0

    .line 2761
    .end local v1    # "language":I
    .end local v3    # "range":I
    .end local v4    # "validRanges":[I
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2762
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 2764
    :cond_5
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2765
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2766
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2768
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v5, :cond_6

    .line 2769
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    .line 2772
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 2773
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0
.end method

.method public changeToFullWidthSwitchMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 2847
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setFullWidthMode(Z)V

    .line 2848
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updatePredictionSettingAndEngine()V

    .line 2850
    return-void
.end method

.method public changeToHwrMode()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2493
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    .line 2494
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 2496
    .local v0, "InputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2497
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAvailableHWRLanguage()V

    .line 2499
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2500
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2504
    :cond_1
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2505
    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    .line 2506
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(I)V

    .line 2509
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 2511
    if-ne v0, v7, :cond_6

    .line 2512
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2517
    :goto_0
    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_4

    .line 2518
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2519
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 2520
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 2522
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2523
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v5}, Lcom/diotek/ime/framework/input/InputModule;->updateVOHWRSuggestion()V

    .line 2530
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showGestureGuideDialog()V

    .line 2532
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 2533
    .local v1, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 2534
    .local v2, "method":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    .line 2535
    .local v3, "range":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v2, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    .line 2536
    .local v4, "validRanges":[I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2537
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    .line 2540
    :cond_5
    iput-boolean v9, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 2542
    return-void

    .line 2514
    .end local v1    # "language":I
    .end local v2    # "method":I
    .end local v3    # "range":I
    .end local v4    # "validRanges":[I
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    goto :goto_0

    .line 2524
    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2525
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 2527
    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method public changeToKeyboardMode()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2547
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    .line 2548
    .local v4, "prevInputMethod":I
    const/4 v0, 0x0

    .line 2550
    .local v0, "inputMethod":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 2552
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2553
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2554
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2555
    const/4 v0, 0x0

    .line 2568
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2569
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    .line 2572
    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_2

    .line 2573
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    .line 2575
    :cond_2
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2576
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2577
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2579
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const/high16 v9, 0x656e0000

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 2580
    .local v2, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v3

    .line 2581
    .local v3, "method":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v5

    .line 2582
    .local v5, "range":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v2, v3, v5, v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v6

    .line 2584
    .local v6, "validRanges":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v8, v6, v10

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    .line 2585
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    .line 2587
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v7, :cond_3

    .line 2588
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    .line 2631
    .end local v2    # "language":I
    .end local v3    # "method":I
    .end local v5    # "range":I
    .end local v6    # "validRanges":[I
    :cond_3
    :goto_1
    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 2632
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 2633
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2634
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    .line 2636
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2637
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    .line 2639
    :cond_5
    return-void

    .line 2557
    :cond_6
    if-ne v4, v8, :cond_7

    move v0, v4

    :goto_2
    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    goto :goto_2

    .line 2561
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2562
    const/4 v0, 0x0

    goto :goto_0

    .line 2564
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    goto/16 :goto_0

    .line 2592
    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 2593
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 2596
    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2597
    if-ne v4, v8, :cond_e

    .line 2598
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setFloatingToQwertyTransition(Z)V

    .line 2599
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    .line 2605
    :cond_c
    :goto_3
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2607
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 2608
    .local v1, "keypadType":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2609
    if-nez v1, :cond_f

    .line 2610
    const/4 v0, 0x0

    .line 2617
    .end local v1    # "keypadType":I
    :cond_d
    :goto_4
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2618
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2619
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2621
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 2622
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2623
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto/16 :goto_1

    .line 2601
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    goto :goto_3

    .line 2612
    .restart local v1    # "keypadType":I
    :cond_f
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public changeToNormalKeyboardMode()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2643
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    .line 2644
    .local v4, "prevInputMethod":I
    const/4 v0, 0x0

    .line 2645
    .local v0, "inputMethod":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v1

    .line 2647
    .local v1, "isHWRMode":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 2649
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2650
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2651
    if-eqz v1, :cond_4

    .line 2652
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    .line 2653
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2655
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2656
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 2659
    :cond_0
    iput-boolean v9, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 2723
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 2724
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2725
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    .line 2727
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2728
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    .line 2730
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    .line 2733
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2734
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    .line 2736
    :cond_3
    return-void

    .line 2661
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2662
    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto :goto_0

    .line 2664
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2666
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    .line 2668
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2669
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    .line 2672
    :cond_6
    if-eqz v0, :cond_7

    if-ne v0, v9, :cond_8

    .line 2674
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    .line 2676
    :cond_8
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2677
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2678
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2680
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const/high16 v9, 0x656e0000

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 2681
    .local v2, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v3

    .line 2682
    .local v3, "method":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v5

    .line 2683
    .local v5, "range":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v2, v3, v5, v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v6

    .line 2685
    .local v6, "validRanges":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v8, v6, v10

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    .line 2687
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v7, :cond_9

    .line 2688
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    .line 2692
    :cond_9
    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto/16 :goto_0

    .line 2694
    .end local v2    # "language":I
    .end local v3    # "method":I
    .end local v5    # "range":I
    .end local v6    # "validRanges":[I
    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 2695
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 2698
    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2699
    const/16 v7, 0x8

    if-ne v4, v7, :cond_f

    .line 2700
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setFloatingToQwertyTransition(Z)V

    .line 2701
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    .line 2706
    :cond_c
    :goto_1
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2707
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2708
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2710
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v7, :cond_d

    .line 2711
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    .line 2714
    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    .line 2715
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2716
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 2718
    :cond_e
    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    .line 2720
    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto/16 :goto_0

    .line 2703
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    goto :goto_1
.end method

.method public changeToSplitKeyboardMode()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2794
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 2795
    .local v2, "prevInputMethod":I
    const/4 v0, 0x7

    .line 2797
    .local v0, "inputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 2798
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    .line 2800
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2801
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 2802
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2830
    :goto_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v5, :cond_0

    .line 2831
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    .line 2834
    :cond_0
    iput-boolean v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 2835
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 2836
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2837
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    .line 2841
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2842
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    .line 2844
    :cond_2
    return-void

    .line 2804
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2806
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2807
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 2808
    .local v1, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    .line 2809
    .local v3, "range":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    .line 2811
    .local v4, "validRanges":[I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    .line 2812
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_0

    .line 2815
    .end local v1    # "language":I
    .end local v3    # "range":I
    .end local v4    # "validRanges":[I
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2816
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 2819
    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    .line 2821
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v5, :cond_6

    .line 2822
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    .line 2825
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 2826
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0
.end method

.method public endMultitapTimer()V
    .locals 1

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    .line 2944
    return-void
.end method

.method protected getCurrentInputEngineIndex(III)I
    .locals 10
    .param p1, "method"    # I
    .param p2, "range"    # I
    .param p3, "language"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/high16 v5, 0x6b6f0000

    .line 2098
    const/4 v0, 0x0

    .line 2099
    .local v0, "index":I
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v2, :cond_9

    .line 2100
    if-eqz p1, :cond_0

    if-eq p1, v9, :cond_0

    if-ne p1, v7, :cond_5

    .line 2102
    :cond_0
    if-ne p1, v7, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2103
    const/4 v0, 0x5

    .line 2210
    :cond_1
    :goto_0
    return v0

    .line 2104
    :cond_2
    if-ne p1, v7, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2105
    if-ne p3, v5, :cond_3

    .line 2106
    const/4 v0, 0x3

    goto :goto_0

    .line 2108
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2111
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2113
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2114
    const/4 v0, 0x5

    goto :goto_0

    .line 2115
    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2116
    if-ne p3, v5, :cond_7

    .line 2117
    const/4 v0, 0x3

    goto :goto_0

    .line 2119
    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    .line 2121
    :cond_8
    if-ne p1, v6, :cond_1

    .line 2122
    const/4 v0, 0x4

    goto :goto_0

    .line 2125
    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_15

    .line 2126
    if-eqz p1, :cond_a

    if-eq p1, v9, :cond_a

    if-ne p1, v7, :cond_11

    .line 2128
    :cond_a
    if-ne p1, v7, :cond_b

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2129
    const/4 v0, 0x5

    goto :goto_0

    .line 2130
    :cond_b
    if-ne p3, v5, :cond_10

    .line 2131
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2132
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 2133
    .local v1, "keypadType":I
    if-eq v1, v6, :cond_c

    if-eq v1, v8, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 2137
    :cond_c
    const/4 v0, 0x1

    goto :goto_0

    .line 2138
    :cond_d
    if-nez v1, :cond_1

    .line 2139
    const/4 v0, 0x6

    goto :goto_0

    .line 2141
    .end local v1    # "keypadType":I
    :cond_e
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v2

    if-ne v2, v6, :cond_f

    if-eqz p1, :cond_f

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2144
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2146
    :cond_f
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2151
    :cond_10
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2153
    :cond_11
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2154
    if-ne p3, v5, :cond_12

    .line 2155
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 2157
    :cond_12
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 2159
    :cond_13
    if-ne p1, v6, :cond_1

    .line 2160
    if-ne p3, v5, :cond_14

    .line 2161
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2163
    :cond_14
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2167
    :cond_15
    if-eqz p1, :cond_16

    if-eq p1, v9, :cond_16

    if-ne p1, v7, :cond_1d

    .line 2169
    :cond_16
    if-ne p1, v7, :cond_17

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2170
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 2171
    :cond_17
    if-ne p3, v5, :cond_1c

    .line 2172
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2173
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 2174
    .restart local v1    # "keypadType":I
    if-eq v1, v6, :cond_18

    if-eq v1, v8, :cond_18

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    .line 2178
    :cond_18
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2179
    :cond_19
    if-nez v1, :cond_1

    .line 2180
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2182
    .end local v1    # "keypadType":I
    :cond_1a
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v2

    if-ne v2, v6, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2185
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2187
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2192
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2194
    :cond_1d
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2195
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 2196
    :cond_1e
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2197
    if-ne p3, v5, :cond_1f

    .line 2198
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 2200
    :cond_1f
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 2202
    :cond_20
    if-ne p1, v6, :cond_1

    .line 2203
    if-ne p3, v5, :cond_21

    .line 2204
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2206
    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected getCurrentInputModuleIndex(III)I
    .locals 10
    .param p1, "method"    # I
    .param p2, "range"    # I
    .param p3, "language"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x6b6f0000

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, "index":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v2

    .line 1868
    .local v2, "preferenceInputMethod":I
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v3, :cond_19

    .line 1869
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1870
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1871
    const/4 v0, 0x4

    .line 2050
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setTraceStatus()V

    .line 2051
    return v0

    .line 1872
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 1874
    const/4 v0, 0x4

    goto :goto_0

    .line 1876
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1878
    :cond_3
    if-ne p1, v6, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1880
    :cond_4
    if-ne p3, v7, :cond_5

    .line 1881
    const/16 v0, 0xe

    goto :goto_0

    .line 1882
    :cond_5
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1883
    const/16 v0, 0xf

    goto :goto_0

    .line 1884
    :cond_6
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1885
    const/16 v0, 0x1a

    goto :goto_0

    .line 1887
    :cond_7
    const/16 v0, 0xd

    goto :goto_0

    .line 1889
    :cond_8
    if-eqz p1, :cond_9

    const/4 v3, 0x7

    if-eq p1, v3, :cond_9

    if-ne p1, v6, :cond_13

    .line 1891
    :cond_9
    if-ne p3, v7, :cond_f

    .line 1892
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1893
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 1894
    .local v1, "keypadType":I
    if-eq v1, v5, :cond_a

    if-eq v1, v9, :cond_a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b

    .line 1898
    :cond_a
    const/16 v0, 0xe

    goto :goto_0

    .line 1899
    :cond_b
    if-nez v1, :cond_0

    .line 1900
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1901
    const/16 v0, 0xa

    goto :goto_0

    .line 1903
    :cond_c
    const/16 v0, 0xb

    goto :goto_0

    .line 1906
    .end local v1    # "keypadType":I
    :cond_d
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v3, :cond_e

    if-nez v2, :cond_e

    if-ne p1, v6, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v3

    if-ne v3, v5, :cond_e

    .line 1908
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1910
    :cond_e
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 1912
    :cond_f
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1913
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1914
    :cond_10
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1916
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 1917
    :cond_11
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1918
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 1920
    :cond_12
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 1922
    :cond_13
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1923
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_14

    .line 1925
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1927
    :cond_14
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1929
    :cond_15
    if-ne p1, v5, :cond_0

    .line 1930
    if-ne p3, v7, :cond_16

    .line 1931
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1932
    :cond_16
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1933
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1934
    :cond_17
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1935
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 1937
    :cond_18
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1941
    :cond_19
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "XT9_VERSION"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_2a

    .line 1942
    if-eqz p1, :cond_1a

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1a

    if-ne p1, v6, :cond_25

    .line 1944
    :cond_1a
    if-ne p3, v7, :cond_20

    .line 1945
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1946
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 1947
    .restart local v1    # "keypadType":I
    if-eq v1, v5, :cond_1b

    if-eq v1, v9, :cond_1b

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1b

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1c

    .line 1951
    :cond_1b
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1952
    :cond_1c
    if-nez v1, :cond_0

    .line 1953
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1954
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 1956
    :cond_1d
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1959
    .end local v1    # "keypadType":I
    :cond_1e
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v5, :cond_1f

    if-eqz p1, :cond_1f

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1962
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1964
    :cond_1f
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1966
    :cond_20
    if-ne p1, v6, :cond_22

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1967
    const v3, 0x7a68434e

    if-ne p3, v3, :cond_21

    .line 1968
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 1970
    :cond_21
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 1972
    :cond_22
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1973
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 1974
    :cond_23
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1975
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 1977
    :cond_24
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 1979
    :cond_25
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1980
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_26

    .line 1982
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1984
    :cond_26
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1986
    :cond_27
    if-ne p1, v5, :cond_0

    .line 1987
    if-ne p3, v7, :cond_28

    .line 1988
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1989
    :cond_28
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1990
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 1992
    :cond_29
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 1996
    :cond_2a
    if-eqz p1, :cond_2b

    const/4 v3, 0x7

    if-eq p1, v3, :cond_2b

    if-ne p1, v6, :cond_36

    .line 1998
    :cond_2b
    if-ne p3, v7, :cond_31

    .line 1999
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 2000
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 2001
    .restart local v1    # "keypadType":I
    if-eq v1, v5, :cond_2c

    if-eq v1, v9, :cond_2c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2c

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2d

    .line 2005
    :cond_2c
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2006
    :cond_2d
    if-nez v1, :cond_0

    .line 2007
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2008
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2010
    :cond_2e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2013
    .end local v1    # "keypadType":I
    :cond_2f
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v5, :cond_30

    if-eqz p1, :cond_30

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_30

    .line 2016
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2018
    :cond_30
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2020
    :cond_31
    if-ne p1, v6, :cond_33

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2021
    const v3, 0x7a68434e

    if-ne p3, v3, :cond_32

    .line 2022
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 2024
    :cond_32
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 2026
    :cond_33
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2027
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 2028
    :cond_34
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2029
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 2031
    :cond_35
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2033
    :cond_36
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2034
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_37

    .line 2036
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 2038
    :cond_37
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 2040
    :cond_38
    if-ne p1, v5, :cond_0

    .line 2041
    if-ne p3, v7, :cond_39

    .line 2042
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2043
    :cond_39
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2044
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 2046
    :cond_3a
    const/4 v0, 0x7

    goto/16 :goto_0
.end method

.method protected getDWPEngineIndex()I
    .locals 1

    .prologue
    .line 2933
    const/4 v0, 0x1

    return v0
.end method

.method public getHWInputEngineIndex(I)I
    .locals 4
    .param p1, "language"    # I

    .prologue
    .line 2216
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    .line 2217
    const/4 v0, 0x4

    .line 2226
    .local v0, "index":I
    :goto_0
    return v0

    .line 2219
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "XT9_VERSION"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2220
    const/4 v0, 0x6

    .restart local v0    # "index":I
    goto :goto_0

    .line 2223
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method protected getHWInputModuleIndex(I)I
    .locals 5
    .param p1, "language"    # I

    .prologue
    const/high16 v4, 0x6b6f0000

    .line 2057
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_4

    .line 2058
    if-ne p1, v4, :cond_0

    .line 2059
    const/16 v0, 0xb

    .line 2093
    .local v0, "index":I
    :goto_0
    return v0

    .line 2060
    .end local v0    # "index":I
    :cond_0
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2061
    const/16 v0, 0xc

    .restart local v0    # "index":I
    goto :goto_0

    .line 2062
    .end local v0    # "index":I
    :cond_1
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2063
    const/16 v0, 0x10

    .restart local v0    # "index":I
    goto :goto_0

    .line 2064
    .end local v0    # "index":I
    :cond_2
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2065
    const/16 v0, 0x19

    .restart local v0    # "index":I
    goto :goto_0

    .line 2067
    .end local v0    # "index":I
    :cond_3
    const/16 v0, 0xa

    .restart local v0    # "index":I
    goto :goto_0

    .line 2070
    .end local v0    # "index":I
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "XT9_VERSION"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 2071
    if-ne p1, v4, :cond_5

    .line 2072
    const/16 v0, 0x14

    .restart local v0    # "index":I
    goto :goto_0

    .line 2073
    .end local v0    # "index":I
    :cond_5
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2074
    const/16 v0, 0x15

    .restart local v0    # "index":I
    goto :goto_0

    .line 2075
    .end local v0    # "index":I
    :cond_6
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2076
    const/16 v0, 0x18

    .restart local v0    # "index":I
    goto :goto_0

    .line 2078
    .end local v0    # "index":I
    :cond_7
    const/16 v0, 0x13

    .restart local v0    # "index":I
    goto :goto_0

    .line 2082
    .end local v0    # "index":I
    :cond_8
    if-ne p1, v4, :cond_9

    .line 2083
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 2084
    .end local v0    # "index":I
    :cond_9
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2085
    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_0

    .line 2086
    .end local v0    # "index":I
    :cond_a
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2087
    const/16 v0, 0x9

    .restart local v0    # "index":I
    goto :goto_0

    .line 2089
    .end local v0    # "index":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getHwrCandidateStatus()I
    .locals 1

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getHwrCandidateStatus()I

    move-result v0

    return v0
.end method

.method public getSelectedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getSelectedWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundEffectController()Lcom/diotek/ime/framework/effect/SoundEffectController;
    .locals 1

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    if-nez v0, :cond_0

    .line 2235
    new-instance v0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;

    invoke-direct {v0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    .line 2240
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    return-object v0
.end method

.method public getVibrateController()Lcom/diotek/ime/framework/effect/VibrateController;
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    if-nez v0, :cond_0

    .line 2249
    new-instance v0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;

    invoke-direct {v0}, Lcom/diotek/ime/implement/effect/DefaultVibrateController;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    return-object v0
.end method

.method protected getVietValidVowelsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXt9Version()I
    .locals 1

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9Version()I

    move-result v0

    return v0
.end method

.method public handleRangeChange(ZZ)V
    .locals 5
    .param p1, "toNext"    # Z
    .param p2, "isPressedRangeKey"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1632
    if-eqz p1, :cond_4

    .line 1633
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v1

    .line 1637
    .local v1, "range":I
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 1638
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SYMBOLS_PAGE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 1639
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1640
    .local v0, "inputMethod":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    .line 1641
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->isNeedToUpdateInpuModueWithLanguage(Lcom/diotek/ime/framework/common/Language;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1643
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 1644
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    .line 1646
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    .line 1647
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 1648
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 1649
    iget-boolean v2, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    if-eqz v2, :cond_2

    .line 1650
    invoke-virtual {p0, v4}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFullWidthSwitchMode(Z)V

    .line 1653
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1654
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    .line 1656
    :cond_3
    return-void

    .line 1635
    .end local v0    # "inputMethod":I
    .end local v1    # "range":I
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getPreviousInputRange(Z)I

    move-result v1

    .restart local v1    # "range":I
    goto :goto_0
.end method

.method protected initInputEngine()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 1801
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputController;->createInputEngineArray(I)Z

    .line 1802
    const-string v2, "VOHWRPANEL"

    .line 1804
    .local v2, "handwritingEngineType":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v6, :cond_5

    .line 1805
    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;-><init>()V

    .line 1806
    .local v3, "swiftkey":Lcom/diotek/ime/framework/engine/InputEngine;
    const/4 v0, 0x0

    .line 1807
    .local v0, "dhwr":Lcom/diotek/ime/framework/engine/InputEngine;
    const/4 v4, 0x0

    .line 1808
    .local v4, "vohwr":Lcom/diotek/ime/framework/engine/InputEngine;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1809
    new-instance v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;

    .end local v4    # "vohwr":Lcom/diotek/ime/framework/engine/InputEngine;
    invoke-direct {v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;-><init>()V

    .line 1813
    .restart local v4    # "vohwr":Lcom/diotek/ime/framework/engine/InputEngine;
    :cond_0
    :goto_0
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v3, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    .line 1814
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1815
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1816
    invoke-virtual {p0, v9, v4, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    .line 1841
    .end local v3    # "swiftkey":Lcom/diotek/ime/framework/engine/InputEngine;
    .end local v4    # "vohwr":Lcom/diotek/ime/framework/engine/InputEngine;
    :cond_1
    :goto_1
    return-void

    .line 1810
    .restart local v3    # "swiftkey":Lcom/diotek/ime/framework/engine/InputEngine;
    .restart local v4    # "vohwr":Lcom/diotek/ime/framework/engine/InputEngine;
    :cond_2
    const-string v6, "DHWR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1811
    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .end local v0    # "dhwr":Lcom/diotek/ime/framework/engine/InputEngine;
    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;-><init>()V

    .restart local v0    # "dhwr":Lcom/diotek/ime/framework/engine/InputEngine;
    goto :goto_0

    .line 1818
    :cond_3
    invoke-virtual {p0, v9, v4, v4}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_1

    .line 1820
    :cond_4
    const-string v6, "DHWR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1821
    invoke-virtual {p0, v8, v0, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    .line 1822
    invoke-virtual {p0, v7, v0, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_1

    .line 1826
    .end local v0    # "dhwr":Lcom/diotek/ime/framework/engine/InputEngine;
    .end local v3    # "swiftkey":Lcom/diotek/ime/framework/engine/InputEngine;
    .end local v4    # "vohwr":Lcom/diotek/ime/framework/engine/InputEngine;
    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setXt9InputEngine()Lcom/diotek/ime/framework/engine/InputEngine;

    move-result-object v5

    .line 1828
    .local v5, "xt9Engine":Lcom/diotek/ime/framework/engine/InputEngine;
    new-instance v1, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;-><init>()V

    .line 1829
    .local v1, "dwp":Lcom/diotek/ime/framework/engine/InputEngine;
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v1, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    .line 1831
    const/4 v0, 0x0

    .line 1833
    .restart local v0    # "dhwr":Lcom/diotek/ime/framework/engine/InputEngine;
    const-string v6, "NONE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1834
    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .end local v0    # "dhwr":Lcom/diotek/ime/framework/engine/InputEngine;
    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;-><init>()V

    .line 1835
    .restart local v0    # "dhwr":Lcom/diotek/ime/framework/engine/InputEngine;
    invoke-virtual {p0, v8, v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    .line 1836
    if-eqz v5, :cond_1

    .line 1837
    invoke-virtual {p0, v7, v0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_1
.end method

.method protected initInputModule()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 1728
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->createInputModuleArray(I)Z

    .line 1730
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    .line 1732
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    .line 1734
    const/16 v1, 0xa

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1735
    const/16 v1, 0xb

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1736
    const/16 v1, 0xc

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1737
    const/16 v1, 0x10

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1738
    const/16 v1, 0x19

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1739
    const/16 v1, 0xd

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1740
    const/16 v1, 0xe

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1741
    const/16 v1, 0xf

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1742
    const/16 v1, 0x1a

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1743
    const/16 v1, 0x11

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1744
    const/16 v1, 0x12

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1774
    :goto_0
    const/4 v1, 0x3

    new-instance v2, Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/HwrInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1775
    const/4 v1, 0x4

    new-instance v2, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1777
    return-void

    .line 1747
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getXT9VerFromSecProductFeature()I

    move-result v0

    .line 1749
    .local v0, "xt9Ver":I
    if-nez v0, :cond_1

    .line 1750
    const/4 v1, 0x0

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1751
    const/4 v1, 0x1

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1752
    const/4 v1, 0x2

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1753
    const/16 v1, 0x9

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1755
    new-instance v1, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;

    invoke-direct {v1}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v3, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1756
    const/4 v1, 0x7

    new-instance v2, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1757
    const/16 v1, 0x8

    new-instance v2, Lcom/diotek/ime/framework/input/PhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/PhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    goto :goto_0

    .line 1761
    :cond_1
    const/16 v1, 0x13

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1762
    const/16 v1, 0x14

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1763
    const/16 v1, 0x15

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1764
    const/16 v1, 0x18

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1766
    new-instance v1, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;

    invoke-direct {v1}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v3, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1767
    const/16 v1, 0x16

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    .line 1768
    const/16 v1, 0x17

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    goto/16 :goto_0
.end method

.method public isFullWidthMode()Z
    .locals 1

    .prologue
    .line 2914
    iget-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    return v0
.end method

.method protected isFunctionKey(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/high16 v9, 0x6b6d0000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 153
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    .line 154
    .local v2, "isTabletMode":Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v4, v5

    .line 274
    :cond_1
    :goto_0
    :sswitch_0
    return v4

    .line 256
    :sswitch_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    move v4, v5

    .line 257
    goto :goto_0

    .line 261
    :sswitch_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 262
    .local v0, "inputLanguage":I
    const/high16 v6, 0x74680000

    if-eq v0, v6, :cond_2

    if-ne v0, v9, :cond_0

    .line 263
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    .line 264
    .local v3, "range":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    .line 265
    .local v1, "isPrediction":Z
    if-nez v3, :cond_0

    .line 266
    if-eqz v1, :cond_1

    if-eq v0, v9, :cond_1

    move v4, v5

    .line 267
    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f6 -> :sswitch_0
        -0x3f5 -> :sswitch_0
        -0x3f4 -> :sswitch_0
        -0x3f3 -> :sswitch_0
        -0x3f2 -> :sswitch_0
        -0x3f0 -> :sswitch_0
        -0x3ef -> :sswitch_0
        -0x3ee -> :sswitch_0
        -0x3ed -> :sswitch_0
        -0x3ec -> :sswitch_0
        -0x3ea -> :sswitch_0
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_0
        -0x3dc -> :sswitch_0
        -0x3db -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x1f3 -> :sswitch_0
        -0x1f2 -> :sswitch_0
        -0x1f1 -> :sswitch_0
        -0x1f0 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x149 -> :sswitch_0
        -0x148 -> :sswitch_0
        -0x147 -> :sswitch_0
        -0x146 -> :sswitch_0
        -0x145 -> :sswitch_0
        -0x144 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x138 -> :sswitch_0
        -0x137 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0x106 -> :sswitch_0
        -0x105 -> :sswitch_0
        -0x104 -> :sswitch_0
        -0xe5 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0xbe -> :sswitch_0
        -0xa6 -> :sswitch_0
        -0xa5 -> :sswitch_0
        -0xa4 -> :sswitch_0
        -0xa3 -> :sswitch_0
        -0xa2 -> :sswitch_0
        -0xa1 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x89 -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x87 -> :sswitch_0
        -0x86 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x81 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x7a -> :sswitch_1
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x3a -> :sswitch_2
    .end sparse-switch
.end method

.method public isHandWritingHasBoonUsed()Z
    .locals 1

    .prologue
    .line 2923
    iget-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return v0
.end method

.method public onLongPressHwKey(I)Z
    .locals 7
    .param p1, "charCode"    # I

    .prologue
    .line 2382
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const/high16 v6, 0x656e0000

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 2383
    .local v1, "inputLanguage":I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_2

    .line 2384
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2385
    .local v0, "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    .line 2386
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2387
    .local v3, "type":I
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2388
    .local v2, "options":I
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 2390
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 2391
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNordicUmlautPopup(I)Z

    move-result v4

    .line 2400
    .end local v0    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "options":I
    .end local v3    # "type":I
    :goto_0
    return v4

    .line 2392
    .restart local v0    # "info":Landroid/view/inputmethod/EditorInfo;
    .restart local v2    # "options":I
    .restart local v3    # "type":I
    :cond_0
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 2393
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showCyrillicUmlautPopup(I)Z

    move-result v4

    goto :goto_0

    .line 2395
    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v4

    goto :goto_0

    .line 2400
    .end local v0    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "options":I
    .end local v3    # "type":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected processFunctionKey(I)V
    .locals 45
    .param p1, "keyCode"    # I

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v20

    .line 388
    .local v20, "isTabletMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const/high16 v44, 0x656e0000

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v22

    .line 389
    .local v22, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v30

    .line 391
    .local v30, "method":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 392
    .local v12, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v10, 0x0

    .line 393
    .local v10, "highlightEnd":I
    const/4 v7, 0x0

    .line 394
    .local v7, "cursor":I
    const/4 v8, 0x0

    .line 396
    .local v8, "displayCursor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v15

    .line 397
    .local v15, "info":Landroid/view/inputmethod/EditorInfo;
    iget v0, v15, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v42, v0

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff0

    move/from16 v39, v0

    .line 398
    .local v39, "variation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v42

    if-eqz v42, :cond_1

    const/16 v29, 0x7000

    .line 400
    .local v29, "metaState":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1431
    :cond_0
    :goto_1
    :sswitch_0
    return-void

    .line 398
    .end local v29    # "metaState":I
    :cond_1
    const/16 v29, 0x0

    goto :goto_0

    .line 403
    .restart local v29    # "metaState":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v42

    if-eqz v42, :cond_2

    .line 404
    const/16 v42, -0x3e9

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V

    goto :goto_1

    .line 409
    :cond_2
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    .line 411
    const/16 v42, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setProdictionWord(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x15

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    const/16 v43, 0x1f4

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/input/InputModule;->postUpdateSequenceAndSuggestionDelayForRecapture(I)V

    goto :goto_1

    .line 417
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v42

    if-nez v42, :cond_5

    .line 418
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 426
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/input/InputModule;->updateSuggestionDelay()V

    goto :goto_1

    .line 420
    :cond_5
    const/16 v42, 0x1

    const/16 v43, -0x1

    invoke-static/range {v42 .. v43}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    .line 421
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursor()I

    move-result v42

    if-nez v42, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    goto :goto_2

    .line 432
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v42

    if-eqz v42, :cond_6

    .line 433
    const/16 v42, -0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V

    goto/16 :goto_1

    .line 437
    :cond_6
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    .line 439
    const/16 v42, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setProdictionWord(Z)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x16

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    const/16 v43, 0x1f4

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/input/InputModule;->postUpdateSequenceAndSuggestionDelayForRecapture(I)V

    goto/16 :goto_1

    .line 445
    :cond_7
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v7

    .line 446
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    move/from16 v0, v42

    if-ne v7, v0, :cond_8

    .line 447
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 454
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/input/InputModule;->updateSuggestionDelay()V

    goto/16 :goto_1

    .line 449
    :cond_8
    if-nez v7, :cond_9

    .line 450
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 452
    :cond_9
    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-static/range {v42 .. v43}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    goto :goto_3

    .line 461
    :sswitch_3
    const/high16 v42, 0x74610000

    move/from16 v0, v22

    move/from16 v1, v42

    if-eq v0, v1, :cond_d

    .line 462
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v42

    if-nez v42, :cond_b

    .line 463
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 481
    :cond_a
    :goto_4
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v28

    .line 482
    .local v28, "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const/high16 v44, 0x68690000

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v42

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->setIndianLanguageHbScript(I)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianLangToggle()V

    goto/16 :goto_1

    .line 466
    .end local v28    # "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    :cond_b
    sget-boolean v42, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_c

    .line 467
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 469
    const/16 v42, 0x0

    sput-boolean v42, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    goto :goto_4

    .line 471
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v42

    if-eqz v42, :cond_a

    .line 472
    const/16 v42, 0x1

    sput-boolean v42, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    .line 473
    const/16 v42, 0x0

    sput-boolean v42, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    goto :goto_4

    .line 477
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v42

    if-nez v42, :cond_e

    const/16 v42, 0x1

    :goto_5
    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    goto :goto_4

    :cond_e
    const/16 v42, 0x0

    goto :goto_5

    .line 487
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_f

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, p1

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    .line 490
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v42

    if-nez v42, :cond_11

    const/16 v42, 0x1

    :goto_6
    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantAvailable(Z)V

    .line 491
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v42

    if-eqz v42, :cond_10

    .line 492
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantLongpressAvailable(Z)V

    .line 493
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantAvailable(Z)V

    .line 495
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianLangToggle()V

    goto/16 :goto_1

    .line 490
    :cond_11
    const/16 v42, 0x0

    goto :goto_6

    .line 498
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_12

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, p1

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    .line 501
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v42

    if-nez v42, :cond_13

    const/16 v42, 0x1

    :goto_7
    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantLongpressAvailable(Z)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianLangToggle()V

    goto/16 :goto_1

    .line 501
    :cond_13
    const/16 v42, 0x0

    goto :goto_7

    .line 505
    :sswitch_6
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v40

    .line 506
    .local v40, "vowelRowStateLeft":I
    add-int/lit8 v40, v40, -0x1

    .line 507
    const/16 v42, -0x1

    move/from16 v0, v40

    move/from16 v1, v42

    if-le v0, v1, :cond_0

    .line 508
    invoke-static/range {v40 .. v40}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 509
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianVowelRowState()V

    goto/16 :goto_1

    .line 514
    .end local v40    # "vowelRowStateLeft":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_14

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, p1

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    .line 517
    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v41

    .line 518
    .local v41, "vowelRowStateRight":I
    add-int/lit8 v41, v41, 0x1

    .line 519
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowMax()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_0

    .line 520
    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 521
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianVowelRowState()V

    goto/16 :goto_1

    .line 530
    .end local v41    # "vowelRowStateRight":I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const-class v43, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 534
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const-class v43, Lcom/diotek/ime/implement/setting/HwrSettings;

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 538
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->showImePicker()V

    goto/16 :goto_1

    .line 541
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v42

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_15

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->resetSymbolsPage()V

    goto/16 :goto_1

    .line 545
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    .line 548
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v42

    if-eqz v42, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v42

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_17

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(I)V

    .line 554
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v42

    if-eqz v42, :cond_0

    .line 555
    if-eqz v12, :cond_16

    .line 556
    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 558
    :cond_16
    const/16 v42, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->VOHWRInitByCursorMove(I)V

    goto/16 :goto_1

    .line 552
    :cond_17
    const/16 v42, 0x1

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    goto :goto_8

    .line 563
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v42

    if-eqz v42, :cond_19

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_18

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    .line 569
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    .line 572
    :cond_19
    const/16 v42, 0x8

    move/from16 v0, v30

    move/from16 v1, v42

    if-ne v0, v1, :cond_1a

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    .line 575
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    .line 581
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    const/16 v43, 0x2

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_1b

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    .line 587
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    .line 589
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    .line 591
    :cond_1c
    const/16 v42, 0x8

    move/from16 v0, v30

    move/from16 v1, v42

    if-ne v0, v1, :cond_1d

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    .line 594
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    .line 604
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move/from16 v0, p1

    rsub-int v0, v0, -0x144

    move/from16 v43, v0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_1

    .line 607
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v37

    .line 609
    .local v37, "recognizeMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v42

    if-eqz v42, :cond_1e

    .line 610
    if-eqz v12, :cond_1e

    .line 611
    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 612
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 616
    :cond_1e
    if-nez v37, :cond_1f

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    .line 620
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v42

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_20

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    .line 624
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setHwrPreviousInputRange(I)V

    .line 625
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    .line 633
    .end local v37    # "recognizeMode":I
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_21

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    .line 638
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v36

    .line 639
    .local v36, "prevInputRange":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 640
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    move/from16 v42, v0

    if-eqz v42, :cond_22

    if-eqz v36, :cond_22

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "SYMBOLS_PAGE"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v42, v0

    if-eqz v42, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_1

    .line 648
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    goto/16 :goto_1

    .line 652
    .end local v36    # "prevInputRange":I
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleShiftLong()V

    goto/16 :goto_1

    .line 655
    :sswitch_13
    const/16 v42, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleArrow(Z)V

    goto/16 :goto_1

    .line 660
    :sswitch_14
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleArrow(Z)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v42

    if-eqz v42, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    goto/16 :goto_1

    .line 666
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v42

    if-nez v42, :cond_0

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v16

    .line 668
    .local v16, "isCapslock":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v43, v0

    if-nez v16, :cond_23

    const/16 v42, 0x1

    :goto_9
    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    .line 668
    :cond_23
    const/16 v42, 0x0

    goto :goto_9

    .line 674
    .end local v16    # "isCapslock":Z
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_24

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 677
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 679
    if-eqz v12, :cond_0

    .line 684
    iget v14, v15, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 685
    .local v14, "imeOptions":I
    const/high16 v31, 0xc000000

    .line 688
    .local v31, "navigationFlags":I
    const v42, 0x400000ff

    and-int v3, v14, v42

    .line 690
    .local v3, "action":I
    const/16 v42, 0x6

    move/from16 v0, v42

    if-ne v3, v0, :cond_26

    const/16 v42, 0xa0

    move/from16 v0, v39

    move/from16 v1, v42

    if-eq v0, v1, :cond_25

    const/16 v42, 0xd0

    move/from16 v0, v39

    move/from16 v1, v42

    if-eq v0, v1, :cond_25

    const/16 v42, 0xe0

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_26

    .line 694
    :cond_25
    const/16 v42, 0x6

    move/from16 v0, v42

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_1

    .line 697
    :cond_26
    const/high16 v42, 0xc000000

    and-int v42, v42, v14

    if-nez v42, :cond_27

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x3d

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_1

    .line 718
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v42

    if-eqz v42, :cond_28

    .line 719
    const/16 v42, 0x7

    move/from16 v0, v42

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_1

    .line 721
    :cond_28
    const/16 v42, 0x5

    move/from16 v0, v42

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_1

    .line 726
    .end local v3    # "action":I
    .end local v14    # "imeOptions":I
    .end local v31    # "navigationFlags":I
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    .line 729
    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    .line 732
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->showLanguageSelectDialog()V

    goto/16 :goto_1

    .line 735
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v19

    .line 736
    .local v19, "isQuickCangjieMode":Z
    if-eqz v19, :cond_29

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setQickCangjieMode(Z)V

    .line 741
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    .line 739
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setQickCangjieMode(Z)V

    goto :goto_a

    .line 745
    .end local v19    # "isQuickCangjieMode":Z
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v42

    if-nez v42, :cond_2a

    const/16 v33, 0x1

    .line 746
    .local v33, "nextStrokeModeOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const/high16 v44, 0x656e0000

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v42

    sparse-switch v42, :sswitch_data_1

    .line 757
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setChineseStrokeModeOn(Z)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    .line 760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v42, v0

    if-eqz v42, :cond_0

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    goto/16 :goto_1

    .line 745
    .end local v33    # "nextStrokeModeOn":Z
    :cond_2a
    const/16 v33, 0x0

    goto :goto_b

    .line 748
    .restart local v33    # "nextStrokeModeOn":Z
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "ZH_CN_STROKE_MODE_ON"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_c

    .line 751
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "ZH_HK_STROKE_MODE_ON"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_c

    .line 754
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "ZH_TW_STROKE_MODE_ON"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_c

    .line 765
    .end local v33    # "nextStrokeModeOn":Z
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    .line 769
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, p1

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 770
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v42, v0

    if-nez v42, :cond_2c

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    if-eqz v42, :cond_2b

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/input/InputModule;->initComposingBuffer()V

    .line 777
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 779
    :cond_2c
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v42

    if-eqz v42, :cond_2e

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v42

    if-eqz v42, :cond_2d

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 783
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_2e

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/16 v44, -0x1

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 790
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v42

    if-eqz v42, :cond_2f

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 794
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    goto/16 :goto_1

    .line 798
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v18

    .line 800
    .local v18, "isPredictOn":Z
    if-eqz v18, :cond_30

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 803
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v43, v0

    if-nez v18, :cond_31

    const/16 v42, 0x1

    :goto_d
    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setPridictionFlag(Z)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateEngine()I

    .line 805
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    move/from16 v42, v0

    if-eqz v42, :cond_33

    const/high16 v42, 0x6b6f0000

    move/from16 v0, v22

    move/from16 v1, v42

    if-ne v0, v1, :cond_33

    const/16 v42, 0x1

    move/from16 v0, v30

    move/from16 v1, v42

    if-ne v0, v1, :cond_33

    .line 808
    const-string v43, "SETTINGS_DEFAULT_KOREAN_PREDICTION_ON"

    if-nez v18, :cond_32

    const/16 v42, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setBooleanToPreference(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 803
    :cond_31
    const/16 v42, 0x0

    goto :goto_d

    .line 808
    :cond_32
    const/16 v42, 0x0

    goto :goto_e

    .line 810
    :cond_33
    const-string v43, "SETTINGS_DEFAULT_FOREIGN_PREDICTION_ON"

    if-nez v18, :cond_34

    const/16 v42, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setBooleanToPreference(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_34
    const/16 v42, 0x0

    goto :goto_f

    .line 815
    .end local v18    # "isPredictOn":Z
    :sswitch_22
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->processMMKey(I)V

    goto/16 :goto_1

    .line 819
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const v44, 0x656e4742

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    .line 820
    .local v25, "languageId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v42

    if-nez v42, :cond_35

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->showTipsHwrInstallGuideDialog()V

    goto/16 :goto_1

    .line 823
    :cond_35
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 824
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 825
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    .line 831
    .end local v25    # "languageId":I
    :sswitch_24
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 832
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 833
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    .line 838
    :sswitch_25
    if-eqz v30, :cond_0

    .line 841
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 842
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 843
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToNormalKeyboardMode()V

    goto/16 :goto_1

    .line 848
    :sswitch_26
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 849
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 850
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    .line 855
    :sswitch_27
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 856
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 857
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const-class v43, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 862
    :sswitch_28
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 863
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 864
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, -0x75

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto/16 :goto_1

    .line 871
    :sswitch_29
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 872
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 873
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 876
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    move/from16 v42, v0

    if-nez v42, :cond_36

    .line 887
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x32

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->showModeChangePopupKeyboard(I)V

    goto/16 :goto_1

    .line 891
    :sswitch_2a
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 892
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 893
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->handleOcrKey()V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, -0x80

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto/16 :goto_1

    .line 899
    :sswitch_2b
    const/16 v42, 0x8

    move/from16 v0, v30

    move/from16 v1, v42

    if-eq v0, v1, :cond_0

    .line 902
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 903
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 904
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    .line 908
    :sswitch_2c
    const/16 v42, 0x7

    move/from16 v0, v30

    move/from16 v1, v42

    if-eq v0, v1, :cond_0

    .line 911
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 912
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 913
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToSplitKeyboardMode()V

    goto/16 :goto_1

    .line 917
    :sswitch_2d
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 918
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 919
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_1

    .line 924
    :sswitch_2e
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 925
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 926
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showHalfFullWidthSwitchDialog()V

    goto/16 :goto_1

    .line 930
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_37

    .line 931
    const/16 v42, 0x22

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 933
    :cond_37
    const/16 v42, 0x27

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_1

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 937
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_38

    .line 938
    const/16 v42, 0x3a

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_2

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 940
    :cond_38
    const/16 v42, 0x3b

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_3

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 944
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_39

    .line 945
    const/16 v42, 0x5f

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_4

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 947
    :cond_39
    const/16 v42, 0x2d

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_5

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 951
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_3a

    .line 952
    const/16 v42, 0x3f

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_6

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 954
    :cond_3a
    const/16 v42, 0x3a

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_7

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 958
    :sswitch_33
    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    .line 959
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 960
    const-string v42, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    .line 961
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->SearchHanja()V

    goto/16 :goto_1

    .line 964
    :sswitch_34
    if-eqz v20, :cond_45

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const/high16 v44, 0x656e0000

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v23

    .line 966
    .local v23, "languageIDForExclamation":I
    const/16 v21, 0x0

    .line 967
    .local v21, "isUrlEdit":Z
    const/16 v42, 0xd0

    move/from16 v0, v39

    move/from16 v1, v42

    if-eq v0, v1, :cond_3b

    const/16 v42, 0x20

    move/from16 v0, v39

    move/from16 v1, v42

    if-eq v0, v1, :cond_3b

    const/16 v42, 0x10

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_3c

    .line 970
    :cond_3b
    const/16 v21, 0x1

    .line 973
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_40

    .line 974
    if-eqz v21, :cond_3d

    .line 975
    const/16 v42, 0x5f

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_8

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 977
    :cond_3d
    invoke-static/range {v23 .. v23}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v42

    if-eqz v42, :cond_3e

    .line 978
    const/16 v42, 0x21

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_9

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 979
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_3f

    .line 980
    const v42, 0xff01

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 982
    :cond_3f
    const/16 v42, 0x21

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_a

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 985
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_41

    .line 986
    const v42, 0xff0c

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 987
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_42

    .line 988
    const/16 v42, 0x3001

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 990
    :cond_42
    if-eqz v21, :cond_43

    .line 991
    const/16 v42, 0x2c

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_b

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 993
    :cond_43
    invoke-static/range {v23 .. v23}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v42

    if-eqz v42, :cond_44

    .line 994
    const/16 v42, 0x60c

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_c

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 996
    :cond_44
    const/16 v42, 0x2c

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_d

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1001
    .end local v21    # "isUrlEdit":Z
    .end local v23    # "languageIDForExclamation":I
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const/high16 v44, 0x656e0000

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v23

    .line 1002
    .restart local v23    # "languageIDForExclamation":I
    invoke-static/range {v23 .. v23}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v42

    if-eqz v42, :cond_46

    .line 1003
    const/16 v42, 0x60c

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_e

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1004
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_47

    .line 1005
    const v42, 0xff0c

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1007
    :cond_47
    const/16 v42, 0x2c

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_f

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1012
    .end local v23    # "languageIDForExclamation":I
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_48

    .line 1013
    const/16 v42, 0x55e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_10

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1015
    :cond_48
    const/16 v42, 0x3a

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_11

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1019
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_49

    .line 1020
    const/16 v42, 0x7e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_12

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1022
    :cond_49
    const/16 v42, 0x2d

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_13

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1026
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_4a

    .line 1027
    const/16 v42, 0xab

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_14

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1029
    :cond_4a
    const/16 v42, 0x55c

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_15

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1033
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_4b

    .line 1034
    const/16 v42, 0xbb

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_16

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1036
    :cond_4b
    const/16 v42, 0x55d

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_17

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1040
    :sswitch_39
    if-eqz v20, :cond_5a

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v6

    .line 1042
    .local v6, "currentLanguageId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const/high16 v44, 0x656e0000

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v24

    .line 1043
    .local v24, "languageIDForQuestion":I
    const/16 v21, 0x0

    .line 1044
    .restart local v21    # "isUrlEdit":Z
    const/16 v42, 0xd0

    move/from16 v0, v39

    move/from16 v1, v42

    if-eq v0, v1, :cond_4c

    const/16 v42, 0x20

    move/from16 v0, v39

    move/from16 v1, v42

    if-eq v0, v1, :cond_4c

    const/16 v42, 0x10

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_4d

    .line 1047
    :cond_4c
    const/16 v21, 0x1

    .line 1049
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v42

    if-eqz v42, :cond_52

    .line 1050
    if-eqz v21, :cond_4f

    .line 1051
    const/high16 v42, 0x74680000

    move/from16 v0, v42

    if-ne v6, v0, :cond_4e

    .line 1052
    const-string v42, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1054
    :cond_4e
    const/16 v42, 0x2d

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_18

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1057
    :cond_4f
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v42

    if-eqz v42, :cond_50

    .line 1058
    const/16 v42, 0x61f

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_19

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1059
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_51

    .line 1060
    const v42, 0xff1f

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1064
    :cond_51
    const/16 v42, 0x3f

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_1a

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1067
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v42

    if-nez v42, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_54

    .line 1068
    :cond_53
    const/16 v42, 0x3002

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1070
    :cond_54
    if-eqz v21, :cond_55

    .line 1071
    const/16 v42, 0x2e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_1b

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1073
    :cond_55
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v42

    if-eqz v42, :cond_56

    .line 1074
    const/16 v42, 0x2e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_1c

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1075
    :cond_56
    const/high16 v42, 0x68690000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_57

    const/high16 v42, 0x626e0000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_57

    const/high16 v42, 0x6e650000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_57

    const/high16 v42, 0x61730000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_57

    const/high16 v42, 0x70610000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_57

    const/high16 v42, 0x6f720000

    move/from16 v0, v24

    move/from16 v1, v42

    if-ne v0, v1, :cond_58

    .line 1076
    :cond_57
    const/16 v42, 0x964

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1079
    :cond_58
    const/high16 v42, 0x6b6d0000

    move/from16 v0, v42

    if-ne v6, v0, :cond_59

    .line 1080
    const/16 v42, 0x17d4

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_1d

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1082
    :cond_59
    const/16 v42, 0x2e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_1e

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1087
    .end local v6    # "currentLanguageId":I
    .end local v21    # "isUrlEdit":Z
    .end local v24    # "languageIDForQuestion":I
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "INPUT_LANGUAGE"

    const/high16 v44, 0x656e0000

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v24

    .line 1088
    .restart local v24    # "languageIDForQuestion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_5b

    .line 1089
    const/16 v42, 0x3002

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1090
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_5d

    .line 1091
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v5

    .line 1092
    .local v5, "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v5, :cond_5c

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v42, v0

    if-eqz v42, :cond_5c

    .line 1093
    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v42

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1095
    :cond_5c
    const/16 v42, 0x2e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_1f

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1099
    .end local v5    # "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_5d
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v42

    if-eqz v42, :cond_5e

    .line 1100
    const/16 v42, 0x2e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_20

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1101
    :cond_5e
    const/high16 v42, 0x6b6d0000

    move/from16 v0, v24

    move/from16 v1, v42

    if-ne v0, v1, :cond_60

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v42

    if-eqz v42, :cond_5f

    .line 1103
    const/16 v42, 0x17d4

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1105
    :cond_5f
    const/16 v42, 0x2e

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1116
    :cond_60
    const/high16 v42, 0x68690000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_61

    const/high16 v42, 0x626e0000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_61

    const/high16 v42, 0x6e650000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_61

    const/high16 v42, 0x61730000

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_61

    const/high16 v42, 0x6f720000

    move/from16 v0, v24

    move/from16 v1, v42

    if-ne v0, v1, :cond_62

    .line 1117
    :cond_61
    const/16 v42, 0x964

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1119
    :cond_62
    const/16 v42, 0x2e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_21

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    .line 1135
    .end local v24    # "languageIDForQuestion":I
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->showSymbolPopupKeyboard()V

    goto/16 :goto_1

    .line 1151
    :sswitch_3b
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleMonthKey(I)V

    goto/16 :goto_1

    .line 1156
    :sswitch_3c
    const/16 v17, 0x0

    .line 1157
    .local v17, "isLeadingCharVowel":Z
    const/16 v42, -0x3a

    move/from16 v0, p1

    move/from16 v1, v42

    if-ne v0, v1, :cond_65

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 1159
    const-string v27, ""

    .line 1160
    .local v27, "leadingChar":Ljava/lang/String;
    if-eqz v12, :cond_63

    .line 1161
    const/16 v42, 0x1

    const/16 v43, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v27

    .end local v27    # "leadingChar":Ljava/lang/String;
    check-cast v27, Ljava/lang/String;

    .line 1163
    .restart local v27    # "leadingChar":Ljava/lang/String;
    :cond_63
    if-nez v27, :cond_64

    const-string v27, ""

    .line 1164
    :cond_64
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v42

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->getThaiCharType(I)I

    move-result v42

    const/16 v43, 0x6

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_65

    .line 1165
    const/16 v17, 0x1

    .line 1168
    .end local v27    # "leadingChar":Ljava/lang/String;
    :cond_65
    if-eqz v17, :cond_66

    .line 1169
    const/16 v42, -0x3d

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleThaiRangeChange(I)V

    goto/16 :goto_1

    .line 1171
    :cond_66
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleThaiRangeChange(I)V

    goto/16 :goto_1

    .line 1175
    .end local v17    # "isLeadingCharVowel":Z
    :sswitch_3d
    const/16 v42, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateAcuteAccentState(Z)V

    goto/16 :goto_1

    .line 1178
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->closeKeyboard()V

    goto/16 :goto_1

    .line 1181
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v42

    if-eqz v42, :cond_67

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    .line 1185
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v42, v0

    const-string v43, "IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET"

    const/16 v44, 0x1

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    .line 1191
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setPrevSoftFuncKeyCode(I)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndexByKeycode(I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChangedSoftFuncKbdIndex()Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateSoftFuncKeyboardView()V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    .line 1202
    :sswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setPrevSoftFuncKeyCode(I)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndexByKeycode(I)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChangedSoftFuncKbdIndex()Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v38

    .line 1206
    .local v38, "softFuncInfo":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v38 .. v38}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v43

    const/16 v44, 0x1

    invoke-interface/range {v42 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->setLanguage(IZ)V

    .line 1207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v42, v0

    if-eqz v42, :cond_68

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    .line 1211
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateSoftFuncKeyboardView()V

    goto/16 :goto_1

    .line 1215
    .end local v38    # "softFuncInfo":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    :sswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v42

    if-eqz v42, :cond_69

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1220
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    .line 1218
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto :goto_10

    .line 1223
    :sswitch_43
    sget-boolean v42, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    if-nez v42, :cond_6a

    const/16 v42, 0x1

    :goto_11
    sput-boolean v42, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    goto/16 :goto_1

    :cond_6a
    const/16 v42, 0x0

    goto :goto_11

    .line 1226
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v42

    if-eqz v42, :cond_6c

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v42

    if-nez v42, :cond_6b

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    .line 1231
    :cond_6b
    const/16 v42, 0x1

    sput-boolean v42, Lcom/diotek/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1236
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v42

    if-eqz v42, :cond_6f

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    .line 1238
    .local v4, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v4, :cond_0

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getSuggestionActiveIndex()I

    move-result v42

    add-int/lit8 v13, v42, -0x1

    .line 1243
    .local v13, "idx":I
    if-ltz v13, :cond_6d

    .line 1244
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1248
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/CharSequence;

    .line 1252
    .local v35, "prevCandidate":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1253
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v34, "originalCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1255
    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1257
    if-ltz v13, :cond_0

    .line 1261
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v32, "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move v11, v13

    .local v11, "i":I
    :goto_12
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v11, v0, :cond_6e

    .line 1263
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1266
    :cond_6e
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v42

    sub-int v42, v42, v13

    add-int/lit8 v26, v42, -0x1

    .line 1267
    .local v26, "lastCount":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1274
    .end local v4    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v11    # "i":I
    .end local v13    # "idx":I
    .end local v26    # "lastCount":I
    .end local v32    # "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v34    # "originalCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "prevCandidate":Ljava/lang/CharSequence;
    :cond_6f
    const/16 v42, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    .line 1277
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v42

    if-eqz v42, :cond_71

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v42

    if-nez v42, :cond_70

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    .line 1282
    :cond_70
    const/16 v42, 0x1

    sput-boolean v42, Lcom/diotek/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1287
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v42

    if-eqz v42, :cond_75

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    .line 1289
    .restart local v4    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v4, :cond_0

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v9

    .line 1293
    .local v9, "displayedCount":I
    if-eqz v9, :cond_0

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getSuggestionActiveIndex()I

    move-result v42

    add-int/lit8 v13, v42, 0x1

    .line 1298
    .restart local v13    # "idx":I
    if-ne v13, v9, :cond_74

    .line 1299
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-eq v9, v0, :cond_0

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_72

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_72
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    .restart local v32    # "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move v11, v9

    .restart local v11    # "i":I
    :goto_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v11, v0, :cond_73

    .line 1309
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 1312
    :cond_73
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1316
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1318
    .end local v11    # "i":I
    .end local v32    # "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_74
    if-ge v13, v9, :cond_0

    .line 1319
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1325
    .end local v4    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v9    # "displayedCount":I
    .end local v13    # "idx":I
    :cond_75
    const/16 v42, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    .line 1328
    :sswitch_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v42

    if-eqz v42, :cond_76

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1334
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v42

    if-nez v42, :cond_78

    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v42

    if-eqz v42, :cond_7a

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v42

    if-nez v42, :cond_7a

    .line 1336
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    .line 1337
    .restart local v4    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v4, :cond_0

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/CharSequence;

    .line 1345
    .restart local v35    # "prevCandidate":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1347
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .restart local v34    # "originalCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1349
    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1350
    .restart local v13    # "idx":I
    if-ltz v13, :cond_0

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v9

    .line 1355
    .restart local v9    # "displayedCount":I
    if-eqz v9, :cond_0

    .line 1359
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .restart local v32    # "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move v11, v13

    .restart local v11    # "i":I
    :goto_14
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v11, v0, :cond_79

    .line 1361
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 1363
    :cond_79
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1370
    .end local v4    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v9    # "displayedCount":I
    .end local v11    # "i":I
    .end local v13    # "idx":I
    .end local v32    # "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v34    # "originalCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "prevCandidate":Ljava/lang/CharSequence;
    :cond_7a
    const/16 v42, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    .line 1373
    :sswitch_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v42

    if-eqz v42, :cond_7b

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1379
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_7c

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1383
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v42

    if-nez v42, :cond_7e

    :cond_7d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v42

    if-eqz v42, :cond_82

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v42

    if-nez v42, :cond_82

    .line 1385
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    .line 1386
    .restart local v4    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v4, :cond_0

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v9

    .line 1391
    .restart local v9    # "displayedCount":I
    if-eqz v9, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-eq v9, v0, :cond_0

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_7f

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v42

    if-nez v42, :cond_80

    .line 1400
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v42 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1406
    :cond_80
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/CharSequence;

    .line 1407
    .restart local v35    # "prevCandidate":Ljava/lang/CharSequence;
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    .restart local v34    # "originalCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1409
    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1411
    .restart local v13    # "idx":I
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v13, v0, :cond_0

    .line 1415
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    .restart local v32    # "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move v11, v13

    .restart local v11    # "i":I
    :goto_15
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v11, v0, :cond_81

    .line 1417
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 1419
    :cond_81
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1424
    .end local v4    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v9    # "displayedCount":I
    .end local v11    # "i":I
    .end local v13    # "idx":I
    .end local v32    # "nextCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v34    # "originalCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "prevCandidate":Ljava/lang/CharSequence;
    :cond_82
    const/16 v42, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    .line 1427
    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->showModeChangePopupKeyboard()V

    goto/16 :goto_1

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f6 -> :sswitch_35
        -0x3f5 -> :sswitch_38
        -0x3f4 -> :sswitch_37
        -0x3f3 -> :sswitch_36
        -0x3f2 -> :sswitch_32
        -0x3f0 -> :sswitch_31
        -0x3ef -> :sswitch_30
        -0x3ee -> :sswitch_47
        -0x3ed -> :sswitch_46
        -0x3ec -> :sswitch_48
        -0x3ea -> :sswitch_45
        -0x3e9 -> :sswitch_44
        -0x3dc -> :sswitch_43
        -0x3db -> :sswitch_42
        -0x1f4 -> :sswitch_3
        -0x1f3 -> :sswitch_4
        -0x1f2 -> :sswitch_7
        -0x1f1 -> :sswitch_6
        -0x1f0 -> :sswitch_5
        -0x193 -> :sswitch_12
        -0x192 -> :sswitch_a
        -0x191 -> :sswitch_19
        -0x149 -> :sswitch_f
        -0x148 -> :sswitch_f
        -0x147 -> :sswitch_f
        -0x146 -> :sswitch_f
        -0x145 -> :sswitch_f
        -0x144 -> :sswitch_f
        -0x143 -> :sswitch_e
        -0x142 -> :sswitch_d
        -0x141 -> :sswitch_d
        -0x138 -> :sswitch_3f
        -0x137 -> :sswitch_10
        -0x136 -> :sswitch_1f
        -0x106 -> :sswitch_2
        -0x105 -> :sswitch_1
        -0xe5 -> :sswitch_3e
        -0xe4 -> :sswitch_20
        -0xe2 -> :sswitch_15
        -0xe1 -> :sswitch_17
        -0xe0 -> :sswitch_18
        -0xd1 -> :sswitch_1b
        -0xd0 -> :sswitch_1a
        -0xbe -> :sswitch_14
        -0xa6 -> :sswitch_41
        -0xa5 -> :sswitch_41
        -0xa4 -> :sswitch_41
        -0xa3 -> :sswitch_41
        -0xa2 -> :sswitch_40
        -0xa1 -> :sswitch_40
        -0x98 -> :sswitch_3b
        -0x97 -> :sswitch_3b
        -0x96 -> :sswitch_3b
        -0x95 -> :sswitch_3b
        -0x94 -> :sswitch_3b
        -0x93 -> :sswitch_3b
        -0x92 -> :sswitch_3b
        -0x91 -> :sswitch_3b
        -0x90 -> :sswitch_3b
        -0x8f -> :sswitch_3b
        -0x8e -> :sswitch_3b
        -0x8d -> :sswitch_3b
        -0x89 -> :sswitch_33
        -0x88 -> :sswitch_29
        -0x87 -> :sswitch_2d
        -0x86 -> :sswitch_2e
        -0x85 -> :sswitch_25
        -0x84 -> :sswitch_2c
        -0x83 -> :sswitch_2b
        -0x81 -> :sswitch_2f
        -0x80 -> :sswitch_2a
        -0x7f -> :sswitch_b
        -0x7d -> :sswitch_28
        -0x7c -> :sswitch_34
        -0x7a -> :sswitch_39
        -0x79 -> :sswitch_27
        -0x78 -> :sswitch_26
        -0x77 -> :sswitch_23
        -0x76 -> :sswitch_24
        -0x75 -> :sswitch_22
        -0x70 -> :sswitch_21
        -0x6f -> :sswitch_16
        -0x6e -> :sswitch_3a
        -0x6d -> :sswitch_14
        -0x6c -> :sswitch_11
        -0x6a -> :sswitch_14
        -0x69 -> :sswitch_13
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_c
        -0x65 -> :sswitch_9
        -0x64 -> :sswitch_8
        -0x3e -> :sswitch_3d
        -0x3c -> :sswitch_3c
        -0x3b -> :sswitch_3c
        -0x3a -> :sswitch_3c
        -0x5 -> :sswitch_0
    .end sparse-switch

    .line 746
    :sswitch_data_1
    .sparse-switch
        0x7a68434e -> :sswitch_1c
        0x7a68484b -> :sswitch_1d
        0x7a685457 -> :sswitch_1e
    .end sparse-switch

    .line 931
    :array_0
    .array-data 4
        0x27
        0x22
    .end array-data

    .line 933
    :array_1
    .array-data 4
        0x27
        0x22
    .end array-data

    .line 938
    :array_2
    .array-data 4
        0x3b
        0x3a
    .end array-data

    .line 940
    :array_3
    .array-data 4
        0x3b
        0x3a
    .end array-data

    .line 945
    :array_4
    .array-data 4
        0x2d
        0x5f
    .end array-data

    .line 947
    :array_5
    .array-data 4
        0x2d
        0x5f
    .end array-data

    .line 952
    :array_6
    .array-data 4
        0x3a
        0x3f
    .end array-data

    .line 954
    :array_7
    .array-data 4
        0x3a
        0x3f
    .end array-data

    .line 975
    :array_8
    .array-data 4
        0x2c
        0x5f
    .end array-data

    .line 978
    :array_9
    .array-data 4
        0x60c
        0x21
    .end array-data

    .line 982
    :array_a
    .array-data 4
        0x2c
        0x21
    .end array-data

    .line 991
    :array_b
    .array-data 4
        0x2c
        0x5f
    .end array-data

    .line 994
    :array_c
    .array-data 4
        0x60c
        0x21
    .end array-data

    .line 996
    :array_d
    .array-data 4
        0x2c
        0x21
    .end array-data

    .line 1003
    :array_e
    .array-data 4
        0x60c
        0x21
    .end array-data

    .line 1007
    :array_f
    .array-data 4
        0x2c
        0x21
    .end array-data

    .line 1013
    :array_10
    .array-data 4
        0x3a
        0x55e
    .end array-data

    .line 1015
    :array_11
    .array-data 4
        0x3a
        0x55e
    .end array-data

    .line 1020
    :array_12
    .array-data 4
        0x2d
        0x7e
    .end array-data

    .line 1022
    :array_13
    .array-data 4
        0x2d
        0x7e
    .end array-data

    .line 1027
    :array_14
    .array-data 4
        0x55c
        0xab
    .end array-data

    .line 1029
    :array_15
    .array-data 4
        0x55c
        0xab
    .end array-data

    .line 1034
    :array_16
    .array-data 4
        0x55d
        0xbb
    .end array-data

    .line 1036
    :array_17
    .array-data 4
        0x55d
        0xbb
    .end array-data

    .line 1054
    :array_18
    .array-data 4
        0x2e
        0x2d
    .end array-data

    .line 1058
    :array_19
    .array-data 4
        0x2e
        0x61f
    .end array-data

    .line 1064
    :array_1a
    .array-data 4
        0x2e
        0x3f
    .end array-data

    .line 1071
    :array_1b
    .array-data 4
        0x2e
        0x2d
    .end array-data

    .line 1074
    :array_1c
    .array-data 4
        0x2e
        0x61f
    .end array-data

    .line 1080
    :array_1d
    .array-data 4
        0x17d4
        0x3f
    .end array-data

    .line 1082
    :array_1e
    .array-data 4
        0x2e
        0x3f
    .end array-data

    .line 1095
    :array_1f
    .array-data 4
        0x2e
        0x3f
    .end array-data

    .line 1100
    :array_20
    .array-data 4
        0x2e
        0x61f
    .end array-data

    .line 1119
    :array_21
    .array-data 4
        0x2e
        0x3f
    .end array-data
.end method

.method public resetHandWritingHasBoonUsed()V
    .locals 1

    .prologue
    .line 2928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    .line 2929
    return-void
.end method

.method public sendDownUpKeyEvent(II)V
    .locals 23
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .prologue
    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 281
    .local v2, "when":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v19

    .line 282
    .local v19, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v17

    .line 284
    .local v17, "action":I
    const/4 v1, 0x3

    move/from16 v0, v17

    if-ne v0, v1, :cond_6

    .line 285
    const/16 v21, 0x0

    .line 286
    .local v21, "leadingChar":Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 287
    .local v16, "PrevLeadingChar":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    .line 289
    .local v22, "textOnEditor":Ljava/lang/CharSequence;
    if-eqz v19, :cond_0

    .line 290
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 291
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 293
    :try_start_0
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iget-object v0, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    if-eqz v21, :cond_6

    if-eqz v16, :cond_6

    if-eqz v22, :cond_6

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    .line 302
    .local v20, "isRtlString":Z
    if-nez v20, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x16

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x15

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_2
    if-eqz v20, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x15

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x16

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_4
    const/16 v1, 0x14

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x13

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 321
    .end local v16    # "PrevLeadingChar":Ljava/lang/CharSequence;
    .end local v20    # "isRtlString":Z
    .end local v21    # "leadingChar":Ljava/lang/CharSequence;
    .end local v22    # "textOnEditor":Ljava/lang/CharSequence;
    :cond_5
    :goto_1
    return-void

    .line 294
    .restart local v16    # "PrevLeadingChar":Ljava/lang/CharSequence;
    .restart local v21    # "leadingChar":Ljava/lang/CharSequence;
    .restart local v22    # "textOnEditor":Ljava/lang/CharSequence;
    :catch_0
    move-exception v18

    .line 295
    .local v18, "e":Ljava/lang/NullPointerException;
    const-string v1, "InputControllerImpl"

    const-string v4, "NullPointerException in onDownKeyEvent"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v16    # "PrevLeadingChar":Ljava/lang/CharSequence;
    .end local v18    # "e":Ljava/lang/NullPointerException;
    .end local v21    # "leadingChar":Ljava/lang/CharSequence;
    .end local v22    # "textOnEditor":Ljava/lang/CharSequence;
    :cond_6
    if-eqz v19, :cond_5

    .line 313
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move/from16 v7, p1

    move/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 317
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide v7, v2

    move/from16 v10, p1

    move/from16 v12, p2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public setFullWidthMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 2918
    iput-boolean p1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    .line 2919
    return-void
.end method

.method public setHwrCandidateStatus(IZ)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "isStatusLock"    # Z

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->setHwrCandidateStatus(IZ)V

    .line 2971
    return-void
.end method

.method public setPointingKeyboard()V
    .locals 3

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 2378
    return-void
.end method

.method public setTraceStatus()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2301
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 2302
    .local v1, "inputMethod":I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 2303
    .local v2, "language":I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    .line 2304
    .local v3, "strokeModeOn":Z
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v4, :cond_1

    const/high16 v4, 0x7a680000

    if-eq v2, v4, :cond_0

    const v4, 0x7a68434e

    if-eq v2, v4, :cond_0

    const v4, 0x7a68484b

    if-eq v2, v4, :cond_0

    const v4, 0x7a685457

    if-ne v2, v4, :cond_1

    .line 2309
    :cond_0
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    .line 2373
    :goto_0
    return-void

    .line 2310
    :cond_1
    const/high16 v4, 0x6a610000

    if-ne v2, v4, :cond_2

    .line 2311
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2312
    :cond_2
    const/high16 v4, 0x74720000

    if-ne v2, v4, :cond_3

    .line 2313
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2314
    :cond_3
    if-ne v1, v7, :cond_7

    .line 2315
    sparse-switch v2, :sswitch_data_0

    .line 2336
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2317
    :sswitch_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    .line 2318
    .local v0, "hangulMode":I
    const-string v4, "V1_5"

    const-string v5, "V1_5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v0, v7, :cond_4

    if-ne v0, v9, :cond_5

    .line 2321
    :cond_4
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2323
    :cond_5
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2329
    .end local v0    # "hangulMode":I
    :sswitch_1
    if-eqz v3, :cond_6

    .line 2330
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2332
    :cond_6
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2339
    :cond_7
    const/4 v4, 0x7

    if-ne v1, v4, :cond_8

    .line 2340
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2341
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2342
    sparse-switch v2, :sswitch_data_1

    .line 2363
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2344
    :sswitch_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    .line 2345
    .restart local v0    # "hangulMode":I
    const-string v4, "V1_5"

    const-string v5, "V1_5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eq v0, v7, :cond_9

    if-ne v0, v9, :cond_a

    .line 2348
    :cond_9
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2350
    :cond_a
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2356
    .end local v0    # "hangulMode":I
    :sswitch_3
    if-eqz v3, :cond_b

    .line 2357
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2359
    :cond_b
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    .line 2367
    :cond_c
    const/high16 v4, 0x6b6f0000

    if-ne v2, v4, :cond_d

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2368
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto/16 :goto_0

    .line 2370
    :cond_d
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto/16 :goto_0

    .line 2315
    :sswitch_data_0
    .sparse-switch
        0x6b6f0000 -> :sswitch_0
        0x7a68434e -> :sswitch_1
        0x7a68484b -> :sswitch_1
        0x7a685457 -> :sswitch_1
    .end sparse-switch

    .line 2342
    :sswitch_data_1
    .sparse-switch
        0x6b6f0000 -> :sswitch_2
        0x7a68434e -> :sswitch_3
        0x7a68484b -> :sswitch_3
        0x7a685457 -> :sswitch_3
    .end sparse-switch
.end method

.method public setVietnameseTelexComposing()V
    .locals 1

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    .line 2959
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->setVietnameseTelexComposing()V

    .line 2961
    :cond_0
    return-void
.end method

.method public swipeLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2284
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    .line 2287
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    .line 2288
    return-void
.end method

.method public swipeRight()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2292
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    .line 2295
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    .line 2296
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 1

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updateVOHWRSuggestion()V

    .line 2939
    return-void
.end method

.method public updateViewStatus()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/16 v9, 0x21

    const/4 v4, 0x0

    .line 323
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 324
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, "highlightEnd":I
    const/4 v0, 0x0

    .line 333
    .local v0, "cursor":I
    const/4 v1, 0x0

    .line 336
    .local v1, "displayCursor":I
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 338
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 342
    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    .line 343
    move v2, v0

    .line 345
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 350
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isMultiTapRnunnig()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    .line 351
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 353
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 371
    :cond_3
    :goto_1
    if-nez v2, :cond_7

    move v1, v4

    .line 374
    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    iget-object v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    iget-object v7, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 379
    iget-object v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v3, v5, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 381
    if-nez v1, :cond_4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 382
    :cond_4
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursorChangingOnComposing(I)V

    goto/16 :goto_0

    .line 356
    :cond_5
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 357
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 360
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-eq v2, v6, :cond_6

    .line 361
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 364
    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    move v1, v5

    .line 371
    goto :goto_2
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 0

    .prologue
    .line 2273
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->writeDBdataToFileOnFinishInput()V

    .line 2274
    return-void
.end method
