.class public abstract Lcom/diotek/ime/framework/inputmode/InputModeManager;
.super Ljava/lang/Object;
.source "InputModeManager.java"

# interfaces
.implements Lcom/diotek/ime/framework/inputmode/InputMode;


# static fields
.field private static buildcarrier:Ljava/lang/String;

.field private static mPrevInputMethod:I


# instance fields
.field private mEnableSecondarySymbol:Z

.field private mFloatingToQwerty:Z

.field protected mHWRFloatingEnable:Z

.field protected mHwrPreviousInputRange:I

.field private mInputLanguage:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputMethodKor:I

.field protected mInputRange:I

.field private mIsChangedInputRange:Z

.field private mIsChangedSoftFuncKbdIndex:Z

.field private mIsChineseStrokeModeOn:Z

.field private mIsEnableOCR:Z

.field private mIsEnterForWebNavigation:Z

.field private mIsHWRNotSupportInputType:Z

.field protected mIsKorMode:Z

.field protected mIsNoteMode:Z

.field private mIsQuickCangieMode:Z

.field protected mIsTabletMode:Z

.field protected mIsVoiceInstalled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLanguageListForSecondarySymbol:Ljava/lang/String;

.field private mNeedUpdateKeyboardView:Z

.field private mPrevSoftFuncKbdKeyCode:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSoftFuncKbdIndex:I

.field private mStartedInputRange:I

.field private mUseSymbolLayoutByATT:Z

.field private mUseVietnameseTelex:Z

.field protected mUseVoiceInput:Z

.field protected mValidInputMethod:I

.field mVisibleSoftFuncKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->buildcarrier:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 58
    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 59
    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 60
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    .line 61
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsVoiceInstalled:Z

    .line 62
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsNoteMode:Z

    .line 63
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    .line 64
    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    .line 65
    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHwrPreviousInputRange:I

    .line 66
    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    .line 67
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHWRFloatingEnable:Z

    .line 68
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    .line 69
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVoiceInput:Z

    .line 71
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseSymbolLayoutByATT:Z

    .line 72
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mFloatingToQwerty:Z

    .line 73
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mNeedUpdateKeyboardView:Z

    .line 76
    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    .line 77
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mStartedInputRange:I

    .line 79
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsQuickCangieMode:Z

    .line 80
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChineseStrokeModeOn:Z

    .line 81
    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 82
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVietnameseTelex:Z

    .line 83
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    .line 84
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnterForWebNavigation:Z

    .line 85
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    .line 499
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    .line 1643
    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevSoftFuncKbdKeyCode:I

    .line 1651
    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    .line 1733
    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    .line 92
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 93
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 94
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    .line 95
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "TABLET_MODE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    .line 96
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_VOICE_INPUT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVoiceInput:Z

    .line 97
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "NOTE_KEYPAD_TYPE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsNoteMode:Z

    .line 98
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingVietnameseTelex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVietnameseTelex:Z

    .line 99
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 100
    const-string v0, "ATT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_ReplaceSymbolLayout4"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseSymbolLayoutByATT:Z

    .line 102
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_EnableSymbolInSecondary"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mLanguageListForSecondarySymbol:Ljava/lang/String;

    .line 104
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSecondarySymbolStatus(I)V

    .line 105
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 106
    return-void
.end method

.method private getSoftFuncKbdIndexByKeycode(I)I
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 1689
    const/4 v1, 0x0

    .line 1691
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v3

    .line 1692
    .local v3, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    .line 1693
    .local v2, "key":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getKeyCode()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1698
    .end local v2    # "key":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    :cond_0
    return v1

    .line 1696
    .restart local v2    # "key":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getValideDigitEditMMKeyCode([III)I
    .locals 6
    .param p1, "valideMMCodes"    # [I
    .param p2, "usedMMKeyCode"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 1180
    array-length v4, p1

    if-lez v4, :cond_2

    .line 1181
    const-string v4, "VOICE"

    iget-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1182
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1183
    .local v3, "mmCode":I
    const/16 v4, -0x78

    if-ne v3, v4, :cond_0

    .line 1194
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mmCode":I
    :goto_1
    return v3

    .line 1182
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "mmCode":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1189
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mmCode":I
    :cond_1
    if-eq p2, p3, :cond_2

    move v3, p2

    .line 1190
    goto :goto_1

    .line 1194
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private isChangedMMKeyInputMode(I)Z
    .locals 3
    .param p1, "prevInputMethod"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1783
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-ne v2, v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_3

    :cond_1
    move v0, v1

    .line 1789
    :cond_2
    :goto_0
    return v0

    .line 1786
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-ne v2, p1, :cond_2

    move v0, v1

    .line 1789
    goto :goto_0
.end method

.method private isHandwritingInputEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 853
    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "USE_HWR_MODE"

    invoke-interface {v4, v5, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_HWR_ON"

    invoke-interface {v4, v5, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 855
    .local v1, "useHwrInput":Z
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v0

    .line 857
    .local v0, "isTalkbackOn":Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "isTalkbackOn":Z
    .end local v1    # "useHwrInput":Z
    :cond_0
    move v1, v3

    .line 853
    goto :goto_0

    .restart local v0    # "isTalkbackOn":Z
    .restart local v1    # "useHwrInput":Z
    :cond_1
    move v2, v3

    .line 857
    goto :goto_1
.end method

.method private isSettingEnabled()Z
    .locals 3

    .prologue
    .line 900
    const/4 v0, 0x1

    .line 901
    .local v0, "isSettingEnabled":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 903
    :cond_0
    const/4 v0, 0x0

    .line 905
    :cond_1
    return v0
.end method

.method private setInputRangeForSoftFuncKbd(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1668
    rsub-int v0, p1, -0xa1

    .line 1670
    .local v0, "softFuncKbdType":I
    const/16 v1, -0xa1

    if-ne v0, v1, :cond_0

    .line 1671
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 1677
    :goto_0
    return-void

    .line 1672
    :cond_0
    const/16 v1, -0xa2

    if-ne v0, v1, :cond_1

    .line 1673
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    goto :goto_0

    .line 1675
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V
    .locals 13
    .param p1, "chanageLang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/high16 v12, 0x62670000

    const/4 v11, 0x2

    const/4 v8, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1829
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 1830
    .local v2, "currentInputMethod":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v3

    .line 1831
    .local v3, "currentPrefInputMethod":I
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1832
    .local v6, "sPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1833
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v1

    .line 1834
    .local v1, "changeInputMethod":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    .line 1835
    .local v0, "bHWRMode":Z
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    .line 1836
    .local v5, "langId":I
    if-eq v2, v8, :cond_0

    const/16 v7, 0x8

    if-ne v2, v7, :cond_11

    .line 1837
    :cond_0
    sparse-switch v5, :sswitch_data_0

    .line 1890
    const/high16 v7, 0x64650000

    if-ne v5, v7, :cond_8

    .line 1891
    if-gt v1, v9, :cond_1

    const-string v7, "SWIFTKEY"

    const-string v8, "XT9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-ne v1, v9, :cond_7

    .line 1892
    :cond_1
    const/4 v1, 0x1

    .line 1921
    :goto_0
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1922
    invoke-static {v1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 1925
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2027
    :goto_2
    return-void

    .line 1842
    :sswitch_0
    packed-switch v1, :pswitch_data_0

    .line 1850
    if-ne v2, v8, :cond_3

    iget-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v7, :cond_2

    const/high16 v7, 0x6b6f0000

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    if-ne v7, v8, :cond_2

    :cond_3
    if-eq v3, v1, :cond_2

    .line 1852
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1853
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_1

    .line 1844
    :pswitch_0
    if-ne v3, v9, :cond_2

    .line 1845
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1846
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_1

    .line 1859
    :sswitch_1
    packed-switch v1, :pswitch_data_1

    .line 1877
    if-eq v3, v1, :cond_2

    .line 1878
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1879
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 1880
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1881
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1861
    :pswitch_1
    if-eq v3, v1, :cond_4

    .line 1862
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1863
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 1864
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1866
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1869
    :pswitch_2
    if-eq v2, v8, :cond_5

    if-eq v3, v1, :cond_5

    .line 1870
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1871
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 1872
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1874
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1883
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1894
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1896
    :cond_8
    const/high16 v7, 0x76690000

    if-ne v5, v7, :cond_b

    .line 1897
    if-gt v1, v9, :cond_9

    const-string v7, "SWIFTKEY"

    const-string v8, "XT9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-ne v1, v9, :cond_a

    .line 1898
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1900
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1902
    :cond_b
    if-ne v5, v12, :cond_d

    .line 1903
    if-le v1, v9, :cond_c

    .line 1904
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1906
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1908
    :cond_d
    const/high16 v7, 0x74720000

    if-ne v5, v7, :cond_f

    .line 1909
    if-le v1, v11, :cond_e

    .line 1910
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1912
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1915
    :cond_f
    if-eq v1, v9, :cond_10

    .line 1916
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1918
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1927
    :cond_11
    sparse-switch v5, :sswitch_data_1

    .line 1993
    const/high16 v7, 0x64650000

    if-eq v5, v7, :cond_12

    const/high16 v7, 0x76690000

    if-ne v5, v7, :cond_22

    .line 1994
    :cond_12
    if-gt v1, v9, :cond_13

    const-string v7, "SWIFTKEY"

    const-string v8, "XT9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_21

    if-ne v1, v9, :cond_21

    .line 1995
    :cond_13
    const/4 v1, 0x1

    .line 2018
    :goto_3
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2019
    if-nez v0, :cond_14

    .line 2020
    invoke-static {v1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 2022
    :cond_14
    invoke-static {v1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 2025
    :cond_15
    :goto_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 1932
    :sswitch_2
    packed-switch v1, :pswitch_data_2

    .line 1943
    iget-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v7, :cond_16

    const/high16 v7, 0x6b6f0000

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    if-eq v7, v8, :cond_15

    :cond_16
    if-eqz v2, :cond_17

    if-nez v3, :cond_15

    .line 1945
    :cond_17
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1946
    if-nez v0, :cond_18

    .line 1947
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 1949
    :cond_18
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_4

    .line 1934
    :pswitch_3
    if-eq v2, v9, :cond_19

    if-ne v3, v9, :cond_15

    .line 1935
    :cond_19
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1936
    if-nez v0, :cond_1a

    .line 1937
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 1939
    :cond_1a
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_4

    .line 1955
    :sswitch_3
    packed-switch v1, :pswitch_data_3

    .line 1977
    if-eq v2, v1, :cond_15

    .line 1978
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1979
    if-nez v0, :cond_1b

    .line 1980
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 1982
    :cond_1b
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 1983
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1984
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1957
    :pswitch_4
    if-eq v2, v1, :cond_1d

    .line 1958
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1959
    if-nez v0, :cond_1c

    .line 1960
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 1962
    :cond_1c
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 1964
    :cond_1d
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1967
    :pswitch_5
    if-eq v2, v1, :cond_1f

    .line 1968
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1969
    if-nez v0, :cond_1e

    .line 1970
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 1972
    :cond_1e
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    .line 1974
    :cond_1f
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1986
    :cond_20
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1997
    :cond_21
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1999
    :cond_22
    if-ne v5, v12, :cond_24

    .line 2000
    if-le v1, v9, :cond_23

    .line 2001
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 2003
    :cond_23
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2005
    :cond_24
    const/high16 v7, 0x74720000

    if-ne v5, v7, :cond_26

    .line 2006
    if-le v1, v11, :cond_25

    .line 2007
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 2009
    :cond_25
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2012
    :cond_26
    if-eq v1, v9, :cond_27

    .line 2013
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2015
    :cond_27
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1837
    :sswitch_data_0
    .sparse-switch
        0x6a610000 -> :sswitch_1
        0x6b6f0000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch

    .line 1842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1859
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1927
    :sswitch_data_1
    .sparse-switch
        0x6a610000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_2
        0x7a68434e -> :sswitch_2
        0x7a68484b -> :sswitch_2
        0x7a685457 -> :sswitch_2
    .end sparse-switch

    .line 1932
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 1955
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected abstract computeValidInputMethod()I
.end method

.method public enableSecondarySymbol()Z
    .locals 1

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    return v0
.end method

.method public getCurrentEnableInputMode()[I
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1545
    new-array v3, v11, [I

    fill-array-data v3, :array_0

    .line 1552
    .local v3, "inputModes":[I
    iget-object v8, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 1554
    .local v2, "info":Landroid/view/inputmethod/EditorInfo;
    iget v8, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v8, 0xf

    .line 1555
    .local v0, "editorClass":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    .line 1557
    .local v5, "method":I
    array-length v6, v3

    .line 1558
    .local v6, "validCount":I
    const/4 v8, 0x3

    if-ne v0, v8, :cond_2

    .line 1559
    aput v9, v3, v9

    .line 1560
    add-int/lit8 v6, v6, -0x1

    .line 1580
    :cond_0
    :goto_0
    new-array v7, v6, [I

    .line 1581
    .local v7, "validInputModes":[I
    const/4 v4, 0x0

    .line 1582
    .local v4, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_6

    .line 1583
    aget v8, v3, v1

    if-eqz v8, :cond_1

    .line 1584
    aget v8, v3, v1

    aput v8, v7, v4

    .line 1585
    add-int/lit8 v4, v4, 0x1

    .line 1582
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1561
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v7    # "validInputModes":[I
    :cond_2
    if-ne v0, v10, :cond_3

    .line 1562
    aput v9, v3, v9

    .line 1563
    aput v9, v3, v10

    .line 1564
    add-int/lit8 v6, v6, -0x2

    goto :goto_0

    .line 1565
    :cond_3
    if-ne v0, v11, :cond_4

    .line 1566
    aput v9, v3, v9

    .line 1567
    aput v9, v3, v10

    .line 1568
    add-int/lit8 v6, v6, -0x2

    goto :goto_0

    .line 1570
    :cond_4
    if-eqz v5, :cond_5

    const/4 v8, 0x7

    if-eq v5, v8, :cond_5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_0

    .line 1572
    :cond_5
    const/4 v8, 0x1

    aput v9, v3, v8

    .line 1573
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1589
    .restart local v1    # "i":I
    .restart local v4    # "j":I
    .restart local v7    # "validInputModes":[I
    :cond_6
    return-object v7

    .line 1545
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public getCurrentKeypadType()I
    .locals 5

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "inputMethod":I
    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_QWERTY_KEYPAD_TYPE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 209
    .local v1, "qwertyKeypadType":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 210
    const/16 v0, 0x8

    .line 226
    .end local v1    # "qwertyKeypadType":I
    :cond_0
    :goto_0
    return v0

    .line 211
    .restart local v1    # "qwertyKeypadType":I
    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 212
    const/4 v0, 0x7

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    .end local v1    # "qwertyKeypadType":I
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    .line 221
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMultiModalKeyCode()I
    .locals 28

    .prologue
    .line 939
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v15

    .line 940
    .local v15, "method":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getLastUsedMmKeyCode()I

    move-result v21

    .line 942
    .local v21, "usedMMCode":I
    const/4 v13, 0x1

    .line 943
    .local v13, "isfloatingHWREnable":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v11

    .line 944
    .local v11, "isPhoneNumberMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v10

    .line 945
    .local v10, "isPasswordInputType":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v12

    .line 946
    .local v12, "isSetupWizardRunning":Z
    const/16 v25, -0x78

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    if-nez v11, :cond_0

    if-eqz v12, :cond_1

    if-eqz v10, :cond_1

    .line 948
    :cond_0
    const/16 v21, -0x79

    .line 951
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v23

    .line 953
    .local v23, "validMMCodes":[I
    if-eqz v23, :cond_2

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    if-gtz v25, :cond_4

    .line 954
    :cond_2
    const/16 v16, -0x1

    .line 1176
    :cond_3
    :goto_0
    return v16

    .line 957
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 958
    const-string v25, "VOICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 959
    move-object/from16 v4, v23

    .local v4, "arr$":[I
    array-length v14, v4

    .local v14, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v14, :cond_b

    aget v16, v4, v8

    .line 960
    .local v16, "mmCode":I
    const/16 v25, -0x78

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 959
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 964
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_5
    const-string v25, "SETTING"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 965
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v14, :cond_b

    aget v16, v4, v8

    .line 966
    .restart local v16    # "mmCode":I
    const/16 v25, -0x79

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 965
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 970
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_6
    const-string v25, "CLIPBOARD"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 971
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v14, :cond_b

    aget v16, v4, v8

    .line 972
    .restart local v16    # "mmCode":I
    const/16 v25, -0x7d

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 971
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 976
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_7
    const-string v25, "OCR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 977
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_4
    if-ge v8, v14, :cond_b

    aget v16, v4, v8

    .line 978
    .restart local v16    # "mmCode":I
    const/16 v25, -0x80

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 977
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 982
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_8
    const-string v25, "KEYBOARD"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 983
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_5
    if-ge v8, v14, :cond_b

    aget v16, v4, v8

    .line 984
    .restart local v16    # "mmCode":I
    const/16 v25, -0x76

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 983
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 990
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_9
    const-string v25, "VOICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v25, v0

    const-string v26, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 992
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_6
    if-ge v8, v14, :cond_b

    aget v16, v4, v8

    .line 993
    .restart local v16    # "mmCode":I
    const/16 v25, -0x78

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 992
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 997
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_a
    const-string v25, "HANDWRITING"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 998
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_7
    if-ge v8, v14, :cond_b

    aget v16, v4, v8

    .line 999
    .restart local v16    # "mmCode":I
    const/16 v25, -0x77

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 998
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1006
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v25

    if-nez v25, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v25

    if-eqz v25, :cond_10

    :cond_c
    const/4 v9, 0x1

    .line 1007
    .local v9, "isDigitEditor":Z
    :goto_8
    invoke-static/range {v21 .. v21}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 1008
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/util/Utils;->getValidCMSymbol(II)I

    move-result v22

    .line 1010
    .local v22, "vaildCMCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 1011
    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v20

    .line 1012
    .local v20, "stringValueofCMCode":Ljava/lang/String;
    if-eqz v20, :cond_d

    const-string v25, "\\/:*?\"<>|;"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 1014
    const/16 v22, 0x2c

    .line 1018
    .end local v20    # "stringValueofCMCode":Ljava/lang/String;
    :cond_d
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 1019
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1021
    .local v17, "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1022
    .local v6, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v25, "last_used_mm_key_code"

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1023
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1025
    .end local v6    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "pref":Landroid/content/SharedPreferences;
    :cond_e
    if-eqz v9, :cond_12

    .line 1026
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_11

    .line 1027
    const-string v25, "VOICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 1028
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    if-ge v8, v14, :cond_f

    aget v16, v4, v8

    .line 1029
    .restart local v16    # "mmCode":I
    const/16 v25, -0x78

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 1035
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mmCode":I
    :cond_f
    const/16 v25, 0x0

    aget v16, v23, v25

    goto/16 :goto_0

    .line 1006
    .end local v9    # "isDigitEditor":Z
    .end local v22    # "vaildCMCode":I
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 1037
    .restart local v9    # "isDigitEditor":Z
    .restart local v22    # "vaildCMCode":I
    :cond_11
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 1040
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->isFileNameInputOption()Z

    move-result v25

    if-eqz v25, :cond_13

    const/16 v25, 0x3f

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 1041
    const/16 v16, 0x2c

    goto/16 :goto_0

    :cond_13
    move/from16 v16, v22

    .line 1043
    goto/16 :goto_0

    .line 1047
    .end local v22    # "vaildCMCode":I
    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getMultiModalKeyInputMethod()I

    move-result v18

    .line 1048
    .local v18, "prevInputMethod":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChangedMMKeyInputMode(I)Z

    move-result v25

    if-eqz v25, :cond_2c

    const/16 v25, -0x79

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_2c

    const/16 v25, -0x80

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_2c

    .line 1050
    if-eqz v18, :cond_15

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    .line 1051
    :cond_15
    if-eqz v9, :cond_1f

    if-eqz v15, :cond_16

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_1f

    .line 1052
    :cond_16
    const/16 v25, -0x88

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v21

    .line 1125
    :cond_17
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v19

    .line 1126
    .local v19, "range":I
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1127
    const/16 v25, 0x7

    move/from16 v0, v25

    if-eq v15, v0, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v25

    if-nez v25, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v25

    if-nez v25, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v25

    if-nez v25, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlEmailMode()Z

    move-result v25

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v25

    const/16 v26, 0xd

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isNoEmoticonInput()Z

    move-result v25

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v25

    const/16 v26, 0x1b

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableEmoticonInput()Z

    move-result v25

    if-nez v25, :cond_18

    .line 1135
    const/16 v21, -0x87

    .line 1152
    :cond_18
    const/16 v24, -0x1

    .line 1153
    .local v24, "validMMKeyCode":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v7, v0, :cond_19

    .line 1154
    aget v25, v23, v7

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f

    .line 1155
    move/from16 v24, v21

    .line 1160
    :cond_19
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    if-gtz v25, :cond_1a

    .line 1161
    move/from16 v24, v21

    .line 1164
    :cond_1a
    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 1165
    const/16 v25, 0x0

    aget v24, v23, v25

    .line 1166
    const/16 v25, -0x85

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v25, v0

    if-eqz v25, :cond_1d

    :cond_1b
    const/16 v25, -0x83

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1d

    :cond_1c
    const/16 v25, -0x84

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v25, v0

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    .line 1170
    :cond_1d
    const/16 v24, -0x1

    .line 1171
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1e

    .line 1172
    const/16 v25, 0x1

    aget v24, v23, v25

    :cond_1e
    move/from16 v16, v24

    .line 1176
    goto/16 :goto_0

    .line 1054
    .end local v7    # "i":I
    .end local v19    # "range":I
    .end local v24    # "validMMKeyCode":I
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v25

    if-eqz v25, :cond_20

    .line 1055
    const/16 v21, -0x76

    goto/16 :goto_9

    .line 1057
    :cond_20
    const/16 v21, -0x88

    goto/16 :goto_9

    .line 1060
    :cond_21
    const/16 v25, 0x2

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 1061
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v15, v0, :cond_23

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 1063
    const/16 v21, -0x88

    goto/16 :goto_9

    .line 1065
    :cond_22
    const/16 v21, -0x77

    goto/16 :goto_9

    .line 1068
    :cond_23
    const/16 v21, -0x77

    goto/16 :goto_9

    .line 1070
    :cond_24
    const/16 v25, 0x7

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    .line 1071
    move/from16 v5, v21

    .line 1072
    .local v5, "backupMMCode":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v25

    if-eqz v25, :cond_25

    .line 1073
    const/16 v21, -0x76

    .line 1080
    :goto_b
    if-eqz v9, :cond_17

    const/16 v25, 0x7

    move/from16 v0, v25

    if-ne v15, v0, :cond_17

    .line 1081
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v21

    goto/16 :goto_9

    .line 1077
    :cond_25
    const/16 v21, -0x88

    goto :goto_b

    .line 1083
    .end local v5    # "backupMMCode":I
    :cond_26
    const/16 v25, 0x8

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_2b

    .line 1084
    move/from16 v5, v21

    .line 1085
    .restart local v5    # "backupMMCode":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v25

    if-eqz v25, :cond_29

    .line 1086
    const/16 v25, 0x8

    move/from16 v0, v25

    if-eq v15, v0, :cond_28

    .line 1087
    if-eqz v13, :cond_27

    .line 1088
    const/16 v21, -0x88

    .line 1103
    :goto_c
    if-eqz v9, :cond_17

    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v15, v0, :cond_17

    .line 1104
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v21

    goto/16 :goto_9

    .line 1090
    :cond_27
    const/16 v21, -0x76

    goto :goto_c

    .line 1093
    :cond_28
    const/16 v21, -0x76

    goto :goto_c

    .line 1096
    :cond_29
    const/16 v25, 0x8

    move/from16 v0, v25

    if-eq v15, v0, :cond_2a

    .line 1097
    const/16 v21, -0x88

    goto :goto_c

    .line 1099
    :cond_2a
    const/16 v21, -0x77

    goto :goto_c

    .line 1106
    .end local v5    # "backupMMCode":I
    :cond_2b
    const/16 v25, 0x6

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 1107
    const/16 v21, -0x80

    goto/16 :goto_9

    .line 1109
    :cond_2c
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v25

    if-eqz v25, :cond_17

    .line 1111
    const/16 v25, -0x76

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_2d

    const/16 v25, -0x77

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 1113
    :cond_2d
    move/from16 v5, v21

    .line 1114
    .restart local v5    # "backupMMCode":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 1115
    const/16 v21, -0x76

    .line 1119
    :goto_d
    if-eqz v9, :cond_17

    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v15, v0, :cond_17

    .line 1120
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v21

    goto/16 :goto_9

    .line 1117
    :cond_2e
    const/16 v21, -0x77

    goto :goto_d

    .line 1153
    .end local v5    # "backupMMCode":I
    .restart local v7    # "i":I
    .restart local v19    # "range":I
    .restart local v24    # "validMMKeyCode":I
    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a
.end method

.method public getCurrentPreferenceInputMethod()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 230
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 231
    .local v0, "inputMethod":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v1

    .line 232
    .local v1, "preferenceInputMethod":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    if-nez v4, :cond_2

    .line 234
    const/4 v0, 0x0

    .line 250
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    :cond_0
    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-eqz v4, :cond_7

    .line 253
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v3

    .line 255
    .local v3, "symbolKeyboardType":I
    if-ne v3, v6, :cond_6

    .line 256
    const/4 v0, 0x0

    .line 267
    .end local v3    # "symbolKeyboardType":I
    :cond_1
    :goto_1
    return v0

    .line 236
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    .line 240
    .local v2, "privateImeOptionsInputType":I
    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    if-nez v1, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x9

    if-ne v2, v4, :cond_5

    .line 245
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_5
    move v0, v1

    goto :goto_0

    .line 257
    .end local v2    # "privateImeOptionsInputType":I
    .restart local v3    # "symbolKeyboardType":I
    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 258
    const/4 v0, 0x1

    goto :goto_1

    .line 260
    .end local v3    # "symbolKeyboardType":I
    :cond_7
    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v5, 0x6c6f0000

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v5, 0x6b6d0000

    if-ne v4, v5, :cond_9

    :cond_8
    if-ne v1, v6, :cond_9

    .line 261
    const/4 v0, 0x0

    goto :goto_1

    .line 262
    :cond_9
    iget-boolean v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-nez v4, :cond_1

    .line 263
    move v0, v1

    goto :goto_1
.end method

.method public getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    .locals 3

    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v1

    .line 1632
    .local v1, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getSoftFuncKbdIndex()I

    move-result v0

    .line 1633
    .local v0, "index":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1634
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    .line 1637
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    goto :goto_0
.end method

.method public getCurrentSoftFuncKeyCode()I
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getKeyCode()I

    move-result v0

    return v0
.end method

.method public getFloatingToQwertyTransition()Z
    .locals 1

    .prologue
    .line 1421
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mFloatingToQwerty:Z

    return v0
.end method

.method public getHwrPreviousInputRange()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHwrPreviousInputRange:I

    return v0
.end method

.method public getInputMethodOnKor()I
    .locals 3

    .prologue
    .line 1342
    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v2, :cond_2

    .line 1343
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1344
    .local v0, "inputMethod":I
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    .line 1347
    .local v1, "isLandscape":Z
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 1349
    const/4 v2, 0x0

    .line 1354
    .end local v0    # "inputMethod":I
    .end local v1    # "isLandscape":Z
    :goto_0
    return v2

    .line 1352
    .restart local v0    # "inputMethod":I
    .restart local v1    # "isLandscape":Z
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    goto :goto_0

    .line 1354
    .end local v0    # "inputMethod":I
    .end local v1    # "isLandscape":Z
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    goto :goto_0
.end method

.method public getInputRange()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    return v0
.end method

.method public getNextInputRange(Z)I
    .locals 7
    .param p1, "isPressedRangeKey"    # Z

    .prologue
    const/4 v6, 0x0

    .line 302
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    .line 303
    .local v2, "range":I
    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    invoke-virtual {p0, v4, v5, v2, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v3

    .line 305
    .local v3, "validRanges":[I
    const/4 v0, -0x1

    .line 306
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 307
    aget v4, v3, v1

    if-ne v2, v4, :cond_0

    .line 308
    move v0, v1

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_1
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 312
    array-length v4, v3

    if-gtz v4, :cond_2

    .line 322
    .end local v2    # "range":I
    :goto_1
    return v2

    .line 315
    .restart local v2    # "range":I
    :cond_2
    aget v2, v3, v6

    goto :goto_1

    .line 318
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 319
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 320
    aget v2, v3, v0

    goto :goto_1

    .line 322
    :cond_4
    aget v2, v3, v6

    goto :goto_1
.end method

.method public getPrevInputMethod()I
    .locals 1

    .prologue
    .line 2030
    sget v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    return v0
.end method

.method public getPrevSoftFuncKeyCode()I
    .locals 1

    .prologue
    .line 1645
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevSoftFuncKbdKeyCode:I

    return v0
.end method

.method public getPreviousInputRange(Z)I
    .locals 6
    .param p1, "isPressedRangeKey"    # Z

    .prologue
    .line 327
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 328
    .local v2, "method":I
    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    .line 329
    .local v3, "range":I
    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    invoke-virtual {p0, v5, v2, v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    .line 331
    .local v4, "validRanges":[I
    const/4 v0, -0x1

    .line 332
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 333
    aget v5, v4, v1

    if-ne v3, v5, :cond_0

    .line 334
    move v0, v1

    .line 332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 338
    array-length v5, v4

    if-gtz v5, :cond_2

    .line 348
    .end local v3    # "range":I
    :goto_1
    return v3

    .line 341
    .restart local v3    # "range":I
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    goto :goto_1

    .line 344
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 345
    if-gez v0, :cond_4

    .line 346
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    goto :goto_1

    .line 348
    :cond_4
    aget v3, v4, v0

    goto :goto_1
.end method

.method public getSoftFuncKbdIndex()I
    .locals 1

    .prologue
    .line 1680
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    return v0
.end method

.method public getValidInputMethod()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    return v0
.end method

.method public getValidMMCodes(II)[I
    .locals 31
    .param p1, "languageId"    # I
    .param p2, "method"    # I

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v24

    .line 504
    .local v24, "ocrHelper":Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    const/16 v25, 0x0

    .line 505
    .local v25, "ocrInstalled":Landroid/content/pm/PackageInfo;
    if-eqz v24, :cond_1

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->scanPackageInfo(Landroid/content/Context;)V

    .line 507
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->getOCRPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v25

    .line 508
    if-eqz v25, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->isEnabled()Z

    move-result v28

    if-nez v28, :cond_26

    .line 509
    :cond_0
    const-string v28, "SamsungIME"

    const-string v29, "set case 1 : mIsEnableOCR = false"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    .line 517
    :cond_1
    :goto_0
    if-eqz v25, :cond_27

    sget-object v28, Lcom/diotek/ime/framework/inputmode/InputModeManager;->buildcarrier:Ljava/lang/String;

    const-string v29, "ks02"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_27

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_27

    .line 519
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    .line 524
    :goto_1
    sget-boolean v28, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v28, :cond_2

    .line 525
    const-string v28, "SamsungIME"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mIsEnableOCR = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isRegisteredOcrSIPTextReceiver()Z

    move-result v28

    if-nez v28, :cond_3

    .line 529
    const-string v28, "SamsungIME"

    const-string v29, "getValidMMCodes - registerOcrSIPTextReceiver"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->registerOcrSIPTextReceiver()V

    .line 533
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v8

    .line 534
    .local v8, "isMultiwindowPhone":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v9

    .line 535
    .local v9, "isPhoneNumberMode":Z
    const/16 v28, 0xa

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    .line 552
    .local v23, "multiModalCodes":[I
    const/16 v21, 0x0

    .line 553
    .local v21, "multiModalCodeIndexVoice":I
    const/4 v15, 0x1

    .line 554
    .local v15, "multiModalCodeIndexHandwriting":I
    const/16 v17, 0x2

    .line 555
    .local v17, "multiModalCodeIndexKeyboard":I
    const/4 v13, 0x3

    .line 556
    .local v13, "multiModalCodeIndexClipboard":I
    const/16 v19, 0x4

    .line 557
    .local v19, "multiModalCodeIndexOcr":I
    const/16 v20, 0x5

    .line 558
    .local v20, "multiModalCodeIndexSettings":I
    const/4 v14, 0x6

    .line 559
    .local v14, "multiModalCodeIndexEmoticon":I
    const/16 v18, 0x7

    .line 563
    .local v18, "multiModalCodeIndexKeyboardChange":I
    const/16 v22, 0x8

    .line 564
    .local v22, "multiModalCodeIndexWidthSwitch":I
    const/16 v16, 0x9

    .line 566
    .local v16, "multiModalCodeIndexHanja":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableHWRInput()Z

    move-result v7

    .line 567
    .local v7, "isDisableHWRInputOnPrivateOptions":Z
    const/4 v10, 0x1

    .line 569
    .local v10, "isfloatingHWREnable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 570
    .local v4, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v2, 0x0

    .line 571
    .local v2, "editorClass":I
    if-eqz v4, :cond_4

    .line 572
    iget v0, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v2, v0, 0xff0

    .line 576
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x16

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 579
    :cond_5
    const/16 v28, -0x1

    aput v28, v23, v19

    .line 583
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    const/16 v28, 0x80

    move/from16 v0, v28

    if-eq v2, v0, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseSymbolLayoutByATT:Z

    move/from16 v28, v0

    if-nez v28, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v28

    if-eqz v28, :cond_8

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isClipboardEnabled()Z

    move-result v28

    if-nez v28, :cond_a

    .line 587
    :cond_9
    const/16 v28, -0x1

    aput v28, v23, v13

    .line 591
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v28

    if-eqz v28, :cond_28

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    if-eqz v8, :cond_28

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 613
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v28

    if-nez v28, :cond_e

    .line 614
    const/16 v28, -0x1

    aput v28, v23, v17

    .line 618
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputScriptype()I

    move-result v12

    .line 619
    .local v12, "languageScriptType":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageSelected()Z

    move-result v28

    if-eqz v28, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    move/from16 v28, v0

    const/high16 v29, 0x6a610000

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v12, v0, :cond_f

    const/16 v28, 0x3

    move/from16 v0, v28

    if-eq v12, v0, :cond_f

    const/16 v28, 0xb

    move/from16 v0, v28

    if-ne v12, v0, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    move/from16 v28, v0

    if-eqz v28, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 626
    :cond_10
    const/16 v28, -0x1

    aput v28, v23, v22

    .line 630
    :cond_11
    const/16 v28, 0x7

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v28

    if-nez v28, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v28

    if-nez v28, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v28

    if-nez v28, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlEmailMode()Z

    move-result v28

    if-nez v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isNoEmoticonInput()Z

    move-result v28

    if-nez v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x1b

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableEmoticonInput()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 640
    :cond_12
    const/16 v28, -0x1

    aput v28, v23, v14

    .line 655
    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v28

    if-nez v28, :cond_14

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v28

    if-eqz v28, :cond_29

    :cond_14
    const/4 v6, 0x1

    .line 656
    .local v6, "isDigitEditor":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v28

    if-eqz v28, :cond_15

    if-eqz v6, :cond_16

    .line 657
    :cond_15
    const/16 v28, -0x1

    aput v28, v23, v16

    .line 660
    :cond_16
    const/4 v2, 0x0

    .line 661
    if-eqz v4, :cond_17

    .line 662
    iget v0, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v28, v0

    and-int/lit8 v2, v28, 0xf

    .line 666
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 667
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 669
    if-nez v10, :cond_18

    .line 670
    const/16 v28, -0x1

    aput v28, v23, v18

    .line 690
    :cond_18
    :goto_4
    if-eqz v9, :cond_19

    .line 691
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 694
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v28

    if-nez v28, :cond_1a

    .line 696
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 699
    :cond_1a
    const-string v28, "NONE"

    const-string v29, "VOHWRPANEL"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 700
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 704
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v28

    if-eqz v28, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1d

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 705
    :cond_1c
    const/16 v28, -0x1

    aput v28, v23, v21

    .line 709
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isSettingEnabled()Z

    move-result v28

    if-nez v28, :cond_1e

    .line 710
    const/16 v28, -0x1

    aput v28, v23, v20

    .line 713
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2e

    .line 714
    const/16 v28, -0x1

    aput v28, v23, v21

    .line 715
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 717
    const/16 v28, -0x1

    aput v28, v23, v13

    .line 718
    const/16 v28, -0x1

    aput v28, v23, v19

    .line 742
    :cond_1f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isEnabledMagnificationGesture(Landroid/content/Context;)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 752
    const/16 v28, -0x1

    aput v28, v23, v18

    .line 763
    :cond_20
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v28

    if-eqz v28, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v28

    if-eqz v28, :cond_21

    .line 764
    const/16 v28, -0x1

    aput v28, v23, v13

    .line 765
    const/16 v28, -0x1

    aput v28, v23, v21

    .line 768
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->useOnlyNormalKeyboard()Z

    move-result v28

    if-eqz v28, :cond_22

    .line 770
    const/16 v28, -0x1

    aput v28, v23, v18

    .line 779
    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 780
    const/16 v28, -0x1

    aput v28, v23, v21

    .line 782
    const/16 v28, -0x1

    aput v28, v23, v19

    .line 787
    :cond_23
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v28

    if-eqz v28, :cond_24

    .line 788
    const/16 v28, -0x1

    aput v28, v23, v21

    .line 789
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 790
    const/16 v28, -0x1

    aput v28, v23, v17

    .line 791
    const/16 v28, -0x1

    aput v28, v23, v13

    .line 792
    const/16 v28, -0x1

    aput v28, v23, v19

    .line 793
    const/16 v28, -0x79

    aput v28, v23, v20

    .line 794
    const/16 v28, -0x88

    aput v28, v23, v18

    .line 795
    const/16 v28, -0x1

    aput v28, v23, v22

    .line 798
    :cond_24
    const/16 v26, 0x0

    .line 799
    .local v26, "validCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v3, v0, :cond_32

    .line 800
    aget v28, v23, v3

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_25

    .line 801
    add-int/lit8 v26, v26, 0x1

    .line 799
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 512
    .end local v2    # "editorClass":I
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v6    # "isDigitEditor":Z
    .end local v7    # "isDisableHWRInputOnPrivateOptions":Z
    .end local v8    # "isMultiwindowPhone":Z
    .end local v9    # "isPhoneNumberMode":Z
    .end local v10    # "isfloatingHWREnable":Z
    .end local v12    # "languageScriptType":I
    .end local v13    # "multiModalCodeIndexClipboard":I
    .end local v14    # "multiModalCodeIndexEmoticon":I
    .end local v15    # "multiModalCodeIndexHandwriting":I
    .end local v16    # "multiModalCodeIndexHanja":I
    .end local v17    # "multiModalCodeIndexKeyboard":I
    .end local v18    # "multiModalCodeIndexKeyboardChange":I
    .end local v19    # "multiModalCodeIndexOcr":I
    .end local v20    # "multiModalCodeIndexSettings":I
    .end local v21    # "multiModalCodeIndexVoice":I
    .end local v22    # "multiModalCodeIndexWidthSwitch":I
    .end local v23    # "multiModalCodes":[I
    .end local v26    # "validCount":I
    :cond_26
    const-string v28, "SamsungIME"

    const-string v29, "set case 2 : mIsEnableOCR = true"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    goto/16 :goto_0

    .line 521
    :cond_27
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnableOCR:Z

    goto/16 :goto_1

    .line 595
    .restart local v2    # "editorClass":I
    .restart local v4    # "info":Landroid/view/inputmethod/EditorInfo;
    .restart local v7    # "isDisableHWRInputOnPrivateOptions":Z
    .restart local v8    # "isMultiwindowPhone":Z
    .restart local v9    # "isPhoneNumberMode":Z
    .restart local v10    # "isfloatingHWREnable":Z
    .restart local v13    # "multiModalCodeIndexClipboard":I
    .restart local v14    # "multiModalCodeIndexEmoticon":I
    .restart local v15    # "multiModalCodeIndexHandwriting":I
    .restart local v16    # "multiModalCodeIndexHanja":I
    .restart local v17    # "multiModalCodeIndexKeyboard":I
    .restart local v18    # "multiModalCodeIndexKeyboardChange":I
    .restart local v19    # "multiModalCodeIndexOcr":I
    .restart local v20    # "multiModalCodeIndexSettings":I
    .restart local v21    # "multiModalCodeIndexVoice":I
    .restart local v22    # "multiModalCodeIndexWidthSwitch":I
    .restart local v23    # "multiModalCodes":[I
    :cond_28
    const/16 v28, -0x1

    aput v28, v23, v18

    goto/16 :goto_2

    .line 655
    .restart local v12    # "languageScriptType":I
    :cond_29
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 678
    .restart local v6    # "isDigitEditor":Z
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputEnabled()Z

    move-result v28

    if-eqz v28, :cond_2b

    if-nez v7, :cond_2b

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v28

    if-nez v28, :cond_2b

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v28

    if-nez v28, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2c

    .line 681
    :cond_2b
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 683
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_2d

    const/16 v28, 0x8

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_2d

    const/16 v28, 0x7

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_2d

    .line 685
    const/16 v28, -0x1

    aput v28, v23, v17

    goto/16 :goto_4

    .line 686
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 687
    const/16 v28, -0x1

    aput v28, v23, v17

    goto/16 :goto_4

    .line 723
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_31

    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v2, v0, :cond_31

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    .line 726
    .local v5, "inputRange":I
    const/16 v28, -0x1

    aput v28, v23, v15

    .line 730
    if-eqz v8, :cond_2f

    const/16 v28, 0x8

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_30

    .line 732
    :cond_2f
    const/16 v28, -0x1

    aput v28, v23, v17

    .line 735
    :cond_30
    const/16 v28, -0x1

    aput v28, v23, v14

    goto/16 :goto_5

    .line 736
    .end local v5    # "inputRange":I
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1f

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 737
    const/16 v28, -0x1

    aput v28, v23, v15

    goto/16 :goto_5

    .line 804
    .restart local v3    # "i":I
    .restart local v26    # "validCount":I
    :cond_32
    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 805
    .local v27, "validMultiModalCodes":[I
    const/4 v3, 0x0

    const/4 v11, 0x0

    .local v11, "j":I
    :goto_7
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v3, v0, :cond_34

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_34

    .line 806
    aget v28, v23, v3

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_33

    .line 807
    aget v28, v23, v3

    aput v28, v27, v11

    .line 808
    add-int/lit8 v11, v11, 0x1

    .line 805
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 812
    :cond_34
    return-object v27

    .line 535
    nop

    :array_0
    .array-data 4
        -0x78
        -0x77
        -0x76
        -0x7d
        -0x80
        -0x79
        -0x87
        -0x88
        -0x86
        -0x89
    .end array-data
.end method

.method public getValidRanges(IIIZ)[I
    .locals 11
    .param p1, "languageId"    # I
    .param p2, "method"    # I
    .param p3, "range"    # I
    .param p4, "isPressedRangeKey"    # Z

    .prologue
    .line 353
    const/4 v9, 0x3

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 359
    .local v3, "inputRanges":[I
    array-length v7, v3

    .line 360
    .local v7, "validCount":I
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 361
    .local v2, "info":Landroid/view/inputmethod/EditorInfo;
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v6

    .line 362
    .local v6, "numSymKeypadType":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    const/4 v4, 0x1

    .line 363
    .local v4, "isUseNumberType":Z
    :goto_0
    const/4 v0, 0x0

    .line 364
    .local v0, "editorClass":I
    if-eqz v2, :cond_1

    .line 365
    iget v9, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v9, 0xf

    .line 368
    :cond_1
    const/4 v9, 0x3

    if-ne v0, v9, :cond_6

    .line 369
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 370
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 371
    add-int/lit8 v7, v7, -0x1

    .line 373
    :cond_2
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 374
    add-int/lit8 v7, v7, -0x1

    .line 486
    :cond_3
    :goto_1
    new-array v8, v7, [I

    .line 487
    .local v8, "validInputRanges":[I
    const/4 v5, 0x0

    .line 488
    .local v5, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v9, v3

    if-ge v1, v9, :cond_23

    .line 489
    aget v9, v3, v1

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    .line 490
    aget v9, v3, v1

    aput v9, v8, v5

    .line 491
    add-int/lit8 v5, v5, 0x1

    .line 488
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 362
    .end local v0    # "editorClass":I
    .end local v1    # "i":I
    .end local v4    # "isUseNumberType":Z
    .end local v5    # "j":I
    .end local v8    # "validInputRanges":[I
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 375
    .restart local v0    # "editorClass":I
    .restart local v4    # "isUseNumberType":Z
    :cond_6
    const/4 v9, 0x2

    if-ne v0, v9, :cond_7

    .line 376
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 377
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 378
    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    .line 379
    :cond_7
    const/4 v9, 0x4

    if-ne v0, v9, :cond_8

    .line 380
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 381
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 382
    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    .line 383
    :cond_8
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 384
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 385
    const/16 v9, 0x8

    if-ne p2, v9, :cond_9

    .line 386
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 387
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 396
    :goto_3
    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    .line 389
    :cond_9
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 390
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_3

    .line 393
    :cond_a
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 394
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_3

    .line 397
    :cond_b
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_c

    .line 398
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 399
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 400
    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    .line 402
    :cond_c
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 403
    if-eqz p4, :cond_d

    .line 404
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 405
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 407
    :cond_d
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 408
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 410
    :cond_e
    const/16 v9, 0x8

    if-ne p2, v9, :cond_15

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v9, :cond_f

    if-nez v4, :cond_15

    .line 411
    :cond_f
    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v9, :cond_3

    if-eqz p4, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3

    .line 414
    if-eqz v4, :cond_14

    if-eqz p4, :cond_14

    .line 415
    const/4 v9, 0x2

    if-ne v6, v9, :cond_11

    .line 416
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 418
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 434
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 420
    :cond_10
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    .line 422
    :cond_11
    const/4 v9, 0x1

    if-ne v6, v9, :cond_12

    .line 423
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    .line 425
    :cond_12
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 426
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    .line 428
    :cond_13
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    .line 432
    :cond_14
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    .line 436
    :cond_15
    if-eqz p2, :cond_16

    const/4 v9, 0x7

    if-eq p2, v9, :cond_16

    const/16 v9, 0x8

    if-ne p2, v9, :cond_1e

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPhoneFloting()Z

    move-result v9

    if-nez v9, :cond_1e

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1e

    .line 439
    :cond_16
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 440
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 441
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 443
    :cond_17
    if-eqz v4, :cond_1d

    if-eqz p4, :cond_1d

    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v9, :cond_18

    const/16 v9, 0x8

    if-eq p2, v9, :cond_19

    :cond_18
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 445
    :cond_19
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1a

    .line 446
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 459
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 447
    :cond_1a
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1b

    .line 448
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    .line 450
    :cond_1b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 451
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    .line 453
    :cond_1c
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    .line 457
    :cond_1d
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    .line 461
    :cond_1e
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_1f

    const/16 v9, 0x8

    if-eq p2, v9, :cond_1f

    .line 462
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 463
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 464
    :cond_1f
    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v9, :cond_22

    if-eqz p4, :cond_22

    const/4 v9, 0x1

    if-ne p2, v9, :cond_22

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_22

    .line 468
    if-eqz v4, :cond_21

    .line 469
    const/4 v9, 0x1

    if-ne v6, v9, :cond_20

    .line 470
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 477
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 472
    :cond_20
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_6

    .line 475
    :cond_21
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_6

    .line 478
    :cond_22
    const/4 v9, 0x1

    if-ne p2, v9, :cond_3

    if-eqz v4, :cond_3

    .line 479
    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    .line 480
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    .line 481
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 495
    .restart local v1    # "i":I
    .restart local v5    # "j":I
    .restart local v8    # "validInputRanges":[I
    :cond_23
    return-object v8

    .line 353
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public getValidSoftFuncKeys()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 1705
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .local v4, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    const/4 v2, 0x0

    .line 1708
    .local v2, "keyIndex":I
    new-instance v11, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyIndex":I
    .local v3, "keyIndex":I
    const/16 v12, -0xa1

    const-string v13, "123"

    invoke-direct {v11, v2, v12, v13, v14}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;-><init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    new-instance v11, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyIndex":I
    .restart local v2    # "keyIndex":I
    const/16 v12, -0xa2

    const-string v13, "SYM"

    invoke-direct {v11, v3, v12, v13, v14}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;-><init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    const/4 v11, 0x4

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    .line 1715
    .local v10, "softFuncLangList":[I
    const/4 v6, 0x0

    .line 1716
    .local v6, "langIndex":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .local v8, "languageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/Language;>;"
    iget-object v11, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v0

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v9, :cond_2

    aget-object v5, v0, v1

    .line 1718
    .local v5, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v11

    const v12, 0x656e5553

    if-eq v11, v12, :cond_0

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v11

    const/high16 v12, 0x6b6f0000

    if-ne v11, v12, :cond_1

    .line 1720
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1717
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1722
    :cond_1
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1726
    .end local v5    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move v7, v6

    .end local v6    # "langIndex":I
    .local v7, "langIndex":I
    move v3, v2

    .end local v2    # "keyIndex":I
    .restart local v3    # "keyIndex":I
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/common/Language;

    .line 1727
    .restart local v5    # "lang":Lcom/diotek/ime/framework/common/Language;
    new-instance v11, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyIndex":I
    .restart local v2    # "keyIndex":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "langIndex":I
    .restart local v6    # "langIndex":I
    aget v12, v10, v7

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getLanguageCodeForPHONEPAD()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v3, v12, v13, v5}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;-><init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    .end local v6    # "langIndex":I
    .restart local v7    # "langIndex":I
    move v3, v2

    .end local v2    # "keyIndex":I
    .restart local v3    # "keyIndex":I
    goto :goto_2

    .line 1730
    .end local v5    # "lang":Lcom/diotek/ime/framework/common/Language;
    :cond_3
    return-object v4

    .line 1711
    nop

    :array_0
    .array-data 4
        -0xa3
        -0xa4
        -0xa5
        -0xa6
    .end array-data
.end method

.method public getVisibleSoftFuncKeys()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 1735
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v5

    .line 1737
    .local v5, "validSoftFuncKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v9, :cond_0

    .line 1738
    iput-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    .line 1739
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    .line 1763
    :goto_0
    return-object v7

    .line 1742
    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    .line 1743
    .local v3, "softFuncKbdIndex":I
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 1744
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    .line 1745
    .local v0, "firstKey":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    .line 1746
    .local v2, "lastKey":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getIndex()I

    move-result v7

    if-lt v3, v7, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getIndex()I

    move-result v7

    if-gt v3, v7, :cond_1

    .line 1747
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    goto :goto_0

    .line 1751
    .end local v0    # "firstKey":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    .end local v2    # "lastKey":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .local v6, "visibleSoftFuncKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    const/4 v4, 0x0

    .line 1754
    .local v4, "startIndex":I
    if-lt v3, v9, :cond_2

    .line 1755
    add-int/lit8 v7, v3, -0x4

    add-int/lit8 v4, v7, 0x1

    .line 1758
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_3

    .line 1759
    add-int v7, v4, v1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1762
    :cond_3
    iput-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    .line 1763
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public initSoftFuncKbd()V
    .locals 8

    .prologue
    .line 1609
    const/4 v1, 0x0

    .line 1610
    .local v1, "index":I
    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    .line 1612
    .local v5, "languageId":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    .line 1614
    .local v6, "range":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1615
    const/4 v1, 0x0

    .line 1627
    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndex(I)V

    .line 1628
    return-void

    .line 1617
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v3

    .line 1618
    .local v3, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    .line 1619
    .local v2, "key":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    .line 1620
    .local v4, "lang":Lcom/diotek/ime/framework/common/Language;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    if-eq v7, v5, :cond_0

    .line 1623
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1624
    goto :goto_0
.end method

.method public isCMSymbolLastUsed()Z
    .locals 2

    .prologue
    .line 844
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 846
    :cond_0
    const/4 v0, 0x0

    .line 848
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getLastUsedMmKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isChangedInputRange()Z
    .locals 1

    .prologue
    .line 1537
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    return v0
.end method

.method public isChangedSoftFuncKbdIndex()Z
    .locals 1

    .prologue
    .line 1701
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    return v0
.end method

.method public isChineseStrokeModeOn()Z
    .locals 1

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChineseStrokeModeOn:Z

    return v0
.end method

.method public isClipboardEnabled()Z
    .locals 5

    .prologue
    .line 909
    const/4 v2, 0x1

    .line 910
    .local v2, "isClipboardEnabled":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 911
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 912
    .local v0, "editorClass":I
    if-eqz v1, :cond_0

    .line 913
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 916
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_2

    const/16 v3, 0xa0

    if-eq v0, v3, :cond_1

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd0

    if-ne v0, v3, :cond_3

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    sget-object v4, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->SBROWSER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v4, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    sget-object v4, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->BROWSER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v4, :cond_3

    .line 923
    :cond_2
    const/4 v2, 0x0

    .line 925
    :cond_3
    return v2
.end method

.method public isEnableQuickSymPopupOnChineseKeypadForTablet()Z
    .locals 1

    .prologue
    .line 2046
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    const/4 v0, 0x1

    .line 2049
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnterForWebNavigation()Z
    .locals 1

    .prologue
    .line 1797
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnterForWebNavigation:Z

    return v0
.end method

.method public isFloatingHWRKeyboard()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 1442
    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return v2

    .line 1446
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1447
    .local v0, "inputMethod":I
    if-ne v0, v4, :cond_0

    .line 1451
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v1

    .line 1453
    .local v1, "setHWRMode":Z
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandritingNotSupportedInputType()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1455
    if-ne v0, v4, :cond_0

    if-eqz v1, :cond_0

    .line 1456
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isFloatingNumberInputKeyboardForMultiWindow()Z
    .locals 2

    .prologue
    .line 1396
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1397
    .local v0, "inputMethod":I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isNumberInputKeyboard()Z

    move-result v1

    .line 1401
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloatingPhonepadKeyboard()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1387
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1388
    .local v0, "inputMethod":I
    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1392
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloatingPhonepadKeyboardForMultiWindow()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1376
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1377
    .local v0, "inputMethod":I
    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 1378
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 1383
    :cond_1
    return v1
.end method

.method public isHandritingNotSupportedInputType()Z
    .locals 1

    .prologue
    .line 1513
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    return v0
.end method

.method public isHandwritingInputMode()Z
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v0

    return v0
.end method

.method public isHandwritingInputMode(I)Z
    .locals 3
    .param p1, "method"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1202
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v1

    .line 1212
    :cond_1
    :goto_0
    return v0

    .line 1205
    :cond_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1212
    goto :goto_0
.end method

.method public isHandwritingInputModeForVO()Z
    .locals 2

    .prologue
    .line 2038
    sget v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2039
    const/4 v0, 0x1

    .line 2041
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHanjaEnable()Z
    .locals 5

    .prologue
    .line 929
    const/4 v1, 0x0

    .line 930
    .local v1, "isHanjaEnable":Z
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e4742

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 931
    .local v0, "inputLanguage":I
    const/high16 v2, 0x6b6f0000

    if-ne v0, v2, :cond_0

    .line 934
    :cond_0
    return v1
.end method

.method public isKorNote3x4Keypad()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1247
    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v3, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return v1

    .line 1250
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1252
    .local v0, "inputMode":I
    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_2

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-eq v3, v2, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 1260
    goto :goto_0
.end method

.method public isKorPasswordMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1301
    iget-boolean v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v6, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return v4

    .line 1304
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    .line 1305
    .local v2, "isPasswordMode":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    invoke-interface {v6, v7, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    .line 1307
    .local v3, "isSeperatlyKor":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1308
    .local v0, "inputMode":I
    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    .line 1310
    .local v1, "isLandscape":Z
    iget-boolean v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v7, 0x6b6f0000

    if-ne v6, v7, :cond_0

    if-nez v0, :cond_0

    .line 1316
    if-eqz v3, :cond_3

    .line 1317
    if-eqz v2, :cond_0

    .line 1318
    if-eqz v1, :cond_2

    move v4, v5

    .line 1319
    goto :goto_0

    .line 1320
    :cond_2
    iget v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-nez v6, :cond_0

    move v4, v5

    .line 1321
    goto :goto_0

    .line 1325
    :cond_3
    if-eqz v2, :cond_0

    move v4, v5

    .line 1326
    goto :goto_0
.end method

.method public isKorPhoneCji()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1266
    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v3, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return v1

    .line 1269
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1271
    .local v0, "inputMode":I
    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :cond_2
    move v1, v2

    .line 1276
    goto :goto_0
.end method

.method public isKorPhoneFloting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1282
    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v3, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return v1

    .line 1285
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 1287
    .local v0, "inputMode":I
    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_2
    move v1, v2

    .line 1294
    goto :goto_0
.end method

.method public isKorSeperatlyInputMethod()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1333
    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v2, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return v1

    .line 1336
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 1338
    .local v0, "isSeperatlyKor":Z
    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v3, 0x6b6f0000

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isKorTabletCji()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1228
    iget-boolean v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v4, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return v2

    .line 1231
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 1232
    .local v1, "inputMode":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v0

    .line 1234
    .local v0, "inputMethodKor":I
    iget-boolean v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq v1, v3, :cond_2

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    :cond_2
    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    :cond_3
    move v2, v3

    .line 1241
    goto :goto_0
.end method

.method public isKorTabletPhoneFlotingCJ()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1216
    iget-boolean v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v1, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return v0

    .line 1220
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v2, 0x6a610000

    if-ne v1, v2, :cond_0

    .line 1222
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKoreaSoftFuncKey()Z
    .locals 3

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v0

    .line 1776
    .local v0, "info":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_0

    .line 1777
    const/4 v1, 0x1

    .line 1779
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLatinSoftFuncKey()Z
    .locals 3

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v0

    .line 1768
    .local v0, "info":Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    const/high16 v2, 0x6b6f0000

    if-eq v1, v2, :cond_0

    .line 1769
    const/4 v1, 0x1

    .line 1771
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedUpdateKeyboardView()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mNeedUpdateKeyboardView:Z

    return v0
.end method

.method protected isNumberInputKeyboard()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1405
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    .line 1406
    .local v0, "isPhoneNumberInput":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPhonePadMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2054
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 2055
    .local v0, "inputMode":I
    if-ne v0, v1, :cond_0

    .line 2058
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPointingKeyboard()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1361
    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 1362
    .local v0, "isPointing":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 1364
    .local v1, "isTrace":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1365
    const/4 v2, 0x1

    .line 1367
    :cond_0
    return v2
.end method

.method public isPopupInputMethod(I)Z
    .locals 1
    .param p1, "inputMethod"    # I

    .prologue
    .line 1372
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickCangieMode()Z
    .locals 1

    .prologue
    .line 1597
    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsQuickCangieMode:Z

    return v0
.end method

.method public isVOHWRmodeEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1431
    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v0

    .line 1433
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandritingNotSupportedInputType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1435
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVietnameseTelexEnable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 816
    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVietnameseTelex:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-ne v6, v5, :cond_1

    .line 839
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 819
    .local v2, "inputMethod":I
    if-eq v2, v5, :cond_0

    const/16 v6, 0x8

    if-ne v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-nez v6, :cond_0

    .line 823
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    .line 824
    .local v3, "packageName":Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;
    sget-object v6, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->KEYGUARD_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->SIM_TOOL:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v6, :cond_0

    .line 827
    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 828
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 829
    .local v0, "editorClass":I
    if-eqz v1, :cond_3

    .line 830
    iget v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v6, 0xff0

    .line 832
    :cond_3
    sparse-switch v0, :sswitch_data_0

    move v4, v5

    .line 839
    goto :goto_0

    .line 832
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
        0xd0 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public isVoiceInputEnabled()Z
    .locals 15

    .prologue
    .line 861
    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v12, :cond_8

    .line 862
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v7

    .line 863
    .local v7, "isPasswordInput":Z
    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    .line 864
    .local v9, "isUseVoiceInput":Z
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 865
    .local v3, "inputRange":I
    const/4 v12, 0x1

    if-ne v3, v12, :cond_4

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, -0x66

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v6, 0x1

    .line 866
    .local v6, "isNumericOnly":Z
    :goto_0
    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableVoice()Z

    move-result v10

    .line 867
    .local v10, "isVoiceDisabled":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    .line 868
    .local v8, "isPhoneNumberMode":Z
    const/4 v5, 0x0

    .line 869
    .local v5, "isMarketPackageAndSearchEditor":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v11

    .line 870
    .local v11, "method":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v12}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    .line 872
    .local v4, "isDisableEmailMode":Z
    :goto_1
    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 873
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    const/4 v2, 0x0

    .line 874
    .local v2, "hasThisAppVoiceFuntion":Z
    if-eqz v1, :cond_2

    .line 875
    iget v12, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v13, 0x400000ff

    and-int v0, v12, v13

    .line 877
    .local v0, "editorAction":I
    iget-object v12, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 878
    const-string v12, "com.android.vending"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.android.apps.maps"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.android.youtube"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "flipboard.app"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.android.googlequicksearchbox"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_0
    const/4 v12, 0x3

    if-ne v0, v12, :cond_6

    const/4 v5, 0x1

    .line 886
    :cond_1
    :goto_2
    const-string v12, "com.sec.android.app.translator"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 887
    const/4 v2, 0x1

    .line 891
    .end local v0    # "editorAction":I
    :cond_2
    if-eqz v9, :cond_7

    if-nez v2, :cond_7

    iget-boolean v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsVoiceInstalled:Z

    if-eqz v12, :cond_7

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    if-nez v10, :cond_7

    if-nez v8, :cond_7

    if-nez v4, :cond_7

    const/4 v12, 0x1

    .line 896
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "hasThisAppVoiceFuntion":Z
    .end local v3    # "inputRange":I
    .end local v4    # "isDisableEmailMode":Z
    .end local v5    # "isMarketPackageAndSearchEditor":Z
    .end local v6    # "isNumericOnly":Z
    .end local v7    # "isPasswordInput":Z
    .end local v8    # "isPhoneNumberMode":Z
    .end local v9    # "isUseVoiceInput":Z
    .end local v10    # "isVoiceDisabled":Z
    .end local v11    # "method":I
    :goto_3
    return v12

    .line 865
    .restart local v3    # "inputRange":I
    .restart local v7    # "isPasswordInput":Z
    .restart local v9    # "isUseVoiceInput":Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 870
    .restart local v5    # "isMarketPackageAndSearchEditor":Z
    .restart local v6    # "isNumericOnly":Z
    .restart local v8    # "isPhoneNumberMode":Z
    .restart local v10    # "isVoiceDisabled":Z
    .restart local v11    # "method":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 878
    .restart local v0    # "editorAction":I
    .restart local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v2    # "hasThisAppVoiceFuntion":Z
    .restart local v4    # "isDisableEmailMode":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 891
    .end local v0    # "editorAction":I
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 896
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "hasThisAppVoiceFuntion":Z
    .end local v3    # "inputRange":I
    .end local v4    # "isDisableEmailMode":Z
    .end local v5    # "isMarketPackageAndSearchEditor":Z
    .end local v6    # "isNumericOnly":Z
    .end local v7    # "isPasswordInput":Z
    .end local v8    # "isPhoneNumberMode":Z
    .end local v9    # "isUseVoiceInput":Z
    .end local v10    # "isVoiceDisabled":Z
    .end local v11    # "method":I
    :cond_8
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public setChineseStrokeModeOn(Z)V
    .locals 0
    .param p1, "isStrokeModeOn"    # Z

    .prologue
    .line 1601
    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChineseStrokeModeOn:Z

    .line 1602
    return-void
.end method

.method public setEnterForWebNavigation(Z)V
    .locals 0
    .param p1, "isNavigation"    # Z

    .prologue
    .line 1793
    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnterForWebNavigation:Z

    .line 1794
    return-void
.end method

.method public setFloatingToQwertyTransition(Z)V
    .locals 0
    .param p1, "floatingToQwerty"    # Z

    .prologue
    .line 1425
    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mFloatingToQwerty:Z

    .line 1426
    return-void
.end method

.method public setHandritingNotSupportedInputType()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1517
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    .line 1534
    :goto_0
    return-void

    .line 1519
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1520
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    .line 1521
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1522
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    .line 1523
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1524
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    .line 1525
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1526
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    .line 1527
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1528
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    .line 1529
    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 1530
    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    .line 1532
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0
.end method

.method public setHwrPreviousInputRange(I)V
    .locals 0
    .param p1, "range"    # I

    .prologue
    .line 294
    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHwrPreviousInputRange:I

    .line 295
    return-void
.end method

.method public setInputLanguage(I)V
    .locals 0
    .param p1, "inputLanguage"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    .line 110
    return-void
.end method

.method public setInputMethod(I)V
    .locals 17
    .param p1, "inputMethod"    # I

    .prologue
    .line 117
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 118
    .local v2, "currentInputMethod":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    .line 120
    .local v10, "languageId":I
    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 121
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    .line 122
    .local v12, "range":I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v10, v1, v12, v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v14

    .line 123
    .local v14, "valideRanges":[I
    const/4 v9, 0x0

    .line 125
    .local v9, "isValideRange":Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    .line 127
    .local v8, "isLandscape":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v13

    .line 129
    .local v13, "symbolKeyboardType":I
    if-nez v8, :cond_1

    .line 130
    const/4 v15, 0x3

    if-eq v12, v15, :cond_1

    if-eqz v12, :cond_1

    const/4 v15, 0x2

    if-eq v12, v15, :cond_1

    const/4 v15, 0x1

    if-eq v13, v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v15

    if-eqz v15, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    .line 136
    .local v6, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v4, 0x0

    .line 137
    .local v4, "editorClass":I
    if-eqz v6, :cond_1

    .line 138
    iget v15, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v4, v15, 0xf

    .line 139
    const/4 v15, 0x3

    if-eq v4, v15, :cond_1

    .line 140
    const/4 v12, 0x1

    .line 147
    .end local v4    # "editorClass":I
    .end local v6    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v8    # "isLandscape":Z
    .end local v13    # "symbolKeyboardType":I
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v15, v14

    if-ge v5, v15, :cond_2

    .line 148
    aget v15, v14, v5

    if-ne v12, v15, :cond_9

    .line 149
    const/4 v9, 0x1

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_3

    if-nez v9, :cond_3

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    .line 156
    .restart local v8    # "isLandscape":Z
    if-eqz v8, :cond_3

    .line 157
    const/4 v15, 0x1

    if-ne v12, v15, :cond_3

    .line 158
    const/4 v12, 0x2

    .line 159
    const/4 v5, 0x0

    :goto_1
    array-length v15, v14

    if-ge v5, v15, :cond_3

    .line 160
    aget v15, v14, v5

    if-ne v12, v15, :cond_a

    .line 161
    const/4 v9, 0x1

    .line 169
    .end local v8    # "isLandscape":Z
    :cond_3
    if-nez v9, :cond_b

    const/4 v15, 0x3

    if-eq v12, v15, :cond_b

    .line 170
    const/4 v15, 0x0

    aget v15, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    .line 174
    :cond_4
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    .line 176
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_KeepDefInputMethodAs"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "inputMethodString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 180
    .local v11, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 181
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v15, "pref_last_input_method_type"

    move/from16 v0, p1

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    if-eqz v12, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v15, 0x2

    if-ne v12, v15, :cond_7

    .line 184
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 185
    const-string v15, "QWERTY"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz p1, :cond_6

    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    .line 188
    :cond_6
    const-string v15, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    :cond_7
    :goto_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "i":I
    .end local v7    # "inputMethodString":Ljava/lang/String;
    .end local v9    # "isValideRange":Z
    .end local v11    # "preference":Landroid/content/SharedPreferences;
    .end local v12    # "range":I
    .end local v14    # "valideRanges":[I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    .line 203
    return-void

    .line 147
    .restart local v5    # "i":I
    .restart local v9    # "isValideRange":Z
    .restart local v12    # "range":I
    .restart local v14    # "valideRanges":[I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 159
    .restart local v8    # "isLandscape":Z
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 171
    .end local v8    # "isLandscape":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_4

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    goto :goto_2

    .line 191
    .restart local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "inputMethodString":Ljava/lang/String;
    .restart local v11    # "preference":Landroid/content/SharedPreferences;
    :cond_c
    const-string v15, "QWERTY"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz p1, :cond_d

    const/4 v15, 0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_d

    const/4 v15, 0x7

    move/from16 v0, p1

    if-eq v0, v15, :cond_d

    const/16 v15, 0x8

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    .line 196
    :cond_d
    const-string v15, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method public setInputMethodKor(I)V
    .locals 0
    .param p1, "inputMethodKor"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    .line 114
    return-void
.end method

.method public setInputMethodOfEachLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 4
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    .line 1801
    const/16 v0, 0xf

    .line 1802
    .local v0, "value":I
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1826
    :goto_0
    return-void

    .line 1804
    :sswitch_0
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    .line 1805
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v2, v3, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    .line 1808
    :sswitch_1
    const-string v1, "telex"

    .line 1809
    .local v1, "vietnameseInputMethodType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    .line 1810
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1811
    const-string v1, "vni"

    .line 1813
    :cond_0
    invoke-static {v1}, Lcom/diotek/ime/framework/input/Telex/Telex;->setInputMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1816
    .end local v1    # "vietnameseInputMethodType":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    .line 1817
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    invoke-interface {v2, v3, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    .line 1820
    :sswitch_3
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    .line 1821
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    invoke-interface {v2, v3, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    .line 1802
    nop

    :sswitch_data_0
    .sparse-switch
        0x62670000 -> :sswitch_3
        0x64650000 -> :sswitch_2
        0x74720000 -> :sswitch_0
        0x76690000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setInputRange(I)V
    .locals 1
    .param p1, "inputRange"    # I

    .prologue
    .line 278
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-eq v0, p1, :cond_0

    .line 279
    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    .line 280
    invoke-static {p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputRange(I)V

    .line 282
    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mStartedInputRange:I

    if-eq v0, p1, :cond_1

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    goto :goto_0
.end method

.method public abstract setIsVoiceInstalled(Z)V
.end method

.method public setNeedUpdateKeyboardView(Z)V
    .locals 0
    .param p1, "setNeedUpdateKeyboardView"    # Z

    .prologue
    .line 1462
    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mNeedUpdateKeyboardView:Z

    .line 1463
    return-void
.end method

.method public setPrevInputMethod(I)V
    .locals 0
    .param p1, "prevInputMethod"    # I

    .prologue
    .line 2034
    sput p1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    .line 2035
    return-void
.end method

.method public setPrevSoftFuncKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 1649
    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevSoftFuncKbdKeyCode:I

    .line 1650
    return-void
.end method

.method public setQickCangjieMode(Z)V
    .locals 0
    .param p1, "isQickCangjieMode"    # Z

    .prologue
    .line 1593
    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsQuickCangieMode:Z

    .line 1594
    return-void
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 10
    .param p1, "currentLanguageID"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1470
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mLanguageListForSecondarySymbol:Ljava/lang/String;

    const-string v6, ";"

    invoke-direct {v0, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    .local v0, "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    const-string v2, ""

    .line 1472
    .local v2, "language":Ljava/lang/String;
    const-string v3, ""

    .line 1474
    .local v3, "locale":Ljava/lang/String;
    const-string v5, ""

    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mLanguageListForSecondarySymbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-ne p1, v8, :cond_3

    .line 1476
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    .line 1506
    :cond_1
    :goto_0
    return-void

    .line 1502
    .local v1, "index":I
    .local v4, "token":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    .line 1480
    .end local v1    # "index":I
    .end local v4    # "token":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1481
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1482
    .restart local v4    # "token":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1483
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1485
    .restart local v1    # "index":I
    if-eq v1, v8, :cond_6

    .line 1486
    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1487
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1488
    if-eqz v2, :cond_4

    .line 1489
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1491
    :cond_4
    if-eqz v3, :cond_5

    .line 1492
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1498
    :cond_5
    :goto_1
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 1499
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    goto :goto_0

    .line 1495
    :cond_6
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1496
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setSoftFuncKbdIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1654
    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1655
    const/4 p1, 0x0

    .line 1658
    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    if-eq v0, p1, :cond_1

    .line 1659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    .line 1663
    :goto_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRangeForSoftFuncKbd(I)V

    .line 1664
    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    .line 1665
    return-void

    .line 1661
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    goto :goto_0
.end method

.method public setSoftFuncKbdIndexByKeycode(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1684
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getSoftFuncKbdIndexByKeycode(I)I

    move-result v0

    .line 1685
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndex(I)V

    .line 1686
    return-void
.end method

.method public setStartedInputRangeOnCurrent()V
    .locals 1

    .prologue
    .line 1541
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    iput v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mStartedInputRange:I

    .line 1542
    return-void
.end method

.method public updateValidInputMethod()V
    .locals 3

    .prologue
    .line 1413
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    .line 1414
    .local v0, "prevInputMethod":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->computeValidInputMethod()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    .line 1415
    iget v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-eq v0, v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->sendInputMethodType(I)V

    .line 1418
    :cond_0
    return-void
.end method
